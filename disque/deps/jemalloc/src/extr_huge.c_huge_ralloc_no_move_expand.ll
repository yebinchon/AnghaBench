; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc_no_move_expand.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_huge.c_huge_ralloc_no_move_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@config_fill = common dso_local global i64 0, align 8
@opt_zero = common dso_local global i32 0, align 4
@opt_junk_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i32)* @huge_ralloc_no_move_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @huge_ralloc_no_move_expand(i8* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call i32* @huge_node_get(i8* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = call %struct.TYPE_4__* @extent_node_arena_get(i32* %16)
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %11, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @malloc_mutex_lock(i32* %19)
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @extent_node_zeroed_get(i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = call i32 @malloc_mutex_unlock(i32* %24)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %13, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i64 @arena_chunk_ralloc_huge_expand(%struct.TYPE_4__* %27, i8* %28, i64 %29, i64 %30, i32* %13)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %102

34:                                               ; preds = %4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = call i32 @malloc_mutex_lock(i32* %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %8, align 8
  %40 = call i32 @extent_node_size_set(i32* %38, i64 %39)
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @malloc_mutex_unlock(i32* %42)
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %34
  %47 = load i64, i64* @config_fill, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %83

49:                                               ; preds = %46
  %50 = load i32, i32* @opt_zero, align 4
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %83

53:                                               ; preds = %49, %34
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %67, label %56

56:                                               ; preds = %53
  %57 = load i8*, i8** %6, align 8
  %58 = ptrtoint i8* %57 to i64
  %59 = load i64, i64* %7, align 8
  %60 = add i64 %58, %59
  %61 = inttoptr i64 %60 to i8*
  %62 = load i64, i64* %7, align 8
  %63 = call i64 @CHUNK_CEILING(i64 %62)
  %64 = load i64, i64* %7, align 8
  %65 = sub i64 %63, %64
  %66 = call i32 @memset(i8* %61, i32 0, i64 %65)
  br label %67

67:                                               ; preds = %56, %53
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %67
  %71 = load i8*, i8** %6, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load i64, i64* %7, align 8
  %74 = call i64 @CHUNK_CEILING(i64 %73)
  %75 = add i64 %72, %74
  %76 = inttoptr i64 %75 to i8*
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %7, align 8
  %79 = call i64 @CHUNK_CEILING(i64 %78)
  %80 = sub i64 %77, %79
  %81 = call i32 @memset(i8* %76, i32 0, i64 %80)
  br label %82

82:                                               ; preds = %70, %67
  br label %101

83:                                               ; preds = %49, %46
  %84 = load i64, i64* @config_fill, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %83
  %87 = load i32, i32* @opt_junk_alloc, align 4
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %86
  %91 = load i8*, i8** %6, align 8
  %92 = ptrtoint i8* %91 to i64
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %92, %93
  %95 = inttoptr i64 %94 to i8*
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %7, align 8
  %98 = sub i64 %96, %97
  %99 = call i32 @memset(i8* %95, i32 165, i64 %98)
  br label %100

100:                                              ; preds = %90, %86, %83
  br label %101

101:                                              ; preds = %100, %82
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %33
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32* @huge_node_get(i8*) #1

declare dso_local %struct.TYPE_4__* @extent_node_arena_get(i32*) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @extent_node_zeroed_get(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

declare dso_local i64 @arena_chunk_ralloc_huge_expand(%struct.TYPE_4__*, i8*, i64, i64, i32*) #1

declare dso_local i32 @extent_node_size_set(i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @CHUNK_CEILING(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
