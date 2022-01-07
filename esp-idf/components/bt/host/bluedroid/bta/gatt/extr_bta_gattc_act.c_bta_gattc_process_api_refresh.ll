; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_process_api_refresh.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_process_api_refresh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i64, i32*, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@bta_gattc_cb = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@FALSE = common dso_local global i64 0, align 8
@BTA_GATTC_CLCB_MAX = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@BTA_GATTC_CONN_ST = common dso_local global i64 0, align 8
@BTA_GATTC_INT_DISCOVER_EVT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_process_api_refresh(i32* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_10__* @bta_gattc_find_srvr_cache(i32 %12)
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %5, align 8
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @bta_gattc_cb, i32 0, i32 0), align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i64 0
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %6, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %7, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @UNUSED(i32* %17)
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %83

21:                                               ; preds = %2
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %70

26:                                               ; preds = %21
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %50, %31
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @BTA_GATTC_CLCB_MAX, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %32
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = icmp eq %struct.TYPE_10__* %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i64, i64* @TRUE, align 8
  store i64 %48, i64* %7, align 8
  br label %55

49:                                               ; preds = %41, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %8, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %8, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 1
  store %struct.TYPE_12__* %54, %struct.TYPE_12__** %6, align 8
  br label %32

55:                                               ; preds = %47, %32
  %56 = load i64, i64* %7, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BTA_GATTC_CONN_ST, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = load i32, i32* @BTA_GATTC_INT_DISCOVER_EVT, align 4
  %67 = call i32 @bta_gattc_sm_execute(%struct.TYPE_12__* %65, i32 %66, i32* null)
  br label %68

68:                                               ; preds = %64, %58
  br label %83

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69, %26, %21
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %82

75:                                               ; preds = %70
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @list_free(i32* %78)
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %75, %70
  br label %83

83:                                               ; preds = %68, %82, %2
  ret void
}

declare dso_local %struct.TYPE_10__* @bta_gattc_find_srvr_cache(i32) #1

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @bta_gattc_sm_execute(%struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @list_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
