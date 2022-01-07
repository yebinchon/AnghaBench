; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_FinishLeftRegions.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_sweep.c_FinishLeftRegions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_19__*, %struct.TYPE_19__*, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_20__*)* @FinishLeftRegions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @FinishLeftRegions(%struct.TYPE_18__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %11, %struct.TYPE_20__** %8, align 8
  %12 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %10, align 8
  br label %15

15:                                               ; preds = %109, %3
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %18 = icmp ne %struct.TYPE_20__* %16, %17
  br i1 %18, label %19, label %117

19:                                               ; preds = %15
  %20 = load i32, i32* @FALSE, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %24 = call %struct.TYPE_20__* @RegionBelow(%struct.TYPE_20__* %23)
  store %struct.TYPE_20__* %24, %struct.TYPE_20__** %7, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %26, align 8
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %9, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %32 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %74

35:                                               ; preds = %19
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = call i32 @FinishRegion(%struct.TYPE_18__* %41, %struct.TYPE_20__* %42)
  br label %117

44:                                               ; preds = %35
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.TYPE_19__* @tessMeshConnect(i32 %47, i32 %50, i32 %53)
  store %struct.TYPE_19__* %54, %struct.TYPE_19__** %9, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %56 = icmp eq %struct.TYPE_19__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %44
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @longjmp(i32 %60, i32 1)
  br label %62

62:                                               ; preds = %57, %44
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %66 = call i32 @FixUpperEdge(%struct.TYPE_18__* %63, %struct.TYPE_20__* %64, %struct.TYPE_19__* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @longjmp(i32 %71, i32 1)
  br label %73

73:                                               ; preds = %68, %62
  br label %74

74:                                               ; preds = %73, %19
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %76, align 8
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %79 = icmp ne %struct.TYPE_19__* %77, %78
  br i1 %79, label %80, label %109

80:                                               ; preds = %74
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %85, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %88 = call i32 @tessMeshSplice(i32 %83, %struct.TYPE_19__* %86, %struct.TYPE_19__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %80
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @longjmp(i32 %93, i32 1)
  br label %95

95:                                               ; preds = %90, %80
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %101 = call i32 @tessMeshSplice(i32 %98, %struct.TYPE_19__* %99, %struct.TYPE_19__* %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %95
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @longjmp(i32 %106, i32 1)
  br label %108

108:                                              ; preds = %103, %95
  br label %109

109:                                              ; preds = %108, %74
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %112 = call i32 @FinishRegion(%struct.TYPE_18__* %110, %struct.TYPE_20__* %111)
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %114, align 8
  store %struct.TYPE_19__* %115, %struct.TYPE_19__** %10, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  store %struct.TYPE_20__* %116, %struct.TYPE_20__** %8, align 8
  br label %15

117:                                              ; preds = %40, %15
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  ret %struct.TYPE_19__* %118
}

declare dso_local %struct.TYPE_20__* @RegionBelow(%struct.TYPE_20__*) #1

declare dso_local i32 @FinishRegion(%struct.TYPE_18__*, %struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @tessMeshConnect(i32, i32, i32) #1

declare dso_local i32 @longjmp(i32, i32) #1

declare dso_local i32 @FixUpperEdge(%struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_19__*) #1

declare dso_local i32 @tessMeshSplice(i32, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
