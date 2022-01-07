; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_gsubdiv.c_AAS_SubdivideArea_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_gsubdiv.c_AAS_SubdivideArea_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__**, i32*, i8* }

@.str = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1
@numgravitationalsubdivisions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @AAS_SubdivideArea_r(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @AAS_FindBestAreaSplitPlane(i32* %12, i32 %13, float* %9)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %60

16:                                               ; preds = %1
  %17 = load i32, i32* @numgravitationalsubdivisions, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @numgravitationalsubdivisions, align 4
  %19 = call i32 @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = load float, float* %9, align 4
  %22 = call i8* @FindFloatPlane(i32 %20, float %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @AAS_SplitArea(i32* %26, i32 %27, i32** %4, i32** %5)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load float, float* %9, align 4
  %33 = call i8* @FindFloatPlane(i32 %31, float %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = call %struct.TYPE_5__* (...) @AAS_AllocTmpNode()
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %6, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i8* null, i8** %38, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  store i32* %39, i32** %41, align 8
  %42 = call %struct.TYPE_5__* (...) @AAS_AllocTmpNode()
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %7, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i8* null, i8** %44, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32* %45, i32** %47, align 8
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = call %struct.TYPE_5__* @AAS_SubdivideArea_r(%struct.TYPE_5__* %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %52, i64 0
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = call %struct.TYPE_5__* @AAS_SubdivideArea_r(%struct.TYPE_5__* %54)
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 1
  store %struct.TYPE_5__* %55, %struct.TYPE_5__** %59, align 8
  br label %60

60:                                               ; preds = %16, %1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  ret %struct.TYPE_5__* %61
}

declare dso_local i64 @AAS_FindBestAreaSplitPlane(i32*, i32, float*) #1

declare dso_local i32 @qprintf(i8*, i32) #1

declare dso_local i8* @FindFloatPlane(i32, float) #1

declare dso_local i32 @AAS_SplitArea(i32*, i32, i32**, i32**) #1

declare dso_local %struct.TYPE_5__* @AAS_AllocTmpNode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
