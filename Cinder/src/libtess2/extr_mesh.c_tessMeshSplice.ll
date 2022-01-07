; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshSplice.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshSplice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_18__*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tessMeshSplice(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %7, align 8
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %16 = icmp eq %struct.TYPE_20__* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %106

18:                                               ; preds = %3
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %23, align 8
  %25 = icmp ne %struct.TYPE_21__* %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load i32, i32* @TRUE, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %30, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %33, align 8
  %35 = call i32 @KillVertex(%struct.TYPE_19__* %28, %struct.TYPE_21__* %31, %struct.TYPE_21__* %34)
  br label %36

36:                                               ; preds = %26, %18
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %40 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %41, align 8
  %43 = icmp ne %struct.TYPE_18__* %39, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load i32, i32* @TRUE, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %51, align 8
  %53 = call i32 @KillFace(%struct.TYPE_19__* %46, %struct.TYPE_18__* %49, %struct.TYPE_18__* %52)
  br label %54

54:                                               ; preds = %44, %36
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %56 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %57 = call i32 @Splice(%struct.TYPE_20__* %55, %struct.TYPE_20__* %56)
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %54
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @bucketAlloc(i32 %63)
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %106

69:                                               ; preds = %60
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = call i32 @MakeVertex(i32* %70, %struct.TYPE_20__* %71, %struct.TYPE_21__* %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 0
  store %struct.TYPE_20__* %76, %struct.TYPE_20__** %80, align 8
  br label %81

81:                                               ; preds = %69, %54
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %105, label %84

84:                                               ; preds = %81
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @bucketAlloc(i32 %87)
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %11, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %106

93:                                               ; preds = %84
  %94 = load i32*, i32** %11, align 8
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %97, align 8
  %99 = call i32 @MakeFace(i32* %94, %struct.TYPE_20__* %95, %struct.TYPE_18__* %98)
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 0
  store %struct.TYPE_20__* %100, %struct.TYPE_20__** %104, align 8
  br label %105

105:                                              ; preds = %93, %81
  store i32 1, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %92, %68, %17
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @KillVertex(%struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @KillFace(%struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @Splice(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i64 @bucketAlloc(i32) #1

declare dso_local i32 @MakeVertex(i32*, %struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @MakeFace(i32*, %struct.TYPE_20__*, %struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
