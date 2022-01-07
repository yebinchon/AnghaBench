; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_lcpu_add_caches.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_lcpu_add_caches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, i32**, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i64, i32, %struct.TYPE_16__* }

@FALSE = common dso_local global i32 0, align 4
@x86_topo_lock = common dso_local global i32 0, align 4
@topoParms = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*)* @x86_lcpu_add_caches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x86_lcpu_add_caches(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = call %struct.TYPE_16__* (...) @x86_cache_list()
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %3, align 8
  %17 = call i32 @mp_safe_spin_lock(i32* @x86_topo_lock)
  br label %18

18:                                               ; preds = %144, %48, %36, %1
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %20 = icmp ne %struct.TYPE_16__* %19, null
  br i1 %20, label %21, label %145

21:                                               ; preds = %18
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %4, align 8
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %3, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 2
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %30, 1
  store i64 %31, i64* %9, align 8
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %39 = call i32 @x86_cache_add_lcpu(%struct.TYPE_16__* %37, %struct.TYPE_14__* %38)
  br label %18

40:                                               ; preds = %21
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32**, i32*** %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = getelementptr inbounds i32*, i32** %43, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = call i32 @x86_cache_free(%struct.TYPE_16__* %49)
  br label %18

51:                                               ; preds = %40
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @topoParms, i32 0, i32 0), align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %96

55:                                               ; preds = %51
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 4
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %57, align 8
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** %7, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %8, align 8
  br label %62

62:                                               ; preds = %91, %69, %55
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %64 = icmp ne %struct.TYPE_14__* %63, null
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %68 = icmp eq %struct.TYPE_14__* %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %8, align 8
  br label %62

73:                                               ; preds = %65
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 1
  %76 = load i32**, i32*** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = call %struct.TYPE_16__* @x86_match_cache(i32* %79, %struct.TYPE_16__* %80)
  store %struct.TYPE_16__* %81, %struct.TYPE_16__** %5, align 8
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %83 = icmp ne %struct.TYPE_16__* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %73
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = call i32 @x86_cache_free(%struct.TYPE_16__* %85)
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %89 = call i32 @x86_cache_add_lcpu(%struct.TYPE_16__* %87, %struct.TYPE_14__* %88)
  %90 = load i32, i32* @TRUE, align 4
  store i32 %90, i32* %10, align 4
  br label %95

91:                                               ; preds = %73
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %93, align 8
  store %struct.TYPE_14__* %94, %struct.TYPE_14__** %8, align 8
  br label %62

95:                                               ; preds = %84, %62
  br label %137

96:                                               ; preds = %51
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %98, align 8
  store %struct.TYPE_15__* %99, %struct.TYPE_15__** %6, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %101, align 8
  store %struct.TYPE_14__* %102, %struct.TYPE_14__** %8, align 8
  br label %103

103:                                              ; preds = %132, %110, %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %105 = icmp ne %struct.TYPE_14__* %104, null
  br i1 %105, label %106, label %136

106:                                              ; preds = %103
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %109 = icmp eq %struct.TYPE_14__* %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %112, align 8
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %8, align 8
  br label %103

114:                                              ; preds = %106
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = call %struct.TYPE_16__* @x86_match_cache(i32* %120, %struct.TYPE_16__* %121)
  store %struct.TYPE_16__* %122, %struct.TYPE_16__** %5, align 8
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = icmp ne %struct.TYPE_16__* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %114
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %127 = call i32 @x86_cache_free(%struct.TYPE_16__* %126)
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %130 = call i32 @x86_cache_add_lcpu(%struct.TYPE_16__* %128, %struct.TYPE_14__* %129)
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %10, align 4
  br label %136

132:                                              ; preds = %114
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %134, align 8
  store %struct.TYPE_14__* %135, %struct.TYPE_14__** %8, align 8
  br label %103

136:                                              ; preds = %125, %103
  br label %137

137:                                              ; preds = %136, %95
  %138 = load i32, i32* %10, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %143 = call i32 @x86_cache_add_lcpu(%struct.TYPE_16__* %141, %struct.TYPE_14__* %142)
  br label %144

144:                                              ; preds = %140, %137
  br label %18

145:                                              ; preds = %18
  %146 = call i32 @simple_unlock(i32* @x86_topo_lock)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_16__* @x86_cache_list(...) #1

declare dso_local i32 @mp_safe_spin_lock(i32*) #1

declare dso_local i32 @x86_cache_add_lcpu(%struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @x86_cache_free(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @x86_match_cache(i32*, %struct.TYPE_16__*) #1

declare dso_local i32 @simple_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
