; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2ca_disconnect_req.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2ca_disconnect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i64, i64 (i8*, %struct.l2cap_pcb*)*, i32, i32, i32 }
%struct.pbuf = type { i64 }

@L2CAP_OPEN = common dso_local global i64 0, align 8
@L2CAP_CONFIG = common dso_local global i64 0, align 8
@PBUF_RAW = common dso_local global i32 0, align 4
@L2CAP_DISCONN_REQ_SIZE = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"l2cap_disconnect_req: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i64 0, align 8
@L2CAP_DISCONN_REQ = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@W4_L2CAP_DISCONNECT_RSP = common dso_local global i64 0, align 8
@ERR_CONN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @l2ca_disconnect_req(%struct.l2cap_pcb* %0, i64 (i8*, %struct.l2cap_pcb*)* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.l2cap_pcb*, align 8
  %5 = alloca i64 (i8*, %struct.l2cap_pcb*)*, align 8
  %6 = alloca %struct.pbuf*, align 8
  %7 = alloca i64, align 8
  store %struct.l2cap_pcb* %0, %struct.l2cap_pcb** %4, align 8
  store i64 (i8*, %struct.l2cap_pcb*)* %1, i64 (i8*, %struct.l2cap_pcb*)** %5, align 8
  %8 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %9 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @L2CAP_OPEN, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %15 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @L2CAP_CONFIG, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %64

19:                                               ; preds = %13, %2
  %20 = load i32, i32* @PBUF_RAW, align 4
  %21 = load i32, i32* @L2CAP_DISCONN_REQ_SIZE, align 4
  %22 = load i32, i32* @PBUF_RAM, align 4
  %23 = call %struct.pbuf* @btpbuf_alloc(i32 %20, i32 %21, i32 %22)
  store %struct.pbuf* %23, %struct.pbuf** %6, align 8
  %24 = icmp eq %struct.pbuf* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = call i32 @ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* @ERR_MEM, align 8
  store i64 %27, i64* %3, align 8
  br label %68

28:                                               ; preds = %19
  %29 = load i64 (i8*, %struct.l2cap_pcb*)*, i64 (i8*, %struct.l2cap_pcb*)** %5, align 8
  %30 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %31 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %30, i32 0, i32 1
  store i64 (i8*, %struct.l2cap_pcb*)* %29, i64 (i8*, %struct.l2cap_pcb*)** %31, align 8
  %32 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %33 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @htole16(i32 %34)
  %36 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  store i32 %35, i32* %40, align 4
  %41 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %42 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @htole16(i32 %43)
  %45 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i32*
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 %44, i32* %49, align 4
  %50 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %51 = load i32, i32* @L2CAP_DISCONN_REQ, align 4
  %52 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %53 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %52, i32 0, i32 2
  %54 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %55 = call i64 @l2cap_signal(%struct.l2cap_pcb* %50, i32 %51, i32 0, i32* %53, %struct.pbuf* %54)
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @ERR_OK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %28
  %60 = load i64, i64* @W4_L2CAP_DISCONNECT_RSP, align 8
  %61 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %4, align 8
  %62 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %59, %28
  br label %66

64:                                               ; preds = %13
  %65 = load i64, i64* @ERR_CONN, align 8
  store i64 %65, i64* %3, align 8
  br label %68

66:                                               ; preds = %63
  %67 = load i64, i64* %7, align 8
  store i64 %67, i64* %3, align 8
  br label %68

68:                                               ; preds = %66, %64, %25
  %69 = load i64, i64* %3, align 8
  ret i64 %69
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i64 @l2cap_signal(%struct.l2cap_pcb*, i32, i32, i32*, %struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
