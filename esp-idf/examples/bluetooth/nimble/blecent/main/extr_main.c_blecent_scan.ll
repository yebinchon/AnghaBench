; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_scan.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/nimble/blecent/main/extr_main.c_blecent_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ble_gap_disc_params = type { i32, i32, i64, i64, i64, i64 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"error determining address type; rc=%d\0A\00", align 1
@BLE_HS_FOREVER = common dso_local global i32 0, align 4
@blecent_gap_event = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Error initiating GAP discovery procedure; rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @blecent_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blecent_scan() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.ble_gap_disc_params, align 8
  %3 = alloca i32, align 4
  %4 = call i32 @ble_hs_id_infer_auto(i32 0, i32* %1)
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %0
  %8 = load i32, i32* @ERROR, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @MODLOG_DFLT(i32 %8, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %28

11:                                               ; preds = %0
  %12 = getelementptr inbounds %struct.ble_gap_disc_params, %struct.ble_gap_disc_params* %2, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = getelementptr inbounds %struct.ble_gap_disc_params, %struct.ble_gap_disc_params* %2, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = getelementptr inbounds %struct.ble_gap_disc_params, %struct.ble_gap_disc_params* %2, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = getelementptr inbounds %struct.ble_gap_disc_params, %struct.ble_gap_disc_params* %2, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = getelementptr inbounds %struct.ble_gap_disc_params, %struct.ble_gap_disc_params* %2, i32 0, i32 3
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.ble_gap_disc_params, %struct.ble_gap_disc_params* %2, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @BLE_HS_FOREVER, align 4
  %20 = load i32, i32* @blecent_gap_event, align 4
  %21 = call i32 @ble_gap_disc(i32 %18, i32 %19, %struct.ble_gap_disc_params* %2, i32 %20, i32* null)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %11
  %25 = load i32, i32* @ERROR, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @MODLOG_DFLT(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %7, %24, %11
  ret void
}

declare dso_local i32 @ble_hs_id_infer_auto(i32, i32*) #1

declare dso_local i32 @MODLOG_DFLT(i32, i8*, i32) #1

declare dso_local i32 @ble_gap_disc(i32, i32, %struct.ble_gap_disc_params*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
