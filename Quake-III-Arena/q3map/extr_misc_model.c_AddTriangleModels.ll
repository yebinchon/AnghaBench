; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_misc_model.c_AddTriangleModels.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_misc_model.c_AddTriangleModels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"----- AddTriangleModels -----\0A\00", align 1
@num_entities = common dso_local global i32 0, align 4
@entities = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"misc_model\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"classname\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"angle\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"origin\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"WARNING: misc_model at %i %i %i without a model key\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c".md3\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c".MD3\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".ase\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c".ASE\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Unknown misc_model type: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"%5i triangle models\0A\00", align 1
@c_triangleModels = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [23 x i8] c"%5i triangle surfaces\0A\00", align 1
@c_triangleSurfaces = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [23 x i8] c"%5i triangle vertexes\0A\00", align 1
@c_triangleVertexes = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [22 x i8] c"%5i triangle indexes\0A\00", align 1
@c_triangleIndexes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddTriangleModels(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca float, align 4
  store i32* %0, i32** %2, align 8
  %8 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %80, %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @num_entities, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %83

13:                                               ; preds = %9
  %14 = load i32*, i32** @entities, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32* %17, i32** %4, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = call i8* @ValueForKey(i32* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %20 = call i32 @Q_stricmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %79, label %22

22:                                               ; preds = %13
  %23 = load i32*, i32** %4, align 8
  %24 = call float @FloatForKey(i32* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store float %24, float* %7, align 4
  %25 = load i32*, i32** %4, align 8
  %26 = load i64*, i64** %6, align 8
  %27 = call i32 @GetVectorForKey(i32* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i64* %26)
  %28 = load i32*, i32** %4, align 8
  %29 = call i8* @ValueForKey(i32* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i8* %29, i8** %5, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %48, label %34

34:                                               ; preds = %22
  %35 = load i64*, i64** %6, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i64*, i64** %6, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 1
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64*, i64** %6, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 %38, i32 %42, i32 %46)
  br label %80

48:                                               ; preds = %22
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @strstr(i8* %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @strstr(i8* %53, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52, %48
  %57 = load i8*, i8** %5, align 8
  %58 = load i64*, i64** %6, align 8
  %59 = load float, float* %7, align 4
  %60 = load i32*, i32** %2, align 8
  %61 = call i32 @InsertMD3Model(i8* %57, i64* %58, float %59, i32* %60)
  br label %80

62:                                               ; preds = %52
  %63 = load i8*, i8** %5, align 8
  %64 = call i64 @strstr(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @strstr(i8* %67, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66, %62
  %71 = load i8*, i8** %5, align 8
  %72 = load i64*, i64** %6, align 8
  %73 = load float, float* %7, align 4
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @InsertASEModel(i8* %71, i64* %72, float %73, i32* %74)
  br label %80

76:                                               ; preds = %66
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 (i8*, ...) @_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i8* %77)
  br label %80

79:                                               ; preds = %13
  br label %80

80:                                               ; preds = %79, %76, %70, %56, %34
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %9

83:                                               ; preds = %9
  %84 = load i32, i32* @c_triangleModels, align 4
  %85 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @c_triangleSurfaces, align 4
  %87 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i32 %86)
  %88 = load i32, i32* @c_triangleVertexes, align 4
  %89 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @c_triangleIndexes, align 4
  %91 = call i32 (i8*, ...) @qprintf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i32 %90)
  ret void
}

declare dso_local i32 @qprintf(i8*, ...) #1

declare dso_local i32 @Q_stricmp(i8*, i8*) #1

declare dso_local i8* @ValueForKey(i32*, i8*) #1

declare dso_local float @FloatForKey(i32*, i8*) #1

declare dso_local i32 @GetVectorForKey(i32*, i8*, i64*) #1

declare dso_local i32 @_printf(i8*, ...) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @InsertMD3Model(i8*, i64*, float, i32*) #1

declare dso_local i32 @InsertASEModel(i8*, i64*, float, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
