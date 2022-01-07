; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_cache_list.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_cache_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_cache = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32, i64, %struct.TYPE_5__*, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i64*, i32, i32*, i32* }

@cpu_caches = common dso_local global %struct.cpu_cache* null, align 8
@LCACHE_MAX = common dso_local global i32 0, align 4
@num_Lx_caches = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* ()* @x86_cache_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @x86_cache_list() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.cpu_cache*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cpu_cache*, %struct.cpu_cache** @cpu_caches, align 8
  %7 = getelementptr inbounds %struct.cpu_cache, %struct.cpu_cache* %6, i64 0
  store %struct.cpu_cache* %7, %struct.cpu_cache** %4, align 8
  br label %8

8:                                                ; preds = %97, %0
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @LCACHE_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %102

12:                                               ; preds = %8
  %13 = load %struct.cpu_cache*, %struct.cpu_cache** %4, align 8
  %14 = getelementptr inbounds %struct.cpu_cache, %struct.cpu_cache* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %12
  %18 = call %struct.TYPE_6__* (...) @cpuid_info()
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17, %12
  br label %97

27:                                               ; preds = %17
  %28 = call %struct.TYPE_5__* (...) @x86_cache_alloc()
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %2, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = icmp eq %struct.TYPE_5__* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %102

32:                                               ; preds = %27
  %33 = load %struct.cpu_cache*, %struct.cpu_cache** %4, align 8
  %34 = getelementptr inbounds %struct.cpu_cache, %struct.cpu_cache* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.cpu_cache*, %struct.cpu_cache** %4, align 8
  %39 = getelementptr inbounds %struct.cpu_cache, %struct.cpu_cache* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = call %struct.TYPE_6__* (...) @cpuid_info()
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 8
  %54 = call %struct.TYPE_6__* (...) @cpuid_info()
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = call %struct.TYPE_6__* (...) @cpuid_info()
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  %72 = call %struct.TYPE_6__* (...) @cpuid_info()
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = icmp eq %struct.TYPE_5__* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %32
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %1, align 8
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %3, align 8
  br label %87

82:                                               ; preds = %32
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 3
  store %struct.TYPE_5__* %83, %struct.TYPE_5__** %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  store %struct.TYPE_5__* %86, %struct.TYPE_5__** %3, align 8
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32*, i32** @num_Lx_caches, align 8
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %88, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %87, %26
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = load %struct.cpu_cache*, %struct.cpu_cache** %4, align 8
  %101 = getelementptr inbounds %struct.cpu_cache, %struct.cpu_cache* %100, i32 1
  store %struct.cpu_cache* %101, %struct.cpu_cache** %4, align 8
  br label %8

102:                                              ; preds = %31, %8
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  ret %struct.TYPE_5__* %103
}

declare dso_local %struct.TYPE_6__* @cpuid_info(...) #1

declare dso_local %struct.TYPE_5__* @x86_cache_alloc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
