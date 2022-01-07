; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_alloc_core.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_chunk.c_chunk_alloc_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@CHUNK_HOOKS_INITIALIZER = common dso_local global i32 0, align 4
@chunksize_mask = common dso_local global i64 0, align 8
@have_dss = common dso_local global i64 0, align 8
@dss_prec_primary = common dso_local global i64 0, align 8
@dss_prec_secondary = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_5__*, i8*, i64, i64, i32*, i32*, i64)* @chunk_alloc_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @chunk_alloc_core(%struct.TYPE_5__* %0, i8* %1, i64 %2, i64 %3, i32* %4, i32* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %18 = load i32, i32* @CHUNK_HOOKS_INITIALIZER, align 4
  store i32 %18, i32* %17, align 4
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64, i64* %11, align 8
  %24 = load i64, i64* @chunksize_mask, align 8
  %25 = and i64 %23, %24
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %12, align 8
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @chunksize_mask, align 8
  %35 = and i64 %33, %34
  %36 = icmp eq i64 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i8*, i8** %10, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %12, align 8
  %47 = load i32*, i32** %13, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = call i8* @chunk_recycle(%struct.TYPE_5__* %39, i32* %17, i32* %41, i32* %43, i32 0, i8* %44, i64 %45, i64 %46, i32* %47, i32* %48, i32 1)
  store i8* %49, i8** %16, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %7
  %52 = load i8*, i8** %16, align 8
  store i8* %52, i8** %8, align 8
  br label %102

53:                                               ; preds = %7
  %54 = load i64, i64* @have_dss, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %53
  %57 = load i64, i64* %15, align 8
  %58 = load i64, i64* @dss_prec_primary, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i8* @chunk_alloc_dss(%struct.TYPE_5__* %61, i8* %62, i64 %63, i64 %64, i32* %65, i32* %66)
  store i8* %67, i8** %16, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %71

69:                                               ; preds = %60
  %70 = load i8*, i8** %16, align 8
  store i8* %70, i8** %8, align 8
  br label %102

71:                                               ; preds = %60, %56, %53
  %72 = load i8*, i8** %10, align 8
  %73 = icmp eq i8* %72, null
  br i1 %73, label %74, label %83

74:                                               ; preds = %71
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i8* @chunk_alloc_mmap(i64 %75, i64 %76, i32* %77, i32* %78)
  store i8* %79, i8** %16, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i8*, i8** %16, align 8
  store i8* %82, i8** %8, align 8
  br label %102

83:                                               ; preds = %74, %71
  %84 = load i64, i64* @have_dss, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %83
  %87 = load i64, i64* %15, align 8
  %88 = load i64, i64* @dss_prec_secondary, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = call i8* @chunk_alloc_dss(%struct.TYPE_5__* %91, i8* %92, i64 %93, i64 %94, i32* %95, i32* %96)
  store i8* %97, i8** %16, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i8*, i8** %16, align 8
  store i8* %100, i8** %8, align 8
  br label %102

101:                                              ; preds = %90, %86, %83
  store i8* null, i8** %8, align 8
  br label %102

102:                                              ; preds = %101, %99, %81, %69, %51
  %103 = load i8*, i8** %8, align 8
  ret i8* %103
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @chunk_recycle(%struct.TYPE_5__*, i32*, i32*, i32*, i32, i8*, i64, i64, i32*, i32*, i32) #1

declare dso_local i8* @chunk_alloc_dss(%struct.TYPE_5__*, i8*, i64, i64, i32*, i32*) #1

declare dso_local i8* @chunk_alloc_mmap(i64, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
