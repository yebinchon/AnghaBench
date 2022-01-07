; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_txt_item_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_txt_item_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__*, %struct.TYPE_9__*, i32* }

@_mdns_server = common dso_local global %struct.TYPE_10__* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ACTION_SERVICE_TXT_SET = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdns_service_txt_item_set(i8* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %14
  %20 = load i8*, i8** %6, align 8
  %21 = call i64 @_str_null_or_empty(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = call i64 @_str_null_or_empty(i8* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @_str_null_or_empty(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i8*, i8** %9, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %31, %27, %23, %19, %14, %4
  %35 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %35, i32* %5, align 4
  br label %127

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32* @_mdns_get_service_item(i8* %37, i8* %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %44, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %43, i32* %5, align 4
  br label %127

44:                                               ; preds = %36
  %45 = call i64 @malloc(i32 32)
  %46 = inttoptr i64 %45 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %11, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %48 = icmp ne %struct.TYPE_9__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  %51 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %51, i32* %5, align 4
  br label %127

52:                                               ; preds = %44
  %53 = load i32, i32* @ACTION_SERVICE_TXT_SET, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 2
  store i32* %56, i32** %60, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = call i8* @strdup(i8* %61)
  %63 = bitcast i8* %62 to %struct.TYPE_9__*
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store %struct.TYPE_9__* %63, %struct.TYPE_9__** %67, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = icmp ne %struct.TYPE_9__* %72, null
  br i1 %73, label %78, label %74

74:                                               ; preds = %52
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %76 = call i32 @free(%struct.TYPE_9__* %75)
  %77 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %77, i32* %5, align 4
  br label %127

78:                                               ; preds = %52
  %79 = load i8*, i8** %9, align 8
  %80 = call i8* @strdup(i8* %79)
  %81 = bitcast i8* %80 to %struct.TYPE_9__*
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store %struct.TYPE_9__* %81, %struct.TYPE_9__** %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = icmp ne %struct.TYPE_9__* %90, null
  br i1 %91, label %102, label %92

92:                                               ; preds = %78
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = call i32 @free(%struct.TYPE_9__* %97)
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %100 = call i32 @free(%struct.TYPE_9__* %99)
  %101 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %101, i32* %5, align 4
  br label %127

102:                                              ; preds = %78
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @xQueueSend(i32 %105, %struct.TYPE_9__** %11, i32 0)
  %107 = load i64, i64* @pdPASS, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %125

109:                                              ; preds = %102
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = call i32 @free(%struct.TYPE_9__* %114)
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = call i32 @free(%struct.TYPE_9__* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %123 = call i32 @free(%struct.TYPE_9__* %122)
  %124 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %124, i32* %5, align 4
  br label %127

125:                                              ; preds = %102
  %126 = load i32, i32* @ESP_OK, align 4
  store i32 %126, i32* %5, align 4
  br label %127

127:                                              ; preds = %125, %109, %92, %74, %49, %42, %34
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i32* @_mdns_get_service_item(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i64 @xQueueSend(i32, %struct.TYPE_9__**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
