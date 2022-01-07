; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_hash_map.c_hash_map_set.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/common/osi/extr_hash_map.c_hash_map_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (i8*)*, i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, i8*, i8* }

@bucket_free_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hash_map_set(%struct.TYPE_10__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i64 (i8*)*, i64 (i8*)** %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 %22(i8* %23)
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = urem i64 %24, %27
  store i64 %28, i64* %8, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %3
  %38 = load i32, i32* @bucket_free_, align 4
  %39 = call i32* @list_new_internal(i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = load i64, i64* %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32* %39, i32** %45, align 8
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %100

55:                                               ; preds = %37
  br label %56

56:                                               ; preds = %55, %3
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %9, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = call %struct.TYPE_11__* @find_bucket_entry_(i32* %64, i8* %65)
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %10, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %69, label %77

69:                                               ; preds = %56
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %72 = call i32 @list_remove(i32* %70, %struct.TYPE_11__* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp eq i32 %73, 1
  %75 = zext i1 %74 to i32
  %76 = call i32 @assert(i32 %75)
  br label %82

77:                                               ; preds = %56
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %77, %69
  %83 = call %struct.TYPE_11__* @osi_calloc(i32 24)
  store %struct.TYPE_11__* %83, %struct.TYPE_11__** %10, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %85 = icmp eq %struct.TYPE_11__* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %4, align 4
  br label %100

87:                                               ; preds = %82
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store %struct.TYPE_10__* %94, %struct.TYPE_10__** %96, align 8
  %97 = load i32*, i32** %9, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %99 = call i32 @list_append(i32* %97, %struct.TYPE_11__* %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %87, %86, %54
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @list_new_internal(i32) #1

declare dso_local %struct.TYPE_11__* @find_bucket_entry_(i32*, i8*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_11__* @osi_calloc(i32) #1

declare dso_local i32 @list_append(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
