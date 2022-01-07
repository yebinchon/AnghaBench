; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2ca_connect_req.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_l2cap.c_l2ca_connect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_pcb = type { i32, i32, i32, %struct.TYPE_2__, i32 (i8*, %struct.l2cap_pcb*, i32, i32)*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bd_addr = type { i32 }
%struct.pbuf = type { i64 }

@ERR_VAL = common dso_local global i32 0, align 4
@L2CAP_CFG_IR = common dso_local global i32 0, align 4
@PBUF_RAW = common dso_local global i32 0, align 4
@L2CAP_CONN_REQ_SIZE = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"l2cap_connect_req: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@L2CAP_CONN_REQ = common dso_local global i32 0, align 4
@W4_L2CAP_CONNECT_RSP = common dso_local global i32 0, align 4
@l2cap_active_pcbs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2ca_connect_req(%struct.l2cap_pcb* %0, %struct.bd_addr* %1, i32 %2, i32 %3, i32 (i8*, %struct.l2cap_pcb*, i32, i32)* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.l2cap_pcb*, align 8
  %8 = alloca %struct.bd_addr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (i8*, %struct.l2cap_pcb*, i32, i32)*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.pbuf*, align 8
  store %struct.l2cap_pcb* %0, %struct.l2cap_pcb** %7, align 8
  store %struct.bd_addr* %1, %struct.bd_addr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 (i8*, %struct.l2cap_pcb*, i32, i32)* %4, i32 (i8*, %struct.l2cap_pcb*, i32, i32)** %11, align 8
  %14 = load %struct.bd_addr*, %struct.bd_addr** %8, align 8
  %15 = icmp ne %struct.bd_addr* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %18 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %17, i32 0, i32 1
  %19 = load %struct.bd_addr*, %struct.bd_addr** %8, align 8
  %20 = call i32 @bd_addr_set(i32* %18, %struct.bd_addr* %19)
  br label %23

21:                                               ; preds = %5
  %22 = load i32, i32* @ERR_VAL, align 4
  store i32 %22, i32* %6, align 4
  br label %85

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %26 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %25, i32 0, i32 5
  store i32 %24, i32* %26, align 8
  %27 = load i32 (i8*, %struct.l2cap_pcb*, i32, i32)*, i32 (i8*, %struct.l2cap_pcb*, i32, i32)** %11, align 8
  %28 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %29 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %28, i32 0, i32 4
  store i32 (i8*, %struct.l2cap_pcb*, i32, i32)* %27, i32 (i8*, %struct.l2cap_pcb*, i32, i32)** %29, align 8
  %30 = call i32 (...) @l2cap_cid_alloc()
  %31 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %32 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @L2CAP_CFG_IR, align 4
  %34 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %35 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  %39 = load %struct.bd_addr*, %struct.bd_addr** %8, align 8
  %40 = call i32 @lp_is_connected(%struct.bd_addr* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %23
  %43 = load %struct.bd_addr*, %struct.bd_addr** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @lp_connect_req(%struct.bd_addr* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  br label %81

46:                                               ; preds = %23
  %47 = load i32, i32* @PBUF_RAW, align 4
  %48 = load i32, i32* @L2CAP_CONN_REQ_SIZE, align 4
  %49 = load i32, i32* @PBUF_RAM, align 4
  %50 = call %struct.pbuf* @btpbuf_alloc(i32 %47, i32 %48, i32 %49)
  store %struct.pbuf* %50, %struct.pbuf** %13, align 8
  %51 = icmp eq %struct.pbuf* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = call i32 @ERROR(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ERR_MEM, align 4
  store i32 %54, i32* %6, align 4
  br label %85

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @htole16(i32 %56)
  %58 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to i32*
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %57, i32* %62, align 4
  %63 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %64 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @htole16(i32 %65)
  %67 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %68 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 %66, i32* %71, align 4
  %72 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %73 = load i32, i32* @L2CAP_CONN_REQ, align 4
  %74 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %75 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %74, i32 0, i32 1
  %76 = load %struct.pbuf*, %struct.pbuf** %13, align 8
  %77 = call i32 @l2cap_signal(%struct.l2cap_pcb* %72, i32 %73, i32 0, i32* %75, %struct.pbuf* %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* @W4_L2CAP_CONNECT_RSP, align 4
  %79 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %80 = getelementptr inbounds %struct.l2cap_pcb, %struct.l2cap_pcb* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %55, %42
  %82 = load %struct.l2cap_pcb*, %struct.l2cap_pcb** %7, align 8
  %83 = call i32 @L2CAP_REG(i32* @l2cap_active_pcbs, %struct.l2cap_pcb* %82)
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %52, %21
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @bd_addr_set(i32*, %struct.bd_addr*) #1

declare dso_local i32 @l2cap_cid_alloc(...) #1

declare dso_local i32 @lp_is_connected(%struct.bd_addr*) #1

declare dso_local i32 @lp_connect_req(%struct.bd_addr*, i32) #1

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @l2cap_signal(%struct.l2cap_pcb*, i32, i32, i32*, %struct.pbuf*) #1

declare dso_local i32 @L2CAP_REG(i32*, %struct.l2cap_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
