; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_per_inq_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_per_inq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@HCIC_PARAM_SIZE_PER_INQ_MODE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HCIC_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@HCI_PERIODIC_INQUIRY_MODE = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btsnd_hcic_per_inq_mode(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i64*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* @HCIC_PARAM_SIZE_PER_INQ_MODE, align 8
  %15 = call %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64 %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %12, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i32, i32* @FALSE, align 4
  store i32 %18, i32* %6, align 4
  br label %55

19:                                               ; preds = %5
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i64 1
  %22 = bitcast %struct.TYPE_4__* %21 to i64*
  store i64* %22, i64** %13, align 8
  %23 = load i64, i64* @HCIC_PREAMBLE_SIZE, align 8
  %24 = load i64, i64* @HCIC_PARAM_SIZE_PER_INQ_MODE, align 8
  %25 = add nsw i64 %23, %24
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i64*, i64** %13, align 8
  %31 = load i32, i32* @HCI_PERIODIC_INQUIRY_MODE, align 4
  %32 = call i32 @UINT16_TO_STREAM(i64* %30, i32 %31)
  %33 = load i64*, i64** %13, align 8
  %34 = load i64, i64* @HCIC_PARAM_SIZE_PER_INQ_MODE, align 8
  %35 = call i32 @UINT8_TO_STREAM(i64* %33, i64 %34)
  %36 = load i64*, i64** %13, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @UINT16_TO_STREAM(i64* %36, i32 %37)
  %39 = load i64*, i64** %13, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @UINT16_TO_STREAM(i64* %39, i32 %40)
  %42 = load i64*, i64** %13, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @LAP_TO_STREAM(i64* %42, i32 %43)
  %45 = load i64*, i64** %13, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @UINT8_TO_STREAM(i64* %45, i64 %46)
  %48 = load i64*, i64** %13, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i32 @UINT8_TO_STREAM(i64* %48, i64 %49)
  %51 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %53 = call i32 @btu_hcif_send_cmd(i32 %51, %struct.TYPE_4__* %52)
  %54 = load i32, i32* @TRUE, align 4
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %19, %17
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i64*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i64*, i64) #1

declare dso_local i32 @LAP_TO_STREAM(i64*, i32) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
