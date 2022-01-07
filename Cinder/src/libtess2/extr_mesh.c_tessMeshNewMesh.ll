; ModuleID = '/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshNewMesh.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/libtess2/extr_mesh.c_tessMeshNewMesh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_12__, %struct.TYPE_9__, i8*, i8*, i8* }
%struct.TYPE_11__ = type { i32*, i64, i32*, i32*, i32*, i32*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_12__ = type { i8*, i8*, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32*, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i64 (i32, i32)* }

@.str = private unnamed_addr constant [11 x i8] c"Mesh Edges\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Mesh Vertices\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Mesh Faces\00", align 1
@FALSE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @tessMeshNewMesh(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %9 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 4
  %11 = load i64 (i32, i32)*, i64 (i32, i32)** %10, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 %11(i32 %14, i32 224)
  %16 = inttoptr i64 %15 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = icmp eq %struct.TYPE_10__* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %157

20:                                               ; preds = %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  store i32 16, i32* %27, align 8
  br label %28

28:                                               ; preds = %25, %20
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sgt i32 %31, 4096
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  store i32 4096, i32* %35, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 16
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i32 16, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp sgt i32 %47, 4096
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  store i32 4096, i32* %51, align 4
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 16
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  store i32 16, i32* %59, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = icmp sgt i32 %63, 4096
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  store i32 4096, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %60
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i8* @createBucketAlloc(%struct.TYPE_13__* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 4, i32 %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 6
  store i8* %73, i8** %75, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @createBucketAlloc(%struct.TYPE_13__* %76, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 24, i32 %79)
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 5
  store i8* %80, i8** %82, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i8* @createBucketAlloc(%struct.TYPE_13__* %83, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 48, i32 %86)
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  store %struct.TYPE_9__* %91, %struct.TYPE_9__** %4, align 8
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %5, align 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 1
  store %struct.TYPE_11__* %95, %struct.TYPE_11__** %6, align 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %7, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %100, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store %struct.TYPE_9__* %98, %struct.TYPE_9__** %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 4
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 5
  store %struct.TYPE_12__* %105, %struct.TYPE_12__** %109, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 3
  store i32* null, i32** %111, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 2
  store i32* null, i32** %113, align 8
  %114 = load i8*, i8** @FALSE, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load i8*, i8** @FALSE, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  store i8* %117, i8** %119, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 7
  store %struct.TYPE_11__* %120, %struct.TYPE_11__** %122, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 6
  store %struct.TYPE_11__* %123, %struct.TYPE_11__** %125, align 8
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 5
  store i32* null, i32** %127, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 4
  store i32* null, i32** %129, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 3
  store i32* null, i32** %131, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  store i32* null, i32** %133, align 8
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  store i32* null, i32** %137, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 7
  store %struct.TYPE_11__* %138, %struct.TYPE_11__** %140, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 6
  store %struct.TYPE_11__* %141, %struct.TYPE_11__** %143, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  store i32* null, i32** %145, align 8
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 4
  store i32* null, i32** %147, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 3
  store i32* null, i32** %149, align 8
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %150, i32 0, i32 2
  store i32* null, i32** %151, align 8
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 0
  store i32* null, i32** %155, align 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %156, %struct.TYPE_10__** %2, align 8
  br label %157

157:                                              ; preds = %68, %19
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %158
}

declare dso_local i8* @createBucketAlloc(%struct.TYPE_13__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
