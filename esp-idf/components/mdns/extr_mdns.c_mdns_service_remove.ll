; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_remove.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@_mdns_server = common dso_local global %struct.TYPE_10__* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ACTION_SERVICE_DEL = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdns_service_remove(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %9 = icmp ne %struct.TYPE_10__* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %10
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @_str_null_or_empty(i8* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call i64 @_str_null_or_empty(i8* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15, %10, %2
  %24 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = call i32* @_mdns_get_service_item(i8* %26, i8* %27)
  store i32* %28, i32** %6, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %32, i32* %3, align 4
  br label %62

33:                                               ; preds = %25
  %34 = call i64 @malloc(i32 16)
  %35 = inttoptr i64 %34 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %7, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = icmp ne %struct.TYPE_9__* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  %40 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %33
  %42 = load i32, i32* @ACTION_SERVICE_DEL, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32* %45, i32** %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @xQueueSend(i32 %52, %struct.TYPE_9__** %7, i32 0)
  %54 = load i64, i64* @pdPASS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = call i32 @free(%struct.TYPE_9__* %57)
  %59 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %59, i32* %3, align 4
  br label %62

60:                                               ; preds = %41
  %61 = load i32, i32* @ESP_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %56, %38, %31, %23
  %63 = load i32, i32* %3, align 4
  ret i32 %63
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
