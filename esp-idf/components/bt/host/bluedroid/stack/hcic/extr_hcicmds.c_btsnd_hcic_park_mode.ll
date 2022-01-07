; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_park_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_park_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@HCIC_PARAM_SIZE_PARK_MODE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HCIC_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@HCI_PARK_MODE = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btsnd_hcic_park_mode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @HCIC_PARAM_SIZE_PARK_MODE, align 8
  %11 = call %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64 %10)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %4, align 4
  br label %45

15:                                               ; preds = %3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 1
  %18 = bitcast %struct.TYPE_4__* %17 to i32*
  store i32* %18, i32** %9, align 8
  %19 = load i64, i64* @HCIC_PREAMBLE_SIZE, align 8
  %20 = load i64, i64* @HCIC_PARAM_SIZE_PARK_MODE, align 8
  %21 = add nsw i64 %19, %20
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* @HCI_PARK_MODE, align 4
  %28 = call i32 @UINT16_TO_STREAM(i32* %26, i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load i64, i64* @HCIC_PARAM_SIZE_PARK_MODE, align 8
  %31 = call i32 @UINT8_TO_STREAM(i32* %29, i64 %30)
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @UINT16_TO_STREAM(i32* %32, i32 %33)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @UINT16_TO_STREAM(i32* %35, i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @UINT16_TO_STREAM(i32* %38, i32 %39)
  %41 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %43 = call i32 @btu_hcif_send_cmd(i32 %41, %struct.TYPE_4__* %42)
  %44 = load i32, i32* @TRUE, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %15, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i64) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
