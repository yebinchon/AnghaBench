; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_MakeNodePortal.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_portals.c_MakeNodePortal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float, i32 }
%struct.TYPE_9__ = type { i64, i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_9__*, %struct.TYPE_10__, %struct.TYPE_9__**, %struct.TYPE_8__** }

@vec3_origin = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"CutNodePortals_r: mislinked portal\00", align 1
@CLIP_EPSILON = common dso_local global i32 0, align 4
@c_tinyportals = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_10__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MakeNodePortal(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %10 = call i32* @BaseWindingForNode(%struct.TYPE_9__* %9)
  store i32* %10, i32** %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  store %struct.TYPE_8__* %13, %struct.TYPE_8__** %4, align 8
  br label %14

14:                                               ; preds = %70, %1
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %78

22:                                               ; preds = %20
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %25, i64 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = icmp eq %struct.TYPE_9__* %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %22
  store i32 0, i32* %8, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @VectorCopy(i32 %34, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load float, float* %39, align 8
  store float %40, float* %7, align 4
  br label %65

41:                                               ; preds = %22
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %44, i64 1
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = icmp eq %struct.TYPE_9__* %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %41
  store i32 1, i32* %8, align 4
  %50 = load i32, i32* @vec3_origin, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @VectorSubtract(i32 %50, i32 %54, i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load float, float* %59, align 8
  %61 = fneg float %60
  store float %61, float* %7, align 4
  br label %64

62:                                               ; preds = %41
  %63 = call i32 @Error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %64

64:                                               ; preds = %62, %49
  br label %65

65:                                               ; preds = %64, %30
  %66 = load i32, i32* %6, align 4
  %67 = load float, float* %7, align 4
  %68 = load i32, i32* @CLIP_EPSILON, align 4
  %69 = call i32 @ChopWindingInPlace(i32** %5, i32 %66, float %67, i32 %68)
  br label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 5
  %73 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %73, i64 %75
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  store %struct.TYPE_8__* %77, %struct.TYPE_8__** %4, align 8
  br label %14

78:                                               ; preds = %20
  %79 = load i32*, i32** %5, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  br label %125

82:                                               ; preds = %78
  %83 = load i32*, i32** %5, align 8
  %84 = call i64 @WindingIsTiny(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %82
  %87 = load i32, i32* @c_tinyportals, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* @c_tinyportals, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @FreeWinding(i32* %89)
  br label %125

91:                                               ; preds = %82
  %92 = call %struct.TYPE_8__* (...) @AllocPortal()
  store %struct.TYPE_8__* %92, %struct.TYPE_8__** %3, align 8
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mapplanes, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i64 %98
  %100 = bitcast %struct.TYPE_10__* %94 to i8*
  %101 = bitcast %struct.TYPE_10__* %99 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %100, i8* align 4 %101, i64 8, i1 false)
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  store %struct.TYPE_9__* %102, %struct.TYPE_9__** %104, align 8
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  store i32* %105, i32** %107, align 8
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @AddPortalToNodes(%struct.TYPE_8__* %113, i32 %118, i32 %123)
  br label %125

125:                                              ; preds = %91, %86, %81
  ret void
}

declare dso_local i32* @BaseWindingForNode(%struct.TYPE_9__*) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @VectorSubtract(i32, i32, i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @ChopWindingInPlace(i32**, i32, float, i32) #1

declare dso_local i64 @WindingIsTiny(i32*) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local %struct.TYPE_8__* @AllocPortal(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @AddPortalToNodes(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
