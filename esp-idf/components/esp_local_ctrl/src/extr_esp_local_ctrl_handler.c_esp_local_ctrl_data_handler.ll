; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl_handler.c_esp_local_ctrl_data_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl_handler.c_esp_local_ctrl_data_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to unpack payload data\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"command dispatcher failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid encoding for response\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"System out of memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@ESP_LOG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_local_ctrl_data_handler(i32 %0, i32* %1, i32 %2, i32** %3, i32* %4, i8* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_10__, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32** %3, i32*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* null, i8** %14, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %9, align 8
  %20 = call %struct.TYPE_10__* @local_ctrl_message__unpack(i32* null, i32 %18, i32* %19)
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %15, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %22 = icmp ne %struct.TYPE_10__* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %6
  %24 = load i32, i32* @TAG, align 4
  %25 = call i32 @ESP_LOGE(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %26, i64* %7, align 8
  br label %86

27:                                               ; preds = %6
  %28 = call i32 @local_ctrl_message__init(%struct.TYPE_10__* %16)
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i64 %32, i64* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %35 = call i64 @esp_local_ctrl_command_dispatcher(%struct.TYPE_10__* %34, %struct.TYPE_10__* %16, i8** %14)
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* %17, align 8
  %37 = load i64, i64* @ESP_OK, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load i32, i32* @TAG, align 4
  %41 = call i32 @ESP_LOGE(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %42 = call i32 @esp_local_ctrl_command_cleanup(%struct.TYPE_10__* %16, i8** %14)
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %44 = call i32 @local_ctrl_message__free_unpacked(%struct.TYPE_10__* %43, i32* null)
  %45 = load i64, i64* @ESP_FAIL, align 8
  store i64 %45, i64* %7, align 8
  br label %86

46:                                               ; preds = %27
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %48 = call i32 @local_ctrl_message__free_unpacked(%struct.TYPE_10__* %47, i32* null)
  %49 = call i32 @local_ctrl_message__get_packed_size(%struct.TYPE_10__* %16)
  %50 = load i32*, i32** %12, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load i32, i32* @TAG, align 4
  %56 = call i32 @ESP_LOGE(i32 %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %57 = call i32 @esp_local_ctrl_command_cleanup(%struct.TYPE_10__* %16, i8** %14)
  %58 = load i64, i64* @ESP_FAIL, align 8
  store i64 %58, i64* %7, align 8
  br label %86

59:                                               ; preds = %46
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @malloc(i32 %61)
  %63 = inttoptr i64 %62 to i32*
  %64 = load i32**, i32*** %11, align 8
  store i32* %63, i32** %64, align 8
  %65 = load i32**, i32*** %11, align 8
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %59
  %69 = load i32, i32* @TAG, align 4
  %70 = call i32 @ESP_LOGE(i32 %69, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %71 = call i32 @esp_local_ctrl_command_cleanup(%struct.TYPE_10__* %16, i8** %14)
  %72 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %72, i64* %7, align 8
  br label %86

73:                                               ; preds = %59
  %74 = load i32**, i32*** %11, align 8
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @local_ctrl_message__pack(%struct.TYPE_10__* %16, i32* %75)
  %77 = call i32 @esp_local_ctrl_command_cleanup(%struct.TYPE_10__* %16, i8** %14)
  %78 = load i32, i32* @TAG, align 4
  %79 = load i32**, i32*** %11, align 8
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ESP_LOG_DEBUG, align 4
  %84 = call i32 @ESP_LOG_BUFFER_HEX_LEVEL(i32 %78, i32* %80, i32 %82, i32 %83)
  %85 = load i64, i64* @ESP_OK, align 8
  store i64 %85, i64* %7, align 8
  br label %86

86:                                               ; preds = %73, %68, %54, %39, %23
  %87 = load i64, i64* %7, align 8
  ret i64 %87
}

declare dso_local %struct.TYPE_10__* @local_ctrl_message__unpack(i32*, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @local_ctrl_message__init(%struct.TYPE_10__*) #1

declare dso_local i64 @esp_local_ctrl_command_dispatcher(%struct.TYPE_10__*, %struct.TYPE_10__*, i8**) #1

declare dso_local i32 @esp_local_ctrl_command_cleanup(%struct.TYPE_10__*, i8**) #1

declare dso_local i32 @local_ctrl_message__free_unpacked(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @local_ctrl_message__get_packed_size(%struct.TYPE_10__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @local_ctrl_message__pack(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @ESP_LOG_BUFFER_HEX_LEVEL(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
