; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_change_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/hcic/extr_hcicmds.c_btsnd_hcic_change_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@HCIC_PARAM_SIZE_CHANGE_NAME = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@HCIC_PREAMBLE_SIZE = common dso_local global i64 0, align 8
@HCI_CHANGE_LOCAL_NAME = common dso_local global i32 0, align 4
@LOCAL_BR_EDR_CONTROLLER_ID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btsnd_hcic_change_name(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = inttoptr i64 %7 to i8*
  %9 = call i64 @strlen(i8* %8)
  %10 = add nsw i64 %9, 1
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @HCIC_PARAM_SIZE_CHANGE_NAME, align 8
  %12 = call %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64 %11)
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %4, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %2, align 4
  br label %52

16:                                               ; preds = %1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 1
  %19 = bitcast %struct.TYPE_4__* %18 to i32*
  store i32* %19, i32** %5, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i64, i64* @HCIC_PREAMBLE_SIZE, align 8
  %22 = load i64, i64* @HCIC_PARAM_SIZE_CHANGE_NAME, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @memset(i32* %20, i32 0, i64 %23)
  %25 = load i64, i64* @HCIC_PREAMBLE_SIZE, align 8
  %26 = load i64, i64* @HCIC_PARAM_SIZE_CHANGE_NAME, align 8
  %27 = add nsw i64 %25, %26
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @HCI_CHANGE_LOCAL_NAME, align 4
  %34 = call i32 @UINT16_TO_STREAM(i32* %32, i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = load i64, i64* @HCIC_PARAM_SIZE_CHANGE_NAME, align 8
  %37 = call i32 @UINT8_TO_STREAM(i32* %35, i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @HCIC_PARAM_SIZE_CHANGE_NAME, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %16
  %42 = load i64, i64* @HCIC_PARAM_SIZE_CHANGE_NAME, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %41, %16
  %44 = load i32*, i32** %5, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @ARRAY_TO_STREAM(i32* %44, i64 %45, i64 %46)
  %48 = load i32, i32* @LOCAL_BR_EDR_CONTROLLER_ID, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = call i32 @btu_hcif_send_cmd(i32 %48, %struct.TYPE_4__* %49)
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %43, %14
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.TYPE_4__* @HCI_GET_CMD_BUF(i64) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i32*, i64) #1

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i64, i64) #1

declare dso_local i32 @btu_hcif_send_cmd(i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
