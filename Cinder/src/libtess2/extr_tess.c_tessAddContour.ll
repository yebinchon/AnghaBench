; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_tessAddContour.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_tess.c_tessAddContour.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__*, %struct.TYPE_9__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tessAddContour(%struct.TYPE_10__* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %11, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = call i32* @tessMeshNewMesh(i32* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 1
  store i32* %23, i32** %25, align 8
  br label %26

26:                                               ; preds = %20, %5
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  br label %142

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i32 2, i32* %7, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 3
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 3, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %38
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  store i32 0, i32* %13, align 4
  br label %43

43:                                               ; preds = %139, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %142

47:                                               ; preds = %43
  %48 = load i8*, i8** %11, align 8
  %49 = bitcast i8* %48 to i32*
  store i32* %49, i32** %14, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %11, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %11, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %55 = icmp eq %struct.TYPE_11__* %54, null
  br i1 %55, label %56, label %80

56:                                               ; preds = %47
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call %struct.TYPE_11__* @tessMeshMakeEdge(i32* %59)
  store %struct.TYPE_11__* %60, %struct.TYPE_11__** %12, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %62 = icmp eq %struct.TYPE_11__* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  br label %142

66:                                               ; preds = %56
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %72, align 8
  %74 = call i32 @tessMeshSplice(i32* %69, %struct.TYPE_11__* %70, %struct.TYPE_12__* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  br label %142

79:                                               ; preds = %66
  br label %94

80:                                               ; preds = %47
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %85 = call i32* @tessMeshSplitEdge(i32* %83, %struct.TYPE_11__* %84)
  %86 = icmp eq i32* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 1, i32* %89, align 8
  br label %142

90:                                               ; preds = %80
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  store %struct.TYPE_11__* %93, %struct.TYPE_11__** %12, align 8
  br label %94

94:                                               ; preds = %90, %79
  %95 = load i32*, i32** %14, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 %97, i32* %103, align 4
  %104 = load i32*, i32** %14, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 %106, i32* %112, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp sgt i32 %113, 2
  br i1 %114, label %115, label %125

115:                                              ; preds = %94
  %116 = load i32*, i32** %14, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 2
  store i32 %118, i32* %124, align 4
  br label %132

125:                                              ; preds = %94
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  store i32 0, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %115
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32 -1, i32* %138, align 4
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %43

142:                                              ; preds = %31, %63, %76, %87, %43
  ret void
}

declare dso_local i32* @tessMeshNewMesh(i32*) #1

declare dso_local %struct.TYPE_11__* @tessMeshMakeEdge(i32*) #1

declare dso_local i32 @tessMeshSplice(i32*, %struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32* @tessMeshSplitEdge(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
