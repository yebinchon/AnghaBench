; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_endpoint_create.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_endpoint_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 (i32, i8*, i64)* }

@prov_ctx_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Provisioning manager not initialized\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@ESP_FAIL = common dso_local global i64 0, align 8
@prov_ctx = common dso_local global %struct.TYPE_6__* null, align 8
@WIFI_PROV_STATE_IDLE = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to create additional endpoint\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wifi_prov_mgr_endpoint_create(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i32, i32* @prov_ctx_lock, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGE(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %10, i64* %2, align 8
  br label %54

11:                                               ; preds = %1
  %12 = load i64, i64* @ESP_FAIL, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* @prov_ctx_lock, align 4
  %14 = call i32 @ACQUIRE_LOCK(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  br i1 %16, label %17, label %38

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @WIFI_PROV_STATE_IDLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %17
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  %37 = call i64 %28(i32 %31, i8* %32, i64 %36)
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %23, %17, %11
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @ESP_OK, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i32, i32* @TAG, align 4
  %44 = call i32 @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %50

45:                                               ; preds = %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %45, %42
  %51 = load i32, i32* @prov_ctx_lock, align 4
  %52 = call i32 @RELEASE_LOCK(i32 %51)
  %53 = load i64, i64* %4, align 8
  store i64 %53, i64* %2, align 8
  br label %54

54:                                               ; preds = %50, %7
  %55 = load i64, i64* %2, align 8
  ret i64 %55
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
