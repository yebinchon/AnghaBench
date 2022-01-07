; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_get_info_json.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wifi_provisioning/src/extr_manager.c_wifi_prov_get_info_json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64 }

@prov_ctx = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"prov\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ver\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"no_sec\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"no_pop\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"wifi_scan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @wifi_prov_get_info_json to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @wifi_prov_get_info_json() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = call i32* @cJSON_Duplicate(i64 %11, i32 1)
  br label %15

13:                                               ; preds = %0
  %14 = call i32* (...) @cJSON_CreateObject()
  br label %15

15:                                               ; preds = %13, %8
  %16 = phi i32* [ %12, %8 ], [ %14, %13 ]
  store i32* %16, i32** %1, align 8
  %17 = call i32* (...) @cJSON_CreateObject()
  store i32* %17, i32** %2, align 8
  %18 = call i32* (...) @cJSON_CreateArray()
  store i32* %18, i32** %3, align 8
  %19 = load i32*, i32** %1, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = call i32 @cJSON_AddItemToObject(i32* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @cJSON_AddStringToObject(i32* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %2, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @cJSON_AddItemToObject(i32* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %15
  %38 = load i32*, i32** %3, align 8
  %39 = call i32 @cJSON_CreateString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @cJSON_AddItemToArray(i32* %38, i32 %39)
  br label %53

41:                                               ; preds = %15
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** @prov_ctx, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @cJSON_CreateString(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %51 = call i32 @cJSON_AddItemToArray(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %41
  br label %53

53:                                               ; preds = %52, %37
  %54 = load i32*, i32** %3, align 8
  %55 = call i32 @cJSON_CreateString(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 @cJSON_AddItemToArray(i32* %54, i32 %55)
  %57 = load i32*, i32** %1, align 8
  ret i32* %57
}

declare dso_local i32* @cJSON_Duplicate(i64, i32) #1

declare dso_local i32* @cJSON_CreateObject(...) #1

declare dso_local i32* @cJSON_CreateArray(...) #1

declare dso_local i32 @cJSON_AddItemToObject(i32*, i8*, i32*) #1

declare dso_local i32 @cJSON_AddStringToObject(i32*, i8*, i32) #1

declare dso_local i32 @cJSON_AddItemToArray(i32*, i32) #1

declare dso_local i32 @cJSON_CreateString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
