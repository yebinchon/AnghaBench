; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_preconnect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_preconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.flow_divert_pcb* }
%struct.flow_divert_pcb = type { i32, i32* }

@FLOW_DIVERT_CONNECT_STARTED = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Pre-connect read: sending saved connect packet\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @flow_divert_preconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_preconnect(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.flow_divert_pcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = getelementptr inbounds %struct.socket, %struct.socket* %6, i32 0, i32 0
  %8 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  store %struct.flow_divert_pcb* %8, %struct.flow_divert_pcb** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %10 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FLOW_DIVERT_CONNECT_STARTED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %1
  %16 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %17 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %44

20:                                               ; preds = %15
  %21 = load i32, i32* @LOG_INFO, align 4
  %22 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %23 = call i32 @FDLOG0(i32 %21, %struct.flow_divert_pcb* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %25 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %5, align 8
  %27 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %28 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  %29 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @TRUE, align 4
  %32 = call i32 @flow_divert_send_packet(%struct.flow_divert_pcb* %29, i32* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %20
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @mbuf_freem(i32* %36)
  br label %38

38:                                               ; preds = %35, %20
  %39 = load i32, i32* @FLOW_DIVERT_CONNECT_STARTED, align 4
  %40 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %3, align 8
  %41 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %38, %15, %1
  %45 = load %struct.socket*, %struct.socket** %2, align 8
  %46 = call i32 @soclearfastopen(%struct.socket* %45)
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @FDLOG0(i32, %struct.flow_divert_pcb*, i8*) #1

declare dso_local i32 @flow_divert_send_packet(%struct.flow_divert_pcb*, i32*, i32) #1

declare dso_local i32 @mbuf_freem(i32*) #1

declare dso_local i32 @soclearfastopen(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
