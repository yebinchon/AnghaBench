; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_palloc.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_palloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }

@chunksize = common dso_local global i64 0, align 8
@CACHELINE = common dso_local global i32 0, align 4
@ql_link = common dso_local global i32 0, align 4
@config_fill = common dso_local global i64 0, align 8
@opt_zero = common dso_local global i32 0, align 4
@opt_junk_alloc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @huge_palloc(i32* %0, %struct.TYPE_9__* %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = call i64 @sa2u(i64 %18, i64 %19)
  store i64 %20, i64* %15, align 8
  %21 = load i64, i64* %15, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store i8* null, i8** %7, align 8
  br label %129

27:                                               ; preds = %6
  %28 = load i64, i64* %15, align 8
  %29 = load i64, i64* @chunksize, align 8
  %30 = icmp uge i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @CACHELINE_CEILING(i32 4)
  %35 = load i32, i32* @CACHELINE, align 4
  %36 = load i32*, i32** %13, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = call i32* @ipallocztm(i32* %33, i32 %34, i32 %35, i32 0, i32* %36, i32 1, %struct.TYPE_9__* %37)
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  store i8* null, i8** %7, align 8
  br label %129

42:                                               ; preds = %27
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %17, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = call %struct.TYPE_9__* @arena_choose(i32* %44, %struct.TYPE_9__* %45)
  store %struct.TYPE_9__* %46, %struct.TYPE_9__** %9, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %48 = icmp eq %struct.TYPE_9__* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %42
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i8* @arena_chunk_alloc_huge(%struct.TYPE_9__* %53, i64 %54, i64 %55, i32* %17)
  store i8* %56, i8** %14, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52, %42
  %59 = load i32*, i32** %8, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i32 @idalloctm(i32* %59, i32* %60, i32* %61, i32 1)
  store i8* null, i8** %7, align 8
  br label %129

63:                                               ; preds = %52
  %64 = load i32*, i32** %16, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %66 = load i8*, i8** %14, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @extent_node_init(i32* %64, %struct.TYPE_9__* %65, i8* %66, i64 %67, i32 %68, i32 1)
  %70 = load i8*, i8** %14, align 8
  %71 = load i32*, i32** %16, align 8
  %72 = call i64 @huge_node_set(i8* %70, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %63
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = load i8*, i8** %14, align 8
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @arena_chunk_dalloc_huge(%struct.TYPE_9__* %75, i8* %76, i64 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = load i32*, i32** %13, align 8
  %82 = call i32 @idalloctm(i32* %79, i32* %80, i32* %81, i32 1)
  store i8* null, i8** %7, align 8
  br label %129

83:                                               ; preds = %63
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = call i32 @malloc_mutex_lock(i32* %85)
  %87 = load i32*, i32** %16, align 8
  %88 = load i32, i32* @ql_link, align 4
  %89 = call i32 @ql_elm_new(i32* %87, i32 %88)
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32*, i32** %16, align 8
  %93 = load i32, i32* @ql_link, align 4
  %94 = call i32 @ql_tail_insert(i32* %91, i32* %92, i32 %93)
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = call i32 @malloc_mutex_unlock(i32* %96)
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %83
  %101 = load i64, i64* @config_fill, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %100
  %104 = load i32, i32* @opt_zero, align 4
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %103, %83
  %108 = load i32, i32* %17, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %107
  %111 = load i8*, i8** %14, align 8
  %112 = load i64, i64* %10, align 8
  %113 = call i32 @memset(i8* %111, i32 0, i64 %112)
  br label %114

114:                                              ; preds = %110, %107
  br label %127

115:                                              ; preds = %103, %100
  %116 = load i64, i64* @config_fill, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %115
  %119 = load i32, i32* @opt_junk_alloc, align 4
  %120 = call i64 @unlikely(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %118
  %123 = load i8*, i8** %14, align 8
  %124 = load i64, i64* %10, align 8
  %125 = call i32 @memset(i8* %123, i32 165, i64 %124)
  br label %126

126:                                              ; preds = %122, %118, %115
  br label %127

127:                                              ; preds = %126, %114
  %128 = load i8*, i8** %14, align 8
  store i8* %128, i8** %7, align 8
  br label %129

129:                                              ; preds = %127, %74, %58, %41, %26
  %130 = load i8*, i8** %7, align 8
  ret i8* %130
}

declare dso_local i64 @sa2u(i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @ipallocztm(i32*, i32, i32, i32, i32*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @CACHELINE_CEILING(i32) #1

declare dso_local %struct.TYPE_9__* @arena_choose(i32*, %struct.TYPE_9__*) #1

declare dso_local i8* @arena_chunk_alloc_huge(%struct.TYPE_9__*, i64, i64, i32*) #1

declare dso_local i32 @idalloctm(i32*, i32*, i32*, i32) #1

declare dso_local i32 @extent_node_init(i32*, %struct.TYPE_9__*, i8*, i64, i32, i32) #1

declare dso_local i64 @huge_node_set(i8*, i32*) #1

declare dso_local i32 @arena_chunk_dalloc_huge(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @ql_elm_new(i32*, i32) #1

declare dso_local i32 @ql_tail_insert(i32*, i32*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
