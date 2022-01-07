; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_reject_connection_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_reject_connection_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bd_addr = type { i32 }
%struct.pbuf = type { i32, i64 }

@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_REJECT_CONN_REQ_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"hci_reject_connection_request: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_REJECT_CONN_REQ_OCF = common dso_local global i32 0, align 4
@HCI_LINK_CTRL_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_reject_connection_request(%struct.bd_addr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bd_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pbuf*, align 8
  store %struct.bd_addr* %0, %struct.bd_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @PBUF_RAW, align 4
  %8 = load i32, i32* @HCI_REJECT_CONN_REQ_PLEN, align 4
  %9 = load i32, i32* @PBUF_RAM, align 4
  %10 = call %struct.pbuf* @btpbuf_alloc(i32 %7, i32 %8, i32 %9)
  store %struct.pbuf* %10, %struct.pbuf** %6, align 8
  %11 = icmp eq %struct.pbuf* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @ERROR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ERR_MEM, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %2
  %16 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %17 = load i32, i32* @HCI_REJECT_CONN_REQ_OCF, align 4
  %18 = load i32, i32* @HCI_LINK_CTRL_OGF, align 4
  %19 = load i32, i32* @HCI_REJECT_CONN_REQ_PLEN, align 4
  %20 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %16, i32 %17, i32 %18, i32 %19)
  store %struct.pbuf* %20, %struct.pbuf** %6, align 8
  %21 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = load %struct.bd_addr*, %struct.bd_addr** %4, align 8
  %27 = getelementptr inbounds %struct.bd_addr, %struct.bd_addr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @memcpy(i32* %25, i32 %28, i32 6)
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %32 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = getelementptr inbounds i32, i32* %34, i64 10
  store i32 %30, i32* %35, align 4
  %36 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %37 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @physbusif_output(%struct.pbuf* %36, i32 %39)
  %41 = load %struct.pbuf*, %struct.pbuf** %6, align 8
  %42 = call i32 @btpbuf_free(%struct.pbuf* %41)
  %43 = load i32, i32* @ERR_OK, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %15, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @hci_cmd_ass(%struct.pbuf*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
