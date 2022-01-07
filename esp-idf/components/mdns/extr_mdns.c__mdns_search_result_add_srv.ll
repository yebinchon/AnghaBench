; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_result_add_srv.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_result_add_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__*, i32, i32 }

@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8*, i32, i64, i64)* @_mdns_search_result_add_srv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_search_result_add_srv(%struct.TYPE_6__* %0, i8* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %11, align 8
  br label %15

15:                                               ; preds = %44, %5
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %17 = icmp ne %struct.TYPE_7__* %16, null
  br i1 %17, label %18, label %48

18:                                               ; preds = %15
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %18
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %10, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @_str_null_or_empty(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %30
  %37 = load i8*, i8** %7, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @strcasecmp(i8* %37, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %36
  br label %104

44:                                               ; preds = %36, %30, %24, %18
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %11, align 8
  br label %15

48:                                               ; preds = %15
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %48
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %56, %59
  br i1 %60, label %61, label %104

61:                                               ; preds = %53, %48
  %62 = call i64 @malloc(i32 32)
  %63 = inttoptr i64 %62 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %11, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %65 = icmp ne %struct.TYPE_7__* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  br label %104

68:                                               ; preds = %61
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %70 = call i32 @memset(%struct.TYPE_7__* %69, i32 0, i32 32)
  %71 = load i8*, i8** %7, align 8
  %72 = call i32 @strdup(i8* %71)
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %81 = call i32 @free(%struct.TYPE_7__* %80)
  br label %104

82:                                               ; preds = %68
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  store i64 %89, i64* %91, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store %struct.TYPE_7__* %94, %struct.TYPE_7__** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  store %struct.TYPE_7__* %97, %struct.TYPE_7__** %99, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = add nsw i64 %102, 1
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %43, %66, %79, %82, %53
  ret void
}

declare dso_local i32 @_str_null_or_empty(i32) #1

declare dso_local i32 @strcasecmp(i8*, i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
