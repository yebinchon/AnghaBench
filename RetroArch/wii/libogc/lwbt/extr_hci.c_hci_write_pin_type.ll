; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_write_pin_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_hci.c_hci_write_pin_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbuf = type { i32, i64 }

@PBUF_RAW = common dso_local global i32 0, align 4
@HCI_W_PIN_TYPE_PLEN = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"hci_write_local_name: Could not allocate memory for pbuf\0A\00", align 1
@ERR_MEM = common dso_local global i32 0, align 4
@HCI_W_PIN_TYPE_OCF = common dso_local global i32 0, align 4
@HCI_HC_BB_OGF = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_write_pin_type(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pbuf*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  %5 = load i32, i32* @PBUF_RAW, align 4
  %6 = load i32, i32* @HCI_W_PIN_TYPE_PLEN, align 4
  %7 = load i32, i32* @PBUF_RAM, align 4
  %8 = call %struct.pbuf* @btpbuf_alloc(i32 %5, i32 %6, i32 %7)
  store %struct.pbuf* %8, %struct.pbuf** %4, align 8
  %9 = icmp eq %struct.pbuf* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = call i32 @ERROR(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @ERR_MEM, align 4
  store i32 %12, i32* %2, align 4
  br label %33

13:                                               ; preds = %1
  %14 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %15 = load i32, i32* @HCI_W_PIN_TYPE_OCF, align 4
  %16 = load i32, i32* @HCI_HC_BB_OGF, align 4
  %17 = load i32, i32* @HCI_W_PIN_TYPE_PLEN, align 4
  %18 = call %struct.pbuf* @hci_cmd_ass(%struct.pbuf* %14, i32 %15, i32 %16, i32 %17)
  store %struct.pbuf* %18, %struct.pbuf** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  store i32 %19, i32* %24, align 4
  %25 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %26 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @physbusif_output(%struct.pbuf* %25, i32 %28)
  %30 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %31 = call i32 @btpbuf_free(%struct.pbuf* %30)
  %32 = load i32, i32* @ERR_OK, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %13, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
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
