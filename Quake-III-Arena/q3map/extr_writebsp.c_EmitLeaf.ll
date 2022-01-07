; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_writebsp.c_EmitLeaf.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_writebsp.c_EmitLeaf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i64, %struct.TYPE_12__*, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__*, %struct.TYPE_12__* }
%struct.TYPE_8__ = type { i32 }

@numleafs = common dso_local global i64 0, align 8
@MAX_MAP_LEAFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"MAX_MAP_LEAFS\00", align 1
@dleafs = common dso_local global %struct.TYPE_11__* null, align 8
@numleafbrushes = common dso_local global i64 0, align 8
@MAX_MAP_LEAFBRUSHES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"MAX_MAP_LEAFBRUSHES\00", align 1
@dleafbrushes = common dso_local global i32* null, align 8
@numleafsurfaces = common dso_local global i64 0, align 8
@MAX_MAP_LEAFFACES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"MAX_MAP_LEAFFACES\00", align 1
@dleafsurfaces = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EmitLeaf(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %6 = load i64, i64* @numleafs, align 8
  %7 = load i64, i64* @MAX_MAP_LEAFS, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @Error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** @dleafs, align 8
  %13 = load i64, i64* @numleafs, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i64 %13
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %3, align 8
  %15 = load i64, i64* @numleafs, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* @numleafs, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @VectorCopy(i32 %29, i32 %32)
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @VectorCopy(i32 %36, i32 %39)
  %41 = load i64, i64* @numleafbrushes, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %4, align 8
  br label %47

47:                                               ; preds = %67, %11
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %49 = icmp ne %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %71

50:                                               ; preds = %47
  %51 = load i64, i64* @numleafbrushes, align 8
  %52 = load i64, i64* @MAX_MAP_LEAFBRUSHES, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = call i32 @Error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @dleafbrushes, align 8
  %63 = load i64, i64* @numleafbrushes, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i64, i64* @numleafbrushes, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* @numleafbrushes, align 8
  br label %67

67:                                               ; preds = %56
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  store %struct.TYPE_12__* %70, %struct.TYPE_12__** %4, align 8
  br label %47

71:                                               ; preds = %47
  %72 = load i64, i64* @numleafbrushes, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = sub i64 %72, %75
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %121

84:                                               ; preds = %71
  %85 = load i64, i64* @numleafsurfaces, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %5, align 8
  br label %91

91:                                               ; preds = %109, %84
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = icmp ne %struct.TYPE_10__* %92, null
  br i1 %93, label %94, label %113

94:                                               ; preds = %91
  %95 = load i64, i64* @numleafsurfaces, align 8
  %96 = load i64, i64* @MAX_MAP_LEAFFACES, align 8
  %97 = icmp uge i64 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = call i32 @Error(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %94
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32*, i32** @dleafsurfaces, align 8
  %105 = load i64, i64* @numleafsurfaces, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  store i32 %103, i32* %106, align 4
  %107 = load i64, i64* @numleafsurfaces, align 8
  %108 = add i64 %107, 1
  store i64 %108, i64* @numleafsurfaces, align 8
  br label %109

109:                                              ; preds = %100
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  store %struct.TYPE_10__* %112, %struct.TYPE_10__** %5, align 8
  br label %91

113:                                              ; preds = %91
  %114 = load i64, i64* @numleafsurfaces, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = sub i64 %114, %117
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 3
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %113, %83
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
