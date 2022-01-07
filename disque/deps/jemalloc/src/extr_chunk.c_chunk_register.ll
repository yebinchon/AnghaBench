; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_register.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chunks_rtree = common dso_local global i32 0, align 4
@config_prof = common dso_local global i64 0, align 8
@opt_prof = common dso_local global i64 0, align 8
@chunksize = common dso_local global i64 0, align 8
@curchunks = common dso_local global i32 0, align 4
@highchunks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chunk_register(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call i8* @extent_node_addr_get(i32* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = ptrtoint i8* %16 to i64
  %18 = load i32*, i32** %5, align 8
  %19 = call i64 @rtree_set(i32* @chunks_rtree, i64 %17, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %67

22:                                               ; preds = %2
  %23 = load i64, i64* @config_prof, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %22
  %26 = load i64, i64* @opt_prof, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %66

28:                                               ; preds = %25
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @extent_node_size_get(i32* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %38

34:                                               ; preds = %28
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* @chunksize, align 8
  %37 = udiv i64 %35, %36
  br label %38

38:                                               ; preds = %34, %33
  %39 = phi i64 [ 1, %33 ], [ %37, %34 ]
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @atomic_add_z(i32* @curchunks, i64 %40)
  store i64 %41, i64* %8, align 8
  %42 = call i64 @atomic_read_z(i32* @highchunks)
  store i64 %42, i64* %9, align 8
  br label %43

43:                                               ; preds = %54, %38
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = icmp ugt i64 %44, %45
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %8, align 8
  %50 = call i64 @atomic_cas_z(i32* @highchunks, i64 %48, i64 %49)
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %43
  %53 = phi i1 [ false, %43 ], [ %51, %47 ]
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = call i64 @atomic_read_z(i32* @highchunks)
  store i64 %55, i64* %9, align 8
  br label %43

56:                                               ; preds = %52
  %57 = load i64, i64* %8, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ugt i64 %57, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %56
  %61 = call i64 (...) @prof_gdump_get_unlocked()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (...) @prof_gdump()
  br label %65

65:                                               ; preds = %63, %60, %56
  br label %66

66:                                               ; preds = %65, %25, %22
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @extent_node_addr_get(i32*) #1

declare dso_local i64 @rtree_set(i32*, i64, i32*) #1

declare dso_local i64 @extent_node_size_get(i32*) #1

declare dso_local i64 @atomic_add_z(i32*, i64) #1

declare dso_local i64 @atomic_read_z(i32*) #1

declare dso_local i64 @atomic_cas_z(i32*, i64, i64) #1

declare dso_local i64 @prof_gdump_get_unlocked(...) #1

declare dso_local i32 @prof_gdump(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
