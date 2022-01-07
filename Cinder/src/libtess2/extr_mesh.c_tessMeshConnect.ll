; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshConnect.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshConnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_17__*, i32, i32, %struct.TYPE_19__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @tessMeshConnect(%struct.TYPE_18__* %0, %struct.TYPE_19__* %1, %struct.TYPE_19__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %6, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %7, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %15 = call %struct.TYPE_19__* @MakeEdge(%struct.TYPE_18__* %13, %struct.TYPE_19__* %14)
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %10, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %17 = icmp eq %struct.TYPE_19__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %91

19:                                               ; preds = %3
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 4
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %21, align 8
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %8, align 8
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %27, align 8
  %29 = icmp ne %struct.TYPE_17__* %25, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %19
  %31 = load i32, i32* @TRUE, align 4
  store i32 %31, i32* %9, align 4
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %37, align 8
  %39 = call i32 @KillFace(%struct.TYPE_18__* %32, %struct.TYPE_17__* %35, %struct.TYPE_17__* %38)
  br label %40

40:                                               ; preds = %30, %19
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %43, align 8
  %45 = call i32 @Splice(%struct.TYPE_19__* %41, %struct.TYPE_19__* %44)
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %48 = call i32 @Splice(%struct.TYPE_19__* %46, %struct.TYPE_19__* %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %60, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 0
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %63, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %65, align 8
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 0
  store %struct.TYPE_19__* %66, %struct.TYPE_19__** %70, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %89, label %73

73:                                               ; preds = %40
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @bucketAlloc(i32 %76)
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %11, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %4, align 8
  br label %91

82:                                               ; preds = %73
  %83 = load i32*, i32** %11, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %86, align 8
  %88 = call i32 @MakeFace(i32* %83, %struct.TYPE_19__* %84, %struct.TYPE_17__* %87)
  br label %89

89:                                               ; preds = %82, %40
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  store %struct.TYPE_19__* %90, %struct.TYPE_19__** %4, align 8
  br label %91

91:                                               ; preds = %89, %81, %18
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  ret %struct.TYPE_19__* %92
}

declare dso_local %struct.TYPE_19__* @MakeEdge(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @KillFace(%struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @Splice(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i64 @bucketAlloc(i32) #1

declare dso_local i32 @MakeFace(i32*, %struct.TYPE_19__*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
