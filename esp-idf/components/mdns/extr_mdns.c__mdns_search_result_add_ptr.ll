; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_result_add_ptr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_result_add_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_8__* }

@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i8*, i64, i64)* @_mdns_search_result_add_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @_mdns_search_result_add_ptr(%struct.TYPE_7__* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %10, align 8
  br label %14

14:                                               ; preds = %44, %4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %48

17:                                               ; preds = %14
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @_str_null_or_empty(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @strcasecmp(i8* %36, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %43, %struct.TYPE_8__** %5, align 8
  br label %103

44:                                               ; preds = %35, %29, %23, %17
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %10, align 8
  br label %14

48:                                               ; preds = %14
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %102

61:                                               ; preds = %53, %48
  %62 = call i64 @malloc(i32 32)
  %63 = inttoptr i64 %62 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %63, %struct.TYPE_8__** %10, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %65 = icmp ne %struct.TYPE_8__* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %103

68:                                               ; preds = %61
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %70 = call i32 @memset(%struct.TYPE_8__* %69, i32 0, i32 32)
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strdup(i8* %71)
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %81 = call i32 @free(%struct.TYPE_8__* %80)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %103

82:                                               ; preds = %68
  %83 = load i64, i64* %8, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 2
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %93, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store %struct.TYPE_8__* %94, %struct.TYPE_8__** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %101, %struct.TYPE_8__** %5, align 8
  br label %103

102:                                              ; preds = %53
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %5, align 8
  br label %103

103:                                              ; preds = %102, %82, %79, %66, %42
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  ret %struct.TYPE_8__* %104
}

declare dso_local i32 @_str_null_or_empty(i32) #1

declare dso_local i32 @strcasecmp(i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
