; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_execute_event_cb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_execute_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i8*, i32 (i8*, i32, i8*)* }
%struct.TYPE_7__ = type { i8*, i32 (i8*, i32, i8*)* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"execute_event_cb : %d\00", align 1
@prov_ctx = common dso_local global %struct.TYPE_8__* null, align 8
@prov_ctx_lock = common dso_local global i32 0, align 4
@WIFI_PROV_EVENT = common dso_local global i32 0, align 4
@portMAX_DELAY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to post event %d to default event loop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @execute_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @execute_event_cb(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (i8*, i32, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32 (i8*, i32, i8*)*, align 8
  %10 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* @TAG, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ESP_LOGD(i32 %11, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %72

16:                                               ; preds = %3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %20, align 8
  store i32 (i8*, i32, i8*)* %21, i32 (i8*, i32, i8*)** %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %30, align 8
  store i32 (i8*, i32, i8*)* %31, i32 (i8*, i32, i8*)** %9, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prov_ctx, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %10, align 8
  %37 = load i32, i32* @prov_ctx_lock, align 4
  %38 = call i32 @RELEASE_LOCK(i32 %37)
  %39 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %9, align 8
  %40 = icmp ne i32 (i8*, i32, i8*)* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %16
  %42 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 %42(i8* %43, i32 %44, i8* %45)
  br label %47

47:                                               ; preds = %41, %16
  %48 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %7, align 8
  %49 = icmp ne i32 (i8*, i32, i8*)* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %7, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 %51(i8* %52, i32 %53, i8* %54)
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32, i32* @WIFI_PROV_EVENT, align 4
  %58 = load i32, i32* %4, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load i32, i32* @portMAX_DELAY, align 4
  %62 = call i64 @esp_event_post(i32 %57, i32 %58, i8* %59, i64 %60, i32 %61)
  %63 = load i64, i64* @ESP_OK, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* @TAG, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ESP_LOGE(i32 %66, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %65, %56
  %70 = load i32, i32* @prov_ctx_lock, align 4
  %71 = call i32 @ACQUIRE_LOCK(i32 %70)
  br label %72

72:                                               ; preds = %69, %3
  ret void
}

declare dso_local i32 @ESP_LOGD(i32, i8*, i32) #1

declare dso_local i32 @RELEASE_LOCK(i32) #1

declare dso_local i64 @esp_event_post(i32, i32, i8*, i64, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

declare dso_local i32 @ACQUIRE_LOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
