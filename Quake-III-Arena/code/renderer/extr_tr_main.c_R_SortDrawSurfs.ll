; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_main.c_R_SortDrawSurfs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_main.c_R_SortDrawSurfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 (i32, i8*, i32)* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@MAX_DRAWSURFS = common dso_local global i32 0, align 4
@SS_PORTAL = common dso_local global i64 0, align 8
@SS_BAD = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ERR_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Shader '%s'with sort == SS_BAD\00", align 1
@r_portalOnly = common dso_local global %struct.TYPE_13__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SortDrawSurfs(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @R_AddDrawSurfCmd(%struct.TYPE_11__* %13, i32 %14)
  br label %80

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MAX_DRAWSURFS, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @MAX_DRAWSURFS, align 4
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @qsortFast(%struct.TYPE_11__* %23, i32 %24, i32 4)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %73, %22
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %26
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @R_DecomposeSort(i32 %36, i32* %7, %struct.TYPE_10__** %5, i32* %6, i32* %8)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SS_PORTAL, align 8
  %42 = icmp sgt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %30
  br label %76

44:                                               ; preds = %30
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SS_BAD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @ri, i32 0, i32 0), align 8
  %52 = load i32, i32* @ERR_DROP, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 %51(i32 %52, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %50, %44
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i64 %60
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @R_MirrorViewBySurface(%struct.TYPE_11__* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** @r_portalOnly, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %80

71:                                               ; preds = %65
  br label %76

72:                                               ; preds = %57
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %26

76:                                               ; preds = %71, %43, %26
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @R_AddDrawSurfCmd(%struct.TYPE_11__* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %70, %12
  ret void
}

declare dso_local i32 @R_AddDrawSurfCmd(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @qsortFast(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @R_DecomposeSort(i32, i32*, %struct.TYPE_10__**, i32*, i32*) #1

declare dso_local i64 @R_MirrorViewBySurface(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
