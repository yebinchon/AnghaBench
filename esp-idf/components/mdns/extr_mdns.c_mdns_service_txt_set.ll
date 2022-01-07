; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_txt_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_txt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, i32* }

@_mdns_server = common dso_local global %struct.TYPE_10__* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@ACTION_SERVICE_TXT_REPLACE = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdns_service_txt_set(i8* %0, i8* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %14 = icmp ne %struct.TYPE_10__* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i8*, i8** %6, align 8
  %22 = call i64 @_str_null_or_empty(i8* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = call i64 @_str_null_or_empty(i8* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32*, i32** %8, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %24, %20, %15, %4
  %35 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %35, i32* %5, align 4
  br label %94

36:                                               ; preds = %31, %28
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
  br label %94

44:                                               ; preds = %36
  store i32* null, i32** %11, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load i64, i64* %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32* @_mdns_allocate_txt(i64 %48, i32* %49)
  store i32* %50, i32** %11, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %54, i32* %5, align 4
  br label %94

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %44
  %57 = call i64 @malloc(i32 24)
  %58 = inttoptr i64 %57 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %58, %struct.TYPE_9__** %12, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %60 = icmp ne %struct.TYPE_9__* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  %63 = load i32*, i32** %11, align 8
  %64 = call i32 @_mdns_free_linked_txt(i32* %63)
  %65 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %65, i32* %5, align 4
  br label %94

66:                                               ; preds = %56
  %67 = load i32, i32* @ACTION_SERVICE_TXT_REPLACE, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  store i32* %70, i32** %74, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32* %75, i32** %79, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** @_mdns_server, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @xQueueSend(i32 %82, %struct.TYPE_9__** %12, i32 0)
  %84 = load i64, i64* @pdPASS, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %66
  %87 = load i32*, i32** %11, align 8
  %88 = call i32 @_mdns_free_linked_txt(i32* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %90 = call i32 @free(%struct.TYPE_9__* %89)
  %91 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %91, i32* %5, align 4
  br label %94

92:                                               ; preds = %66
  %93 = load i32, i32* @ESP_OK, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %92, %86, %61, %53, %42, %34
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i32* @_mdns_get_service_item(i8*, i8*) #1

declare dso_local i32* @_mdns_allocate_txt(i64, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_mdns_free_linked_txt(i32*) #1

declare dso_local i64 @xQueueSend(i32, %struct.TYPE_9__**, i32) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
