; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_tcache.c_tcache_destroy.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_tcache.c_tcache_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_25__ = type { i32, %struct.TYPE_21__, %struct.TYPE_26__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32 }

@NBINS = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@nhbins = common dso_local global i32 0, align 4
@config_prof = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_23__*)* @tcache_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcache_destroy(i32* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call %struct.TYPE_25__* @arena_choose(i32* %10, i32* null)
  store %struct.TYPE_25__* %11, %struct.TYPE_25__** %5, align 8
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %14 = call i32 @tcache_arena_dissociate(%struct.TYPE_23__* %12, %struct.TYPE_25__* %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %64, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @NBINS, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %22, i64 %24
  store %struct.TYPE_24__* %25, %struct.TYPE_24__** %7, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @tcache_bin_flush_small(i32* %26, %struct.TYPE_23__* %27, %struct.TYPE_24__* %28, i32 %29, i32 0)
  %31 = load i64, i64* @config_stats, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %19
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_26__*, %struct.TYPE_26__** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %42, i64 %44
  store %struct.TYPE_26__* %45, %struct.TYPE_26__** %8, align 8
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 0
  %48 = call i32 @malloc_mutex_lock(i32* %47)
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %52
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  %62 = call i32 @malloc_mutex_unlock(i32* %61)
  br label %63

63:                                               ; preds = %39, %33, %19
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %15

67:                                               ; preds = %15
  br label %68

68:                                               ; preds = %129, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @nhbins, align 4
  %71 = icmp ult i32 %69, %70
  br i1 %71, label %72, label %132

72:                                               ; preds = %68
  %73 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i64 %77
  store %struct.TYPE_24__* %78, %struct.TYPE_24__** %9, align 8
  %79 = load i32*, i32** %3, align 8
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %83 = call i32 @tcache_bin_flush_large(i32* %79, %struct.TYPE_24__* %80, i32 %81, i32 0, %struct.TYPE_23__* %82)
  %84 = load i64, i64* @config_stats, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %128

86:                                               ; preds = %72
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %128

92:                                               ; preds = %86
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = call i32 @malloc_mutex_lock(i32* %94)
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %99
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 8
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %113, align 8
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @NBINS, align 4
  %117 = sub i32 %115, %116
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %110
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %120, align 4
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 0
  %127 = call i32 @malloc_mutex_unlock(i32* %126)
  br label %128

128:                                              ; preds = %92, %86, %72
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %6, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %68

132:                                              ; preds = %68
  %133 = load i64, i64* @config_prof, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %132
  %136 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i64 @arena_prof_accum(%struct.TYPE_25__* %141, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %140
  %148 = call i32 (...) @prof_idump()
  br label %149

149:                                              ; preds = %147, %140, %135, %132
  %150 = load i32*, i32** %3, align 8
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %152 = call i32 @idalloctm(i32* %150, %struct.TYPE_23__* %151, i32 0, i32 1)
  ret void
}

declare dso_local %struct.TYPE_25__* @arena_choose(i32*, i32*) #1

declare dso_local i32 @tcache_arena_dissociate(%struct.TYPE_23__*, %struct.TYPE_25__*) #1

declare dso_local i32 @tcache_bin_flush_small(i32*, %struct.TYPE_23__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

declare dso_local i32 @tcache_bin_flush_large(i32*, %struct.TYPE_24__*, i32, i32, %struct.TYPE_23__*) #1

declare dso_local i64 @arena_prof_accum(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @prof_idump(...) #1

declare dso_local i32 @idalloctm(i32*, %struct.TYPE_23__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
