; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_disable_auto_stop.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_disable_auto_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@prov_ctx_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Provisioning manager not initialized\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@prov_ctx = common dso_local global %struct.TYPE_6__* null, align 8
@WIFI_PROV_STATE_IDLE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wifi_prov_mgr_disable_auto_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @prov_ctx_lock, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGE(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %10, i32* %2, align 4
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* @ESP_FAIL, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @prov_ctx_lock, align 4
  %14 = call i32 @ACQUIRE_LOCK(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WIFI_PROV_STATE_IDLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @ESP_OK, align 4
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %17, %11
  %33 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load i32, i32* @prov_ctx_lock, align 4
  %36 = call i32 @RELEASE_LOCK(i32 %35)
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ACQUIRE_LOCK(i32) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
