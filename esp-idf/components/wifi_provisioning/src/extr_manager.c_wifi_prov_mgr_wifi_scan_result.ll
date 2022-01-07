; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_wifi_scan_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_mgr_wifi_scan_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32** }

@prov_ctx_lock = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Provisioning manager not initialized\00", align 1
@prov_ctx = common dso_local global %struct.TYPE_2__* null, align 8
@MAX_SCAN_RESULTS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @wifi_prov_mgr_wifi_scan_result(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* @prov_ctx_lock, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @TAG, align 4
  %9 = call i32 @ESP_LOGE(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** %4, align 8
  store i32* %10, i32** %2, align 8
  br label %37

11:                                               ; preds = %1
  %12 = load i32, i32* @prov_ctx_lock, align 4
  %13 = call i32 @ACQUIRE_LOCK(i32 %12)
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prov_ctx, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* @TAG, align 4
  %18 = call i32 @ESP_LOGE(i32 %17, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @prov_ctx_lock, align 4
  %20 = call i32 @RELEASE_LOCK(i32 %19)
  %21 = load i32*, i32** %4, align 8
  store i32* %21, i32** %2, align 8
  br label %37

22:                                               ; preds = %11
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @MAX_SCAN_RESULTS, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @prov_ctx, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds i32*, i32** %29, i64 %30
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %4, align 8
  br label %33

33:                                               ; preds = %26, %22
  %34 = load i32, i32* @prov_ctx_lock, align 4
  %35 = call i32 @RELEASE_LOCK(i32 %34)
  %36 = load i32*, i32** %4, align 8
  store i32* %36, i32** %2, align 8
  br label %37

37:                                               ; preds = %33, %16, %7
  %38 = load i32*, i32** %2, align 8
  ret i32* %38
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
