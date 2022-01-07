; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playermodel.c_PlayerModel_BuildList.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_playermodel.c_PlayerModel_BuildList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32*, i64 }

@.str = private unnamed_addr constant [16 x i8] c"com_buildscript\00", align 1
@s_playermodel = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"models/players\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@MAX_PLAYERMODELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"models/players/%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"tga\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"icon_\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"models/players/%s/%s\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"sound/player/announce/%s_wins.wav\00", align 1
@qfalse = common dso_local global i32 0, align 4
@MAX_MODELSPERPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @PlayerModel_BuildList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PlayerModel_BuildList() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [2048 x i8], align 16
  %4 = alloca [2048 x i8], align 16
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %13, i64* %12, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 3), align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %14 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  %15 = call i32 @trap_FS_GetFileList(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* %14, i32 2048)
  store i32 %15, i32* %1, align 4
  %16 = getelementptr inbounds [2048 x i8], [2048 x i8]* %3, i64 0, i64 0
  store i8* %16, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %109, %0
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %23 = load i32, i32* @MAX_PLAYERMODELS, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ]
  br i1 %26, label %27, label %117

27:                                               ; preds = %25
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 47
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %42, i64 %45
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %41, %32, %27
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @strcmp(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %51, %47
  br label %109

56:                                               ; preds = %51
  %57 = load i8*, i8** %6, align 8
  %58 = call i8* @va(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i8* %57)
  %59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %60 = call i32 @trap_FS_GetFileList(i8* %58, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i8* %59, i32 2048)
  store i32 %60, i32* %2, align 4
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  store i8* %61, i8** %7, align 8
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %100, %56
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* %2, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %62
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %68 = load i32, i32* @MAX_PLAYERMODELS, align 4
  %69 = icmp slt i32 %67, %68
  br label %70

70:                                               ; preds = %66, %62
  %71 = phi i1 [ false, %62 ], [ %69, %66 ]
  br i1 %71, label %72, label %108

72:                                               ; preds = %70
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @strlen(i8* %73)
  store i32 %74, i32* %11, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %77 = call i32 @COM_StripExtension(i8* %75, i8* %76)
  %78 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %79 = call i32 @Q_stricmpn(i8* %78, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 5)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %72
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 2), align 8
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %90 = call i32 @Com_sprintf(i32 %87, i32 4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %88, i8* %89)
  br label %91

91:                                               ; preds = %81, %72
  %92 = load i64, i64* %12, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %96 = call i8* @va(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i8* %95)
  %97 = load i32, i32* @qfalse, align 4
  %98 = call i32 @trap_S_RegisterSound(i8* %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %91
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %103, 1
  %105 = load i8*, i8** %7, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %7, align 8
  br label %62

108:                                              ; preds = %70
  br label %109

109:                                              ; preds = %108, %55
  %110 = load i32, i32* %8, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %10, align 4
  %113 = add nsw i32 %112, 1
  %114 = load i8*, i8** %6, align 8
  %115 = sext i32 %113 to i64
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  store i8* %116, i8** %6, align 8
  br label %17

117:                                              ; preds = %25
  %118 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %119 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %120 = sdiv i32 %118, %119
  store i32 %120, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 1), align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 0), align 8
  %122 = load i32, i32* @MAX_MODELSPERPAGE, align 4
  %123 = srem i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %117
  %126 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 1), align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @s_playermodel, i32 0, i32 1), align 4
  br label %128

128:                                              ; preds = %125, %117
  ret void
}

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @trap_FS_GetFileList(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @va(i8*, i8*) #1

declare dso_local i32 @COM_StripExtension(i8*, i8*) #1

declare dso_local i32 @Q_stricmpn(i8*, i8*, i32) #1

declare dso_local i32 @Com_sprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @trap_S_RegisterSound(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
