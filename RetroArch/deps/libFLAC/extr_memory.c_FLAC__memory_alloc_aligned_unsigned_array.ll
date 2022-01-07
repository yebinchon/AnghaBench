; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_memory.c_FLAC__memory_alloc_aligned_unsigned_array.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libFLAC/extr_memory.c_FLAC__memory_alloc_aligned_unsigned_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32* }

@SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FLAC__memory_alloc_aligned_unsigned_array(i64 %0, i32** %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %union.anon, align 8
  store i64 %0, i64* %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32** %2, i32*** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ugt i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @FLAC__ASSERT(i32 %12)
  %14 = load i32**, i32*** %6, align 8
  %15 = icmp ne i32** null, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @FLAC__ASSERT(i32 %16)
  %18 = load i32**, i32*** %7, align 8
  %19 = icmp ne i32** null, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @FLAC__ASSERT(i32 %20)
  %22 = load i32**, i32*** %6, align 8
  %23 = load i32**, i32*** %7, align 8
  %24 = icmp ne i32** %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @FLAC__ASSERT(i32 %25)
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @SIZE_MAX, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 4
  %31 = icmp ugt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

33:                                               ; preds = %3
  %34 = load i64, i64* %5, align 8
  %35 = mul i64 4, %34
  %36 = trunc i64 %35 to i32
  %37 = bitcast %union.anon* %9 to i8**
  %38 = call i64 @FLAC__memory_alloc_aligned(i32 %36, i8** %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %8, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = icmp eq i32* null, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %57

43:                                               ; preds = %33
  %44 = load i32**, i32*** %6, align 8
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32**, i32*** %6, align 8
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @free(i32* %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32*, i32** %8, align 8
  %53 = load i32**, i32*** %6, align 8
  store i32* %52, i32** %53, align 8
  %54 = bitcast %union.anon* %9 to i32**
  %55 = load i32*, i32** %54, align 8
  %56 = load i32**, i32*** %7, align 8
  store i32* %55, i32** %56, align 8
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %42, %32
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @FLAC__ASSERT(i32) #1

declare dso_local i64 @FLAC__memory_alloc_aligned(i32, i8**) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
