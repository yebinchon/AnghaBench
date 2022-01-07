; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_netif.c_esp_wifi_register_if_rxcb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_wifi/src/extr_wifi_netif.c_esp_wifi_register_if_rxcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [73 x i8] c"Invalid argument: supplied netif=%p does not equal to interface netif=%p\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i8* null, align 8
@s_wifi_rxcbs = common dso_local global i32* null, align 8
@wifi_sta_receive = common dso_local global i32* null, align 8
@wifi_ap_receive = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown wifi interface id if=%d\00", align 1
@ESP_ERR_NOT_SUPPORTED = common dso_local global i8* null, align 8
@ESP_OK = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"esp_wifi_internal_reg_rxcb for if=%d failed with %d\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i8* null, align 8
@s_wifi_netifs = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @esp_wifi_register_if_rxcb(%struct.TYPE_5__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %14, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %3
  %18 = load i32, i32* @TAG, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i8*, i64, ...) @ESP_LOGE(i32 %18, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), i64 %20, i8* %24)
  %26 = load i8*, i8** @ESP_ERR_INVALID_ARG, align 8
  store i8* %26, i8** %4, align 8
  br label %70

27:                                               ; preds = %3
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32*, i32** @s_wifi_rxcbs, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  store i32 %31, i32* %34, align 4
  store i32* null, i32** %9, align 8
  %35 = load i64, i64* %8, align 8
  switch i64 %35, label %40 [
    i64 128, label %36
    i64 129, label %38
  ]

36:                                               ; preds = %27
  %37 = load i32*, i32** @wifi_sta_receive, align 8
  store i32* %37, i32** %9, align 8
  br label %41

38:                                               ; preds = %27
  %39 = load i32*, i32** @wifi_ap_receive, align 8
  store i32* %39, i32** %9, align 8
  br label %41

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %38, %36
  %42 = load i32*, i32** %9, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %41
  %45 = load i32, i32* @TAG, align 4
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (i32, i8*, i64, ...) @ESP_LOGE(i32 %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i8*, i8** @ESP_ERR_NOT_SUPPORTED, align 8
  store i8* %48, i8** %4, align 8
  br label %70

49:                                               ; preds = %41
  %50 = load i64, i64* %8, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i8* @esp_wifi_internal_reg_rxcb(i64 %50, i32* %51)
  store i8* %52, i8** %10, align 8
  %53 = load i8*, i8** @ESP_OK, align 8
  %54 = icmp ne i8* %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* @TAG, align 4
  %57 = load i64, i64* %8, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = call i32 (i32, i8*, i64, ...) @ESP_LOGE(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %57, i8* %58)
  %60 = load i8*, i8** @ESP_ERR_INVALID_STATE, align 8
  store i8* %60, i8** %4, align 8
  br label %70

61:                                               ; preds = %49
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8**, i8*** @s_wifi_netifs, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* %65, i8** %68, align 8
  %69 = load i8*, i8** @ESP_OK, align 8
  store i8* %69, i8** %4, align 8
  br label %70

70:                                               ; preds = %61, %55, %44, %17
  %71 = load i8*, i8** %4, align 8
  ret i8* %71
}

declare dso_local i32 @ESP_LOGE(i32, i8*, i64, ...) #1

declare dso_local i8* @esp_wifi_internal_reg_rxcb(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
