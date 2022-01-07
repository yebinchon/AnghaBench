; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_wifi_scan_result_count.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_wifi_scan_result_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@prov_ctx_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Provisioning manager not initialized\00", align 1
@prov_ctx = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_SCAN_RESULTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wifi_prov_mgr_wifi_scan_result_count() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = load i32, i32* @prov_ctx_lock, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 @ESP_LOGE(i32 %6, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* %2, align 8
  store i64 %8, i64* %1, align 8
  br label %41

9:                                                ; preds = %0
  %10 = load i32, i32* @prov_ctx_lock, align 4
  %11 = call i32 @ACQUIRE_LOCK(i32 %10)
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prov_ctx, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @TAG, align 4
  %16 = call i32 @ESP_LOGE(i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @prov_ctx_lock, align 4
  %18 = call i32 @RELEASE_LOCK(i32 %17)
  %19 = load i64, i64* %2, align 8
  store i64 %19, i64* %1, align 8
  br label %41

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* @MAX_SCAN_RESULTS, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prov_ctx, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %2, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %25
  br label %37

34:                                               ; preds = %25
  %35 = load i64, i64* %2, align 8
  %36 = add i64 %35, 1
  store i64 %36, i64* %2, align 8
  br label %21

37:                                               ; preds = %33, %21
  %38 = load i32, i32* @prov_ctx_lock, align 4
  %39 = call i32 @RELEASE_LOCK(i32 %38)
  %40 = load i64, i64* %2, align 8
  store i64 %40, i64* %1, align 8
  br label %41

41:                                               ; preds = %37, %14, %5
  %42 = load i64, i64* %1, align 8
  ret i64 %42
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
