; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/libfat/extr_cache.c__FAT_cache_constructor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/libfat/extr_cache.c__FAT_cache_constructor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__*, i32, i32* }
%struct.TYPE_5__ = type { i32, i32*, i64, i64, i32 }

@CACHE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @_FAT_cache_constructor(i32 %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ult i32 %15, 2
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 2, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %5
  %19 = load i32, i32* %8, align 4
  %20 = icmp ult i32 %19, 8
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 8, i32* %8, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = call i64 @_FAT_mem_allocate(i32 40)
  %24 = inttoptr i64 %23 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %12, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %100

28:                                               ; preds = %22
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 5
  store i32* %29, i32** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = mul i64 40, %45
  %47 = trunc i64 %46 to i32
  %48 = call i64 @_FAT_mem_allocate(i32 %47)
  %49 = inttoptr i64 %48 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %14, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = icmp eq %struct.TYPE_5__* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %28
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %54 = call i32 @_FAT_mem_free(%struct.TYPE_6__* %53)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %6, align 8
  br label %100

55:                                               ; preds = %28
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %92, %55
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %95

60:                                               ; preds = %56
  %61 = load i32, i32* @CACHE_FREE, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %63 = load i32, i32* %13, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  store i32 %61, i32* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %68 = load i32, i32* %13, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %11, align 4
  %84 = mul i32 %82, %83
  %85 = call i64 @_FAT_mem_align(i32 %84)
  %86 = inttoptr i64 %85 to i32*
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %88 = load i32, i32* %13, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32* %86, i32** %91, align 8
  br label %92

92:                                               ; preds = %60
  %93 = load i32, i32* %13, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %13, align 4
  br label %56

95:                                               ; preds = %56
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  store %struct.TYPE_5__* %96, %struct.TYPE_5__** %98, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %99, %struct.TYPE_6__** %6, align 8
  br label %100

100:                                              ; preds = %95, %52, %27
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  ret %struct.TYPE_6__* %101
}

declare dso_local i64 @_FAT_mem_allocate(i32) #1

declare dso_local i32 @_FAT_mem_free(%struct.TYPE_6__*) #1

declare dso_local i64 @_FAT_mem_align(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
