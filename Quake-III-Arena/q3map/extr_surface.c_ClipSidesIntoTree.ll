; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_ClipSidesIntoTree.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_surface.c_ClipSidesIntoTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { i32, i32*, i64, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"----- ClipSidesIntoTree -----\0A\00", align 1
@SURF_NODRAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"monkey tried to create draw surface for brush bevel\00", align 1
@CONTENTS_FOG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ClipSidesIntoTree(%struct.TYPE_15__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %4, align 8
  %11 = call i32 @qprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %5, align 8
  br label %15

15:                                               ; preds = %124, %2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %128

18:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %120, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %123

25:                                               ; preds = %19
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i64 %30
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %8, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %25
  br label %120

37:                                               ; preds = %25
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32* @CopyWinding(i32* %40)
  store i32* %41, i32** %7, align 8
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 1
  store i32* null, i32** %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ClipSideIntoTree_r(i32* %44, %struct.TYPE_13__* %45, i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %7, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %37
  br label %120

56:                                               ; preds = %37
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %58, align 8
  store %struct.TYPE_14__* %59, %struct.TYPE_14__** %10, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %61 = icmp ne %struct.TYPE_14__* %60, null
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %120

63:                                               ; preds = %56
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @SURF_NODRAW, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %120

71:                                               ; preds = %63
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %7, align 8
  br label %82

82:                                               ; preds = %78, %71
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = call i32 @Error(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %82
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @DrawSurfaceForSide(%struct.TYPE_16__* %90, %struct.TYPE_13__* %91, i32* %92)
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @CONTENTS_FOG, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %89
  br label %120

101:                                              ; preds = %89
  %102 = load i32*, i32** %7, align 8
  %103 = call i32* @ReverseWinding(i32* %102)
  store i32* %103, i32** %7, align 8
  %104 = call %struct.TYPE_13__* @malloc(i32 40)
  store %struct.TYPE_13__* %104, %struct.TYPE_13__** %9, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = bitcast %struct.TYPE_13__* %105 to i8*
  %108 = bitcast %struct.TYPE_13__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 40, i1 false)
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 1
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = xor i32 %114, 1
  store i32 %115, i32* %113, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %118 = load i32*, i32** %7, align 8
  %119 = call i32 @DrawSurfaceForSide(%struct.TYPE_16__* %116, %struct.TYPE_13__* %117, i32* %118)
  br label %120

120:                                              ; preds = %101, %100, %70, %62, %55, %36
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %19

123:                                              ; preds = %19
  br label %124

124:                                              ; preds = %123
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  store %struct.TYPE_16__* %127, %struct.TYPE_16__** %5, align 8
  br label %15

128:                                              ; preds = %15
  ret void
}

declare dso_local i32 @qprintf(i8*) #1

declare dso_local i32* @CopyWinding(i32*) #1

declare dso_local i32 @ClipSideIntoTree_r(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @DrawSurfaceForSide(%struct.TYPE_16__*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32* @ReverseWinding(i32*) #1

declare dso_local %struct.TYPE_13__* @malloc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
