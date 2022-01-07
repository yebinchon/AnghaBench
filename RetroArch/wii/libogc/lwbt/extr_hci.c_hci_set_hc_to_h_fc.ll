; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_set_hc_to_h_fc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_set_hc_to_h_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i64 }

@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_SET_HC_TO_H_FC_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"hci_set_hc_to_h_fc: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_SET_HC_TO_H_FC_OCF = common dso_local global i32 0, align 4
@HCI_HC_BB_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_set_hc_to_h_fc() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pbuf*, align 8
  %3 = load i32, i32* @PBUF_RAW, align 4
  %4 = load i32, i32* @HCI_SET_HC_TO_H_FC_PLEN, align 4
  %5 = load i32, i32* @PBUF_RAM, align 4
  %6 = call %struct.pbuf* @btpbuf_alloc(i32 %3, i32 %4, i32 %5)
  store %struct.pbuf* %6, %struct.pbuf** %2, align 8
  %7 = icmp eq %struct.pbuf* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ERR_MEM, align 4
  store i32 %10, i32* %1, align 4
  br label %30

11:                                               ; preds = %0
  %12 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %13 = load i32, i32* @HCI_SET_HC_TO_H_FC_OCF, align 4
  %14 = load i32, i32* @HCI_HC_BB_OGF, align 4
  %15 = load i32, i32* @HCI_SET_HC_TO_H_FC_PLEN, align 4
  %16 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %12, i32 %13, i32 %14, i32 %15)
  store %struct.pbuf* %16, %struct.pbuf** %2, align 8
  %17 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = getelementptr inbounds i32, i32* %20, i64 4
  store i32 1, i32* %21, align 4
  %22 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %23 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @physbusif_output(%struct.pbuf* %22, i32 %25)
  %27 = load %struct.pbuf*, %struct.pbuf** %2, align 8
  %28 = call i32 @btpbuf_free(%struct.pbuf* %27)
  %29 = load i32, i32* @ERR_OK, align 4
  store i32 %29, i32* %1, align 4
  br label %30

30:                                               ; preds = %11, %8
  %31 = load i32, i32* %1, align 4
  ret i32 %31
}

declare dso_local %struct.pbuf* @btpbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @ERROR(i8*) #1

declare dso_local %struct.pbuf* @hci_cmd_ass(%struct.pbuf*, i32, i32, i32) #1

declare dso_local i32 @physbusif_output(%struct.pbuf*, i32) #1

declare dso_local i32 @btpbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
