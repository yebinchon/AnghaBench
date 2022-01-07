; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_base.c_base_chunk_alloc.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_base.c_base_chunk_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_mapped = common dso_local global i64 0, align 8
@config_stats = common dso_local global i64 0, align 8
@base_allocated = common dso_local global i64 0, align 8
@base_resident = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64)* @base_chunk_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @base_chunk_alloc(i64 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = call i32* (...) @base_node_try_alloc()
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i64 @CACHELINE_CEILING(i32 4)
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i64 [ %16, %15 ], [ 0, %17 ]
  store i64 %19, i64* %6, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add i64 %20, %21
  %23 = call i64 @CHUNK_CEILING(i64 %22)
  store i64 %23, i64* %5, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i8* @chunk_alloc_base(i64 %24)
  store i8* %25, i8** %7, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load i32*, i32** %4, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @base_node_dalloc(i32* %32)
  br label %34

34:                                               ; preds = %31, %28
  store i32* null, i32** %2, align 8
  br label %71

35:                                               ; preds = %18
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @base_mapped, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* @base_mapped, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load i8*, i8** %7, align 8
  %43 = bitcast i8* %42 to i32*
  store i32* %43, i32** %4, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = ptrtoint i8* %44 to i64
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %45, %46
  %48 = inttoptr i64 %47 to i8*
  store i8* %48, i8** %7, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = sub i64 %50, %49
  store i64 %51, i64* %5, align 8
  %52 = load i64, i64* @config_stats, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %41
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @base_allocated, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* @base_allocated, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @PAGE_CEILING(i64 %58)
  %60 = load i32, i32* @base_resident, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* @base_resident, align 4
  br label %64

64:                                               ; preds = %54, %41
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i32*, i32** %4, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @extent_node_init(i32* %66, i32* null, i8* %67, i64 %68, i32 1, i32 1)
  %70 = load i32*, i32** %4, align 8
  store i32* %70, i32** %2, align 8
  br label %71

71:                                               ; preds = %65, %34
  %72 = load i32*, i32** %2, align 8
  ret i32* %72
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @base_node_try_alloc(...) #1

declare dso_local i64 @CACHELINE_CEILING(i32) #1

declare dso_local i64 @CHUNK_CEILING(i64) #1

declare dso_local i8* @chunk_alloc_base(i64) #1

declare dso_local i32 @base_node_dalloc(i32*) #1

declare dso_local i64 @PAGE_CEILING(i64) #1

declare dso_local i32 @extent_node_init(i32*, i32*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
