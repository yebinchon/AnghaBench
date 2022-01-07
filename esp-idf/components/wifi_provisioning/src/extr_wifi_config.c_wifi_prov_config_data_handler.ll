; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_config.c_wifi_prov_config_data_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_wifi_config.c_wifi_prov_config_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to unpack config data\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Proto command dispatcher error %d\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid encoding for response\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"System out of memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @wifi_prov_config_data_handler(i32 %0, i32* %1, i32 %2, i32** %3, i32* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_10__, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32*, i32** %9, align 8
  %19 = call %struct.TYPE_10__* @wi_fi_config_payload__unpack(i32* null, i32 %17, i32* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %14, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %21 = icmp ne %struct.TYPE_10__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %25, i64* %7, align 8
  br label %76

26:                                               ; preds = %6
  %27 = call i32 @wi_fi_config_payload__init(%struct.TYPE_10__* %15)
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %29 = load i8*, i8** %13, align 8
  %30 = call i64 @wifi_prov_config_command_dispatcher(%struct.TYPE_10__* %28, %struct.TYPE_10__* %15, i8* %29)
  store i64 %30, i64* %16, align 8
  %31 = load i64, i64* %16, align 8
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @TAG, align 4
  %36 = load i64, i64* %16, align 8
  %37 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load i64, i64* @ESP_FAIL, align 8
  store i64 %38, i64* %7, align 8
  br label %76

39:                                               ; preds = %26
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i64 %43, i64* %44, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %46 = call i32 @wi_fi_config_payload__free_unpacked(%struct.TYPE_10__* %45, i32* null)
  %47 = call i32 @wi_fi_config_payload__get_packed_size(%struct.TYPE_10__* %15)
  %48 = load i32*, i32** %12, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i32, i32* @TAG, align 4
  %54 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i64, i64* @ESP_FAIL, align 8
  store i64 %55, i64* %7, align 8
  br label %76

56:                                               ; preds = %39
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @malloc(i32 %58)
  %60 = inttoptr i64 %59 to i32*
  %61 = load i32**, i32*** %11, align 8
  store i32* %60, i32** %61, align 8
  %62 = load i32**, i32*** %11, align 8
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %69, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @TAG, align 4
  %67 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %66, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %68 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %68, i64* %7, align 8
  br label %76

69:                                               ; preds = %56
  %70 = load i32**, i32*** %11, align 8
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @wi_fi_config_payload__pack(%struct.TYPE_10__* %15, i32* %71)
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @wifi_prov_config_command_cleanup(%struct.TYPE_10__* %15, i8* %73)
  %75 = load i64, i64* @ESP_OK, align 8
  store i64 %75, i64* %7, align 8
  br label %76

76:                                               ; preds = %69, %65, %52, %34, %22
  %77 = load i64, i64* %7, align 8
  ret i64 %77
}

declare dso_local %struct.TYPE_10__* @wi_fi_config_payload__unpack(i32*, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @wi_fi_config_payload__init(%struct.TYPE_10__*) #1

declare dso_local i64 @wifi_prov_config_command_dispatcher(%struct.TYPE_10__*, %struct.TYPE_10__*, i8*) #1

declare dso_local i32 @wi_fi_config_payload__free_unpacked(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @wi_fi_config_payload__get_packed_size(%struct.TYPE_10__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @wi_fi_config_payload__pack(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @wifi_prov_config_command_cleanup(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
