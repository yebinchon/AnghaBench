; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_writebsp.c_BeginModel.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_writebsp.c_BeginModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@nummodels = common dso_local global i64 0, align 8
@MAX_MAP_MODELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"MAX_MAP_MODELS\00", align 1
@dmodels = common dso_local global %struct.TYPE_9__* null, align 8
@numfaces = common dso_local global i8* null, align 8
@numleafs = common dso_local global i32 0, align 4
@firstmodleaf = common dso_local global i32 0, align 4
@numedges = common dso_local global i32 0, align 4
@firstmodeledge = common dso_local global i32 0, align 4
@firstmodelface = common dso_local global i8* null, align 8
@entities = common dso_local global %struct.TYPE_8__* null, align 8
@entity_num = common dso_local global i64 0, align 8
@mapbrushes = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BeginModel() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i64, i64* @nummodels, align 8
  %10 = load i64, i64* @MAX_MAP_MODELS, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @Error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dmodels, align 8
  %16 = load i64, i64* @nummodels, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i64 %16
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %1, align 8
  %18 = load i8*, i8** @numfaces, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  store i8* %18, i8** %20, align 8
  %21 = load i32, i32* @numleafs, align 4
  store i32 %21, i32* @firstmodleaf, align 4
  %22 = load i32, i32* @numedges, align 4
  store i32 %22, i32* @firstmodeledge, align 4
  %23 = load i8*, i8** @numfaces, align 8
  store i8* %23, i8** @firstmodelface, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @entities, align 8
  %25 = load i64, i64* @entity_num, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i64 %25
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %6, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %2, align 4
  %30 = load i32, i32* %2, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @ClearBounds(i32 %35, i32 %36)
  %38 = load i32, i32* %2, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %66, %14
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mapbrushes, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i64 %46
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %4, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  br label %66

53:                                               ; preds = %43
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @AddPointToBounds(i32 %56, i32 %57, i32 %58)
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @AddPointToBounds(i32 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %53, %52
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %39

69:                                               ; preds = %39
  %70 = load i32, i32* %7, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @VectorCopy(i32 %70, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @VectorCopy(i32 %75, i32 %78)
  ret void
}

declare dso_local i32 @Error(i8*) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
