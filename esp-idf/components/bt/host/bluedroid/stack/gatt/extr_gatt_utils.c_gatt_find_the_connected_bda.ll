; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_find_the_connected_bda.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_find_the_connected_bda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32, i64 }

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"gatt_find_the_connected_bda start_idx=%d\00", align 1
@GATT_MAX_PHY_CHANNEL = common dso_local global i64 0, align 8
@gatt_cb = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GATT_CH_OPEN = common dso_local global i64 0, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"gatt_find_the_connected_bda bda :%02x-%02x-%02x-%02x-%02x-%02x\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"gatt_find_the_connected_bda found=%d found_idx=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gatt_find_the_connected_bda(i64 %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i64, i64* %5, align 8
  %13 = call i32 (i8*, i64, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %12)
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %9, align 8
  br label %15

15:                                               ; preds = %73, %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @GATT_MAX_PHY_CHANNEL, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %76

19:                                               ; preds = %15
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gatt_cb, i32 0, i32 0), align 8
  %21 = load i64, i64* %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %72

26:                                               ; preds = %19
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gatt_cb, i32 0, i32 0), align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GATT_CH_OPEN, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %26
  %35 = load i32*, i32** %6, align 8
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gatt_cb, i32 0, i32 0), align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BD_ADDR_LEN, align 4
  %42 = call i32 @memcpy(i32* %35, i32 %40, i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = load i64*, i64** %7, align 8
  store i64 %43, i64* %44, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gatt_cb, i32 0, i32 0), align 8
  %46 = load i64, i64* %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = load i32*, i32** %6, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %6, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %6, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i64, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70)
  br label %76

72:                                               ; preds = %26, %19
  br label %73

73:                                               ; preds = %72
  %74 = load i64, i64* %9, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %9, align 8
  br label %15

76:                                               ; preds = %34, %15
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %9, align 8
  %80 = call i32 (i8*, i64, ...) @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %78, i64 %79)
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i64, ...) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
