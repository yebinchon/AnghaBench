; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_alloc_cache.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_alloc_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@chunksize_mask = common dso_local global i64 0, align 8
@config_valgrind = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @chunk_alloc_cache(%struct.TYPE_4__* %0, i32* %1, i8* %2, i64 %3, i64 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %18 = load i64, i64* %12, align 8
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* @chunksize_mask, align 8
  %24 = and i64 %22, %23
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* %13, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @chunksize_mask, align 8
  %34 = and i64 %32, %33
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  store i32 1, i32* %17, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %11, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i8* @chunk_recycle(%struct.TYPE_4__* %38, i32* %39, i32* %41, i32* %43, i32 1, i8* %44, i64 %45, i64 %46, i32* %47, i32* %17, i32 %48)
  store i8* %49, i8** %16, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %7
  store i8* null, i8** %8, align 8
  br label %64

53:                                               ; preds = %7
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @assert(i32 %54)
  %56 = load i64, i64* @config_valgrind, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i8*, i8** %16, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(i8* %59, i64 %60)
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i8*, i8** %16, align 8
  store i8* %63, i8** %8, align 8
  br label %64

64:                                               ; preds = %62, %52
  %65 = load i8*, i8** %8, align 8
  ret i8* %65
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @chunk_recycle(%struct.TYPE_4__*, i32*, i32*, i32*, i32, i8*, i64, i64, i32*, i32*, i32) #1

declare dso_local i32 @JEMALLOC_VALGRIND_MAKE_MEM_UNDEFINED(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
