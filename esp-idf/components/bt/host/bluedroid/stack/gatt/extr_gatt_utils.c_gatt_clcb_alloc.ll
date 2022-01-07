; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_clcb_alloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_utils.c_gatt_clcb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, i32*, i32, i32 }

@GATT_CL_MAX_LCB = common dso_local global i64 0, align 8
@gatt_cb = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @gatt_clcb_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @GATT_GET_GATT_IF(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @GATT_GET_TCB_IDX(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32* @gatt_get_tcb_by_idx(i64 %13)
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @gatt_get_regcb(i32 %15)
  store i32* %16, i32** %8, align 8
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %48, %1
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @GATT_CL_MAX_LCB, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %17
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gatt_cb, i32 0, i32 0), align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %47, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @gatt_cb, i32 0, i32 0), align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  store %struct.TYPE_4__* %31, %struct.TYPE_4__** %4, align 8
  %32 = load i32, i32* @TRUE, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %2, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load i64, i64* %3, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32* %44, i32** %46, align 8
  br label %51

47:                                               ; preds = %21
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %17

51:                                               ; preds = %28, %17
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %52
}

declare dso_local i32 @GATT_GET_GATT_IF(i32) #1

declare dso_local i64 @GATT_GET_TCB_IDX(i32) #1

declare dso_local i32* @gatt_get_tcb_by_idx(i64) #1

declare dso_local i32* @gatt_get_regcb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
