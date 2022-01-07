; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk_mmap.c_chunk_alloc_mmap.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk_mmap.c_chunk_alloc_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chunksize_mask = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @chunk_alloc_mmap(i64 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @chunksize_mask, align 8
  %18 = and i64 %16, %17
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = call i8* @pages_map(i32* null, i64 %22)
  store i8* %23, i8** %10, align 8
  %24 = load i8*, i8** %10, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %58

27:                                               ; preds = %4
  %28 = load i8*, i8** %10, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @ALIGNMENT_ADDR2OFFSET(i8* %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i8*, i8** %10, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @pages_unmap(i8* %34, i64 %35)
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i8* @chunk_alloc_mmap_slow(i64 %37, i64 %38, i32* %39, i32* %40)
  store i8* %41, i8** %5, align 8
  br label %58

42:                                               ; preds = %27
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %8, align 8
  store i32 1, i32* %47, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %56, label %51

51:                                               ; preds = %42
  %52 = load i8*, i8** %10, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @pages_decommit(i8* %52, i64 %53)
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %42
  %57 = load i8*, i8** %10, align 8
  store i8* %57, i8** %5, align 8
  br label %58

58:                                               ; preds = %56, %33, %26
  %59 = load i8*, i8** %5, align 8
  ret i8* %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @pages_map(i32*, i64) #1

declare dso_local i64 @ALIGNMENT_ADDR2OFFSET(i8*, i64) #1

declare dso_local i32 @pages_unmap(i8*, i64) #1

declare dso_local i8* @chunk_alloc_mmap_slow(i64, i64, i32*, i32*) #1

declare dso_local i32 @pages_decommit(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
