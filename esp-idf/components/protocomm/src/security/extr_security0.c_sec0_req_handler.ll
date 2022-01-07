; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security0.c_sec0_req_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security0.c_sec0_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to unpack setup_req\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@protocomm_security0 = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Security version mismatch. Closing connection\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Session setup error %d\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"System out of memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32*, i32, i32*, i32, i32**, i32*, i8*)* @sec0_req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sec0_req_handler(i32 %0, i32* %1, i32 %2, i32* %3, i32 %4, i32** %5, i32* %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_12__*, align 8
  %19 = alloca %struct.TYPE_12__, align 8
  %20 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32** %5, i32*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  %21 = load i32, i32* %14, align 4
  %22 = load i32*, i32** %13, align 8
  %23 = call %struct.TYPE_12__* @session_data__unpack(i32* null, i32 %21, i32* %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %18, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %29, i64* %9, align 8
  br label %86

30:                                               ; preds = %8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @protocomm_security0, i32 0, i32 0), align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i32, i32* @TAG, align 4
  %38 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %40 = call i32 @session_data__free_unpacked(%struct.TYPE_12__* %39, i32* null)
  %41 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %41, i64* %9, align 8
  br label %86

42:                                               ; preds = %30
  %43 = call i32 @session_data__init(%struct.TYPE_12__* %19)
  %44 = load i32, i32* %12, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = call i64 @sec0_session_setup(i32 %44, %struct.TYPE_12__* %45, %struct.TYPE_12__* %19, i32* %46)
  store i64 %47, i64* %20, align 8
  %48 = load i64, i64* %20, align 8
  %49 = load i64, i64* @ESP_OK, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %42
  %52 = load i32, i32* @TAG, align 4
  %53 = load i64, i64* %20, align 8
  %54 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %56 = call i32 @session_data__free_unpacked(%struct.TYPE_12__* %55, i32* null)
  %57 = load i64, i64* @ESP_FAIL, align 8
  store i64 %57, i64* %9, align 8
  br label %86

58:                                               ; preds = %42
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %64 = call i32 @session_data__free_unpacked(%struct.TYPE_12__* %63, i32* null)
  %65 = call i32 @session_data__get_packed_size(%struct.TYPE_12__* %19)
  %66 = load i32*, i32** %16, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @malloc(i32 %68)
  %70 = inttoptr i64 %69 to i32*
  %71 = load i32**, i32*** %15, align 8
  store i32* %70, i32** %71, align 8
  %72 = load i32**, i32*** %15, align 8
  %73 = load i32*, i32** %72, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %58
  %76 = load i32, i32* @TAG, align 4
  %77 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %78, i64* %9, align 8
  br label %86

79:                                               ; preds = %58
  %80 = load i32**, i32*** %15, align 8
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @session_data__pack(%struct.TYPE_12__* %19, i32* %81)
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @sec0_session_setup_cleanup(i32 %83, %struct.TYPE_12__* %19)
  %85 = load i64, i64* @ESP_OK, align 8
  store i64 %85, i64* %9, align 8
  br label %86

86:                                               ; preds = %79, %75, %51, %36, %26
  %87 = load i64, i64* %9, align 8
  ret i64 %87
}

declare dso_local %struct.TYPE_12__* @session_data__unpack(i32*, i32, i32*) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i32 @session_data__free_unpacked(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @session_data__init(%struct.TYPE_12__*) #1

declare dso_local i64 @sec0_session_setup(i32, %struct.TYPE_12__*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @session_data__get_packed_size(%struct.TYPE_12__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @session_data__pack(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @sec0_session_setup_cleanup(i32, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
