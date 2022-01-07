; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_attr.c_GATT_ConfigServiceChangeCCC.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_attr.c_GATT_ConfigServiceChangeCCC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@gatt_cb = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@BLE_ADDR_UNKNOWN_TYPE = common dso_local global i32 0, align 4
@GATT_SVC_CHANGED_CONNECTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GATT_ConfigServiceChangeCCC(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.TYPE_6__* @gatt_profile_find_clcb_by_bd_addr(i32 %8, i32 %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %7, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = icmp eq %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_6__* @gatt_profile_clcb_alloc(i32 0, i32 %14, i32 %15)
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %7, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  br label %55

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gatt_cb, i32 0, i32 0), align 4
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i32, i32* %6, align 4
  %27 = call i64 @GATT_GetConnIdIfConnected(i32 %22, i32 %23, i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i32, i32* @TRUE, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %21
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @gatt_cb, i32 0, i32 0), align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @BLE_ADDR_UNKNOWN_TYPE, align 4
  %37 = load i32, i32* @TRUE, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @GATT_Connect(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load i32, i32* @GATT_SVC_CHANGED_CONNECTING, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %33
  br label %55

48:                                               ; preds = %33
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = call i32 @gatt_cl_start_config_ccc(%struct.TYPE_6__* %53)
  br label %55

55:                                               ; preds = %48, %47, %20
  ret void
}

declare dso_local %struct.TYPE_6__* @gatt_profile_find_clcb_by_bd_addr(i32, i32) #1

declare dso_local %struct.TYPE_6__* @gatt_profile_clcb_alloc(i32, i32, i32) #1

declare dso_local i64 @GATT_GetConnIdIfConnected(i32, i32, i32*, i32) #1

declare dso_local i32 @GATT_Connect(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gatt_cl_start_config_ccc(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
