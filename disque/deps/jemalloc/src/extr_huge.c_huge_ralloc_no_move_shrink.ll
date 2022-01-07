; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc_no_move_shrink.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc_no_move_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i64 (i8*, i64, i64, i64, i32, i32)* }

@config_fill = common dso_local global i64 0, align 8
@opt_junk_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64)* @huge_ralloc_no_move_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huge_ralloc_no_move_shrink(i8* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca %struct.TYPE_9__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__, align 8
  %15 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = call i32* @huge_node_get(i8* %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call %struct.TYPE_10__* @extent_node_arena_get(i32* %18)
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @extent_node_zeroed_get(i32* %20)
  store i32 %21, i32* %12, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %23 = call i64 (i8*, i64, i64, i64, i32, i32)* @chunk_hooks_get(%struct.TYPE_10__* %22)
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  store i64 (i8*, i64, i64, i64, i32, i32)* %23, i64 (i8*, i64, i64, i64, i32, i32)** %24, align 8
  %25 = bitcast %struct.TYPE_9__* %10 to i8*
  %26 = bitcast %struct.TYPE_9__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ugt i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @CHUNK_CEILING(i64 %32)
  %34 = load i64, i64* %7, align 8
  %35 = call i64 @CHUNK_CEILING(i64 %34)
  %36 = sub i64 %33, %35
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %3
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %41 = load i64 (i8*, i64, i64, i64, i32, i32)*, i64 (i8*, i64, i64, i64, i32, i32)** %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i64 @CHUNK_CEILING(i64 %43)
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @CHUNK_CEILING(i64 %45)
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 %41(i8* %42, i64 %44, i64 %46, i64 %47, i32 1, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %116

54:                                               ; preds = %39, %3
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %7, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %96

58:                                               ; preds = %54
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* @config_fill, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load i32, i32* @opt_junk_free, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %64
  %69 = load i8*, i8** %5, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %70, %71
  %73 = inttoptr i64 %72 to i8*
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @huge_dalloc_junk(i8* %73, i64 %74)
  store i32 0, i32* %13, align 4
  br label %95

76:                                               ; preds = %64, %58
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = load i64, i64* %7, align 8
  %81 = add i64 %79, %80
  %82 = call i32 @CHUNK_ADDR2BASE(i64 %81)
  %83 = load i64, i64* %6, align 8
  %84 = call i64 @CHUNK_CEILING(i64 %83)
  %85 = load i8*, i8** %5, align 8
  %86 = ptrtoint i8* %85 to i64
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %86, %87
  %89 = call i32 @CHUNK_ADDR2OFFSET(i64 %88)
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @chunk_purge_wrapper(%struct.TYPE_10__* %77, %struct.TYPE_9__* %10, i32 %82, i64 %84, i32 %89, i64 %90)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %76, %68
  br label %98

96:                                               ; preds = %54
  %97 = load i32, i32* %12, align 4
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %96, %95
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = call i32 @malloc_mutex_lock(i32* %100)
  %102 = load i32*, i32** %8, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @extent_node_size_set(i32* %102, i64 %103)
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = call i32 @extent_node_zeroed_set(i32* %105, i32 %106)
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = call i32 @malloc_mutex_unlock(i32* %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %6, align 8
  %114 = load i64, i64* %7, align 8
  %115 = call i32 @arena_chunk_ralloc_huge_shrink(%struct.TYPE_10__* %111, i8* %112, i64 %113, i64 %114)
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %98, %53
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32* @huge_node_get(i8*) #1

declare dso_local %struct.TYPE_10__* @extent_node_arena_get(i32*) #1

declare dso_local i32 @extent_node_zeroed_get(i32*) #1

declare dso_local i64 (i8*, i64, i64, i64, i32, i32)* @chunk_hooks_get(%struct.TYPE_10__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @CHUNK_CEILING(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @huge_dalloc_junk(i8*, i64) #1

declare dso_local i32 @chunk_purge_wrapper(%struct.TYPE_10__*, %struct.TYPE_9__*, i32, i64, i32, i64) #1

declare dso_local i32 @CHUNK_ADDR2BASE(i64) #1

declare dso_local i32 @CHUNK_ADDR2OFFSET(i64) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @extent_node_size_set(i32*, i64) #1

declare dso_local i32 @extent_node_zeroed_set(i32*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

declare dso_local i32 @arena_chunk_ralloc_huge_shrink(%struct.TYPE_10__*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
