; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshMergeConvexFaces.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshMergeConvexFaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tessMeshMergeConvexFaces(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %6, align 8
  br label %17

17:                                               ; preds = %132, %2
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = icmp ne %struct.TYPE_12__* %18, %20
  br i1 %21, label %22, label %136

22:                                               ; preds = %17
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %132

28:                                               ; preds = %22
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %7, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %10, align 8
  br label %35

35:                                               ; preds = %28, %129
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  store %struct.TYPE_11__* %38, %struct.TYPE_11__** %8, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %9, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %117

44:                                               ; preds = %35
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  %48 = icmp ne %struct.TYPE_12__* %47, null
  br i1 %48, label %49, label %117

49:                                               ; preds = %44
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %117

56:                                               ; preds = %49
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = call i32 @CountFaceVerts(%struct.TYPE_12__* %57)
  store i32 %58, i32* %11, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = call i32 @CountFaceVerts(%struct.TYPE_12__* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %63, %64
  %66 = sub nsw i32 %65, 2
  %67 = load i32, i32* %5, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %69, label %116

69:                                               ; preds = %56
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i64 @VertCCW(i32 %74, i32* %77, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %69
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @VertCCW(i32 %92, i32* %95, i32* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %87
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %107, align 8
  store %struct.TYPE_11__* %108, %struct.TYPE_11__** %8, align 8
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %111 = call i32 @tessMeshDelete(%struct.TYPE_10__* %109, %struct.TYPE_11__* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %137

114:                                              ; preds = %105
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %7, align 8
  br label %115

115:                                              ; preds = %114, %87, %69
  br label %116

116:                                              ; preds = %115, %56
  br label %117

117:                                              ; preds = %116, %49, %44, %35
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %119 = icmp ne %struct.TYPE_11__* %118, null
  br i1 %119, label %120, label %129

120:                                              ; preds = %117
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = icmp eq i32* %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %131

129:                                              ; preds = %120, %117
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %7, align 8
  br label %35

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %131, %27
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  store %struct.TYPE_12__* %135, %struct.TYPE_12__** %6, align 8
  br label %17

136:                                              ; preds = %17
  store i32 1, i32* %3, align 4
  br label %137

137:                                              ; preds = %136, %113
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local i32 @CountFaceVerts(%struct.TYPE_12__*) #1

declare dso_local i64 @VertCCW(i32, i32*, i32*) #1

declare dso_local i32 @tessMeshDelete(%struct.TYPE_10__*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
