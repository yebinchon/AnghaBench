; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_handle_read_notification.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_handle_read_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_pcb = type { i32, i32* }

@FLOW_DIVERT_TLV_READ_COUNT = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to get the read count: %d\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"received a read notification for %u bytes\00", align 1
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flow_divert_pcb*, i32, i32)* @flow_divert_handle_read_notification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flow_divert_handle_read_notification(%struct.flow_divert_pcb* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.flow_divert_pcb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @FLOW_DIVERT_TLV_READ_COUNT, align 4
  %12 = call i32 @flow_divert_packet_get_tlv(i32 %9, i32 %10, i32 %11, i32 4, i32* %7, i32* null)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32, i32* @LOG_ERR, align 4
  %17 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @FDLOG(i32 %16, %struct.flow_divert_pcb* %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %53

20:                                               ; preds = %3
  %21 = load i32, i32* @LOG_DEBUG, align 4
  %22 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ntohl(i32 %23)
  %25 = call i32 @FDLOG(i32 %21, %struct.flow_divert_pcb* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %27 = call i32 @FDLOCK(%struct.flow_divert_pcb* %26)
  %28 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %29 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %20
  %33 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %34 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @socket_lock(i32* %35, i32 0)
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ntohl(i32 %37)
  %39 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %40 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %44 = load i32, i32* @FALSE, align 4
  %45 = call i32 @flow_divert_send_buffered_data(%struct.flow_divert_pcb* %43, i32 %44)
  %46 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %47 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @socket_unlock(i32* %48, i32 0)
  br label %50

50:                                               ; preds = %32, %20
  %51 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %52 = call i32 @FDUNLOCK(%struct.flow_divert_pcb* %51)
  br label %53

53:                                               ; preds = %50, %15
  ret void
}

declare dso_local i32 @flow_divert_packet_get_tlv(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @FDLOG(i32, %struct.flow_divert_pcb*, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @FDLOCK(%struct.flow_divert_pcb*) #1

declare dso_local i32 @socket_lock(i32*, i32) #1

declare dso_local i32 @flow_divert_send_buffered_data(%struct.flow_divert_pcb*, i32) #1

declare dso_local i32 @socket_unlock(i32*, i32) #1

declare dso_local i32 @FDUNLOCK(%struct.flow_divert_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
