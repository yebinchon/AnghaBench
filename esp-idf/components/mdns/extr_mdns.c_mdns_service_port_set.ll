; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_port_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_port_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32* }

@_mdns_server = common dso_local global %struct.TYPE_10__* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ACTION_SERVICE_PORT_SET = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdns_service_port_set(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %12
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @_str_null_or_empty(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @_str_null_or_empty(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25, %21, %17, %12, %3
  %29 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %29, i32* %4, align 4
  br label %72

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32* @_mdns_get_service_item(i8* %31, i8* %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %37, i32* %4, align 4
  br label %72

38:                                               ; preds = %30
  %39 = call i64 @malloc(i32 24)
  %40 = inttoptr i64 %39 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %40, %struct.TYPE_9__** %9, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = icmp ne %struct.TYPE_9__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  %45 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %45, i32* %4, align 4
  br label %72

46:                                               ; preds = %38
  %47 = load i32, i32* @ACTION_SERVICE_PORT_SET, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  store i32* %50, i32** %54, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  store i64 %55, i64* %59, align 8
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @xQueueSend(i32 %62, %struct.TYPE_9__** %9, i32 0)
  %64 = load i64, i64* @pdPASS, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %46
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %68 = call i32 @free(%struct.TYPE_9__* %67)
  %69 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %46
  %71 = load i32, i32* @ESP_OK, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %66, %43, %36, %28
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i32* @_mdns_get_service_item(i8*, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i64 @xQueueSend(i32, %struct.TYPE_9__**, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
