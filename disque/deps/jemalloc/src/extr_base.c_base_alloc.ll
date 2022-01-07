; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_base.c_base_alloc.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_base.c_base_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base_mtx = common dso_local global i32 0, align 4
@base_avail_szad = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@base_allocated = common dso_local global i64 0, align 8
@base_resident = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @base_alloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @CACHELINE_CEILING(i64 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @s2u(i64 %10)
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @extent_node_init(i32* %7, i32* null, i32* null, i64 %12, i32 0, i32 0)
  %14 = call i32 @malloc_mutex_lock(i32* @base_mtx)
  %15 = call i32* @extent_tree_szad_nsearch(i32* @base_avail_szad, i32* %7)
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @extent_tree_szad_remove(i32* @base_avail_szad, i32* %19)
  br label %24

21:                                               ; preds = %1
  %22 = load i64, i64* %4, align 8
  %23 = call i32* @base_chunk_alloc(i64 %22)
  store i32* %23, i32** %6, align 8
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32*, i32** %6, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i8* null, i8** %3, align 8
  br label %78

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = call i8* @extent_node_addr_get(i32* %29)
  store i8* %30, i8** %3, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @extent_node_size_get(i32* %31)
  %33 = load i64, i64* %4, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load i32*, i32** %6, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = ptrtoint i8* %37 to i64
  %39 = load i64, i64* %4, align 8
  %40 = add i64 %38, %39
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @extent_node_addr_set(i32* %36, i8* %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = call i64 @extent_node_size_get(i32* %44)
  %46 = load i64, i64* %4, align 8
  %47 = sub i64 %45, %46
  %48 = call i32 @extent_node_size_set(i32* %43, i64 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @extent_tree_szad_insert(i32* @base_avail_szad, i32* %49)
  br label %54

51:                                               ; preds = %28
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @base_node_dalloc(i32* %52)
  br label %54

54:                                               ; preds = %51, %35
  %55 = load i64, i64* @config_stats, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @base_allocated, align 8
  %60 = add i64 %59, %58
  store i64 %60, i64* @base_allocated, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = load i64, i64* %4, align 8
  %64 = add i64 %62, %63
  %65 = call i64 @PAGE_CEILING(i64 %64)
  %66 = load i8*, i8** %3, align 8
  %67 = ptrtoint i8* %66 to i64
  %68 = call i64 @PAGE_CEILING(i64 %67)
  %69 = sub nsw i64 %65, %68
  %70 = load i32, i32* @base_resident, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %71, %69
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* @base_resident, align 4
  br label %74

74:                                               ; preds = %57, %54
  %75 = load i8*, i8** %3, align 8
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @JEMALLOC_VALGRIND_MAKE_MEM_DEFINED(i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %74, %27
  %79 = call i32 @malloc_mutex_unlock(i32* @base_mtx)
  %80 = load i8*, i8** %3, align 8
  ret i8* %80
}

declare dso_local i64 @CACHELINE_CEILING(i64) #1

declare dso_local i64 @s2u(i64) #1

declare dso_local i32 @extent_node_init(i32*, i32*, i32*, i64, i32, i32) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32* @extent_tree_szad_nsearch(i32*, i32*) #1

declare dso_local i32 @extent_tree_szad_remove(i32*, i32*) #1

declare dso_local i32* @base_chunk_alloc(i64) #1

declare dso_local i8* @extent_node_addr_get(i32*) #1

declare dso_local i64 @extent_node_size_get(i32*) #1

declare dso_local i32 @extent_node_addr_set(i32*, i8*) #1

declare dso_local i32 @extent_node_size_set(i32*, i64) #1

declare dso_local i32 @extent_tree_szad_insert(i32*, i32*) #1

declare dso_local i32 @base_node_dalloc(i32*) #1

declare dso_local i64 @PAGE_CEILING(i64) #1

declare dso_local i32 @JEMALLOC_VALGRIND_MAKE_MEM_DEFINED(i8*, i64) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
