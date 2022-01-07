; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk_mmap.c_chunk_alloc_mmap_slow.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk_mmap.c_chunk_alloc_mmap_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64, i64, i32*, i32*)* @chunk_alloc_mmap_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chunk_alloc_mmap_slow(i64 %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add i64 %14, %15
  %17 = load i64, i64* @PAGE, align 8
  %18 = sub i64 %16, %17
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i8* null, i8** %5, align 8
  br label %62

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i64, i64* %11, align 8
  %26 = call i8* @pages_map(i32* null, i64 %25)
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i8* null, i8** %5, align 8
  br label %62

30:                                               ; preds = %24
  %31 = load i8*, i8** %12, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @ALIGNMENT_CEILING(i64 %32, i64 %33)
  %35 = load i8*, i8** %12, align 8
  %36 = ptrtoint i8* %35 to i64
  %37 = sub i64 %34, %36
  store i64 %37, i64* %13, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i8* @pages_trim(i8* %38, i64 %39, i64 %40, i64 %41)
  store i8* %42, i8** %10, align 8
  br label %43

43:                                               ; preds = %30
  %44 = load i8*, i8** %10, align 8
  %45 = icmp eq i8* %44, null
  br i1 %45, label %24, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %10, align 8
  %48 = icmp ne i8* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i32*, i32** %8, align 8
  store i32 1, i32* %51, align 4
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %46
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @pages_decommit(i8* %56, i64 %57)
  %59 = load i32*, i32** %9, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %55, %46
  %61 = load i8*, i8** %10, align 8
  store i8* %61, i8** %5, align 8
  br label %62

62:                                               ; preds = %60, %29, %22
  %63 = load i8*, i8** %5, align 8
  ret i8* %63
}

declare dso_local i8* @pages_map(i32*, i64) #1

declare dso_local i64 @ALIGNMENT_CEILING(i64, i64) #1

declare dso_local i8* @pages_trim(i8*, i64, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pages_decommit(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
