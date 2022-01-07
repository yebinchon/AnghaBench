; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_pin_code_request_reply.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_pin_code_request_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd_addr = type { i32* }
%struct.pbuf = type { i32, i64 }

@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_PIN_CODE_REQ_REP_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"hci_pin_code_request_reply: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_PIN_CODE_REQ_REP = common dso_local global i32 0, align 4
@HCI_LINK_CTRL_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_pin_code_request_reply(%struct.bd_addr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bd_addr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pbuf*, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %9 = load i32, i32* @PBUF_RAW, align 4
  %10 = load i32, i32* @HCI_PIN_CODE_REQ_REP_PLEN, align 4
  %11 = load i32, i32* @PBUF_RAM, align 4
  %12 = call %struct.pbuf* @btpbuf_alloc(i32 %9, i32 %10, i32 %11)
  store %struct.pbuf* %12, %struct.pbuf** %8, align 8
  %13 = icmp eq %struct.pbuf* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = call i32 @ERROR(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ERR_MEM, align 4
  store i32 %16, i32* %4, align 4
  br label %60

17:                                               ; preds = %3
  %18 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  %22 = load i32, i32* @HCI_PIN_CODE_REQ_REP_PLEN, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %25 = load i32, i32* @HCI_PIN_CODE_REQ_REP, align 4
  %26 = load i32, i32* @HCI_LINK_CTRL_OGF, align 4
  %27 = load i32, i32* @HCI_PIN_CODE_REQ_REP_PLEN, align 4
  %28 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %24, i32 %25, i32 %26, i32 %27)
  store %struct.pbuf* %28, %struct.pbuf** %8, align 8
  %29 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  %34 = load %struct.bd_addr*, %struct.bd_addr** %5, align 8
  %35 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @memcpy(i32* %33, i32* %36, i32 6)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %40 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 10
  store i32 %38, i32* %43, align 4
  %44 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = getelementptr inbounds i32, i32* %47, i64 11
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @memcpy(i32* %48, i32* %49, i32 %50)
  %52 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %53 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %54 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @physbusif_output(%struct.pbuf* %52, i32 %55)
  %57 = load %struct.pbuf*, %struct.pbuf** %8, align 8
  %58 = call i32 @btpbuf_free(%struct.pbuf* %57)
  %59 = load i32, i32* @ERR_OK, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %17, %14
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.pbuf* @hci_cmd_ass(%struct.pbuf*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
