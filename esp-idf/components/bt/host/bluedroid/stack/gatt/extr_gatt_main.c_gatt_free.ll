; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_main.c_gatt_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i32, %struct.TYPE_5__*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32*, i32* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"gatt_free()\00", align 1
@gatt_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GATT_MAX_PHY_CHANNEL = common dso_local global i32 0, align 4
@GATT_MAX_SR_PROFILES = common dso_local global i32 0, align 4
@gatt_cb_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatt_free() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 5), align 8
  %4 = call i32 @fixed_queue_free(i32* %3, i32* null)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 5), align 8
  %5 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 4), align 8
  %6 = call i32 @fixed_queue_free(i32* %5, i32* null)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 4), align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 3), align 8
  %8 = call i32 @fixed_queue_free(i32* %7, i32* null)
  store i32* null, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 3), align 8
  store i32 0, i32* %1, align 4
  br label %9

9:                                                ; preds = %76, %0
  %10 = load i32, i32* %1, align 4
  %11 = load i32, i32* @GATT_MAX_PHY_CHANNEL, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %79

13:                                               ; preds = %9
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @fixed_queue_free(i32* %19, i32* null)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  store i32* null, i32** %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @fixed_queue_free(i32* %31, i32* null)
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = call i32 @btu_free_timer(i32* %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %45 = load i32, i32* %1, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = call i32 @memset(i32* %48, i32 0, i32 4)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = call i32 @btu_free_timer(i32* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = call i32 @memset(i32* %60, i32 0, i32 4)
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = call i32 @fixed_queue_free(i32* %68, i32* null)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 2), align 8
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %13
  %77 = load i32, i32* %1, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %1, align 4
  br label %9

79:                                               ; preds = %9
  store i32 0, i32* %1, align 4
  br label %80

80:                                               ; preds = %100, %79
  %81 = load i32, i32* %1, align 4
  %82 = load i32, i32* @GATT_MAX_SR_PROFILES, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %103

84:                                               ; preds = %80
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 0), align 8
  %86 = load i32, i32* %1, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = call i32 @gatt_remove_an_item_from_list(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 1), i32* %88)
  %90 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 0), align 8
  %91 = load i32, i32* %1, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = call i32 @gatt_free_attr_value_buffer(i32* %93)
  %95 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @gatt_cb, i32 0, i32 0), align 8
  %96 = load i32, i32* %1, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = call i32 @gatt_free_hdl_buffer(i32* %98)
  br label %100

100:                                              ; preds = %84
  %101 = load i32, i32* %1, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %1, align 4
  br label %80

103:                                              ; preds = %80
  ret void
}

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i32 @fixed_queue_free(i32*, i32*) #1

declare dso_local i32 @btu_free_timer(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @gatt_remove_an_item_from_list(i32*, i32*) #1

declare dso_local i32 @gatt_free_attr_value_buffer(i32*) #1

declare dso_local i32 @gatt_free_hdl_buffer(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
