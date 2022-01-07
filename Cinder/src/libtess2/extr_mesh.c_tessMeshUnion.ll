; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshUnion.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshUnion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32 (i32, %struct.TYPE_23__*)* }
%struct.TYPE_23__ = type { %struct.TYPE_24__, %struct.TYPE_22__, %struct.TYPE_25__ }
%struct.TYPE_24__ = type { %struct.TYPE_21__*, %struct.TYPE_24__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_24__* }
%struct.TYPE_22__ = type { %struct.TYPE_18__*, %struct.TYPE_22__* }
%struct.TYPE_18__ = type { %struct.TYPE_22__* }
%struct.TYPE_25__ = type { %struct.TYPE_17__*, %struct.TYPE_25__* }
%struct.TYPE_17__ = type { %struct.TYPE_25__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_23__* @tessMeshUnion(%struct.TYPE_16__* %0, %struct.TYPE_23__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_25__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %6, align 8
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 2
  store %struct.TYPE_25__* %14, %struct.TYPE_25__** %7, align 8
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 1
  store %struct.TYPE_22__* %16, %struct.TYPE_22__** %8, align 8
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  store %struct.TYPE_24__* %18, %struct.TYPE_24__** %9, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 2
  store %struct.TYPE_25__* %20, %struct.TYPE_25__** %10, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 1
  store %struct.TYPE_22__* %22, %struct.TYPE_22__** %11, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %23, i32 0, i32 0
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %12, align 8
  %25 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %26, align 8
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %29 = icmp ne %struct.TYPE_25__* %27, %28
  br i1 %29, label %30, label %55

30:                                               ; preds = %3
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %37, align 8
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %39, align 8
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 0
  store %struct.TYPE_17__* %40, %struct.TYPE_17__** %44, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %46 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 0
  store %struct.TYPE_25__* %45, %struct.TYPE_25__** %49, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %51, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  store %struct.TYPE_17__* %52, %struct.TYPE_17__** %54, align 8
  br label %55

55:                                               ; preds = %30, %3
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %57, align 8
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %60 = icmp ne %struct.TYPE_22__* %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %55
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %63, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %68, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %70, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 0
  store %struct.TYPE_18__* %71, %struct.TYPE_18__** %75, align 8
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 0
  store %struct.TYPE_22__* %76, %struct.TYPE_22__** %80, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %84, i32 0, i32 0
  store %struct.TYPE_18__* %83, %struct.TYPE_18__** %85, align 8
  br label %86

86:                                               ; preds = %61, %55
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_24__*, %struct.TYPE_24__** %88, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %91 = icmp ne %struct.TYPE_24__* %89, %90
  br i1 %91, label %92, label %133

92:                                               ; preds = %86
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_24__*, %struct.TYPE_24__** %94, align 8
  %96 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  store %struct.TYPE_24__* %95, %struct.TYPE_24__** %103, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_21__*, %struct.TYPE_21__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_24__*, %struct.TYPE_24__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 0
  store %struct.TYPE_20__* %108, %struct.TYPE_20__** %114, align 8
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %116 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 0
  store %struct.TYPE_24__* %115, %struct.TYPE_24__** %123, align 8
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_21__*, %struct.TYPE_21__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %127, align 8
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 0
  store %struct.TYPE_20__* %128, %struct.TYPE_20__** %132, align 8
  br label %133

133:                                              ; preds = %92, %86
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32 (i32, %struct.TYPE_23__*)*, i32 (i32, %struct.TYPE_23__*)** %135, align 8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %141 = call i32 %136(i32 %139, %struct.TYPE_23__* %140)
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  ret %struct.TYPE_23__* %142
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
