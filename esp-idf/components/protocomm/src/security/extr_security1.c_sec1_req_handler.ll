; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_sec1_req_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/security/extr_security1.c_sec1_req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_16__ = type { i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid session context data\00", align 1
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid session ID : %d (expected %d)\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"Unable to unpack setup_req\00", align 1
@protocomm_security1 = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"Security version mismatch. Closing connection\00", align 1
@ESP_OK = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"Session setup error %d\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"System out of memory\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*, i64, i32*, i32, i32**, i32*, i8*)* @sec1_req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sec1_req_handler(i64 %0, i32* %1, i64 %2, i32* %3, i32 %4, i32** %5, i32* %6, i8* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_15__*, align 8
  %19 = alloca %struct.TYPE_16__*, align 8
  %20 = alloca %struct.TYPE_16__, align 8
  %21 = alloca i64, align 8
  store i64 %0, i64* %10, align 8
  store i32* %1, i32** %11, align 8
  store i64 %2, i64* %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32** %5, i32*** %15, align 8
  store i32* %6, i32** %16, align 8
  store i8* %7, i8** %17, align 8
  %22 = load i64, i64* %10, align 8
  %23 = inttoptr i64 %22 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %23, %struct.TYPE_15__** %18, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %25 = icmp ne %struct.TYPE_15__* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %29 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %29, i64* %9, align 8
  br label %112

30:                                               ; preds = %8
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = load i32, i32* @TAG, align 4
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %38, i64 %41)
  %43 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %43, i64* %9, align 8
  br label %112

44:                                               ; preds = %30
  %45 = load i32, i32* %14, align 4
  %46 = load i32*, i32** %13, align 8
  %47 = call %struct.TYPE_16__* @session_data__unpack(i32* null, i32 %45, i32* %46)
  store %struct.TYPE_16__* %47, %struct.TYPE_16__** %19, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %54, label %50

50:                                               ; preds = %44
  %51 = load i32, i32* @TAG, align 4
  %52 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %53, i64* %9, align 8
  br label %112

54:                                               ; preds = %44
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @protocomm_security1, i32 0, i32 0), align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32, i32* @TAG, align 4
  %62 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %61, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %64 = call i32 @session_data__free_unpacked(%struct.TYPE_16__* %63, i32* null)
  %65 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %65, i64* %9, align 8
  br label %112

66:                                               ; preds = %54
  %67 = call i32 @session_data__init(%struct.TYPE_16__* %20)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %69 = load i64, i64* %12, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %71 = load i32*, i32** %11, align 8
  %72 = call i64 @sec1_session_setup(%struct.TYPE_15__* %68, i64 %69, %struct.TYPE_16__* %70, %struct.TYPE_16__* %20, i32* %71)
  store i64 %72, i64* %21, align 8
  %73 = load i64, i64* %21, align 8
  %74 = load i64, i64* @ESP_OK, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %66
  %77 = load i32, i32* @TAG, align 4
  %78 = load i64, i64* %21, align 8
  %79 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %78)
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %81 = call i32 @session_data__free_unpacked(%struct.TYPE_16__* %80, i32* null)
  %82 = load i64, i64* @ESP_FAIL, align 8
  store i64 %82, i64* %9, align 8
  br label %112

83:                                               ; preds = %66
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  store i64 %86, i64* %87, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %89 = call i32 @session_data__free_unpacked(%struct.TYPE_16__* %88, i32* null)
  %90 = call i32 @session_data__get_packed_size(%struct.TYPE_16__* %20)
  %91 = load i32*, i32** %16, align 8
  store i32 %90, i32* %91, align 4
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @malloc(i32 %93)
  %95 = inttoptr i64 %94 to i32*
  %96 = load i32**, i32*** %15, align 8
  store i32* %95, i32** %96, align 8
  %97 = load i32**, i32*** %15, align 8
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %83
  %101 = load i32, i32* @TAG, align 4
  %102 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %103 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %103, i64* %9, align 8
  br label %112

104:                                              ; preds = %83
  %105 = load i32**, i32*** %15, align 8
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @session_data__pack(%struct.TYPE_16__* %20, i32* %106)
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %109 = load i64, i64* %12, align 8
  %110 = call i32 @sec1_session_setup_cleanup(%struct.TYPE_15__* %108, i64 %109, %struct.TYPE_16__* %20)
  %111 = load i64, i64* @ESP_OK, align 8
  store i64 %111, i64* %9, align 8
  br label %112

112:                                              ; preds = %104, %100, %76, %60, %50, %36, %26
  %113 = load i64, i64* %9, align 8
  ret i64 %113
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local %struct.TYPE_16__* @session_data__unpack(i32*, i32, i32*) #1

declare dso_local i32 @session_data__free_unpacked(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @session_data__init(%struct.TYPE_16__*) #1

declare dso_local i64 @sec1_session_setup(%struct.TYPE_15__*, i64, %struct.TYPE_16__*, %struct.TYPE_16__*, i32*) #1

declare dso_local i32 @session_data__get_packed_size(%struct.TYPE_16__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @session_data__pack(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @sec1_session_setup_cleanup(%struct.TYPE_15__*, i64, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
