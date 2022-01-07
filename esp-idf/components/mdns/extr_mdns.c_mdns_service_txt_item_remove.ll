; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_txt_item_remove.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_txt_item_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32* }

@_mdns_server = common dso_local global %struct.TYPE_11__* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ACTION_SERVICE_TXT_DEL = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdns_service_txt_item_remove(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** @_mdns_server, align 8
  %11 = icmp ne %struct.TYPE_11__* %10, null
  br i1 %11, label %12, label %29

12:                                               ; preds = %3
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** @_mdns_server, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @_str_null_or_empty(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @_str_null_or_empty(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i8*, i8** %7, align 8
  %27 = call i64 @_str_null_or_empty(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %21, %17, %12, %3
  %30 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %30, i32* %4, align 4
  br label %91

31:                                               ; preds = %25
  %32 = load i8*, i8** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = call i32* @_mdns_get_service_item(i8* %32, i8* %33)
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %38, i32* %4, align 4
  br label %91

39:                                               ; preds = %31
  %40 = call i64 @malloc(i32 24)
  %41 = inttoptr i64 %40 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %9, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  %46 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %46, i32* %4, align 4
  br label %91

47:                                               ; preds = %39
  %48 = load i32, i32* @ACTION_SERVICE_TXT_DEL, align 4
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32* %51, i32** %55, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call %struct.TYPE_10__* @strdup(i8* %56)
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  store %struct.TYPE_10__* %57, %struct.TYPE_10__** %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = icmp ne %struct.TYPE_10__* %66, null
  br i1 %67, label %72, label %68

68:                                               ; preds = %47
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %70 = call i32 @free(%struct.TYPE_10__* %69)
  %71 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %71, i32* %4, align 4
  br label %91

72:                                               ; preds = %47
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** @_mdns_server, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @xQueueSend(i32 %75, %struct.TYPE_10__** %9, i32 0)
  %77 = load i64, i64* @pdPASS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %89

79:                                               ; preds = %72
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = call i32 @free(%struct.TYPE_10__* %84)
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %87 = call i32 @free(%struct.TYPE_10__* %86)
  %88 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %88, i32* %4, align 4
  br label %91

89:                                               ; preds = %72
  %90 = load i32, i32* @ESP_OK, align 4
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %89, %79, %68, %44, %37, %29
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i32* @_mdns_get_service_item(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local %struct.TYPE_10__* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

declare dso_local i64 @xQueueSend(i32, %struct.TYPE_10__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
