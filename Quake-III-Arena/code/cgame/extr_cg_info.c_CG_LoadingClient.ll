; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_info.c_CG_LoadingClient.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_info.c_CG_LoadingClient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@MAX_QPATH = common dso_local global i32 0, align 4
@CS_PLAYERS = common dso_local global i64 0, align 8
@loadingPlayerIconCount = common dso_local global i64 0, align 8
@MAX_LOADING_PLAYER_ICONS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"models/players/%s/icon_%s.tga\00", align 1
@loadingPlayerIcons = common dso_local global i64* null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"models/players/characters/%s/icon_%s.tga\00", align 1
@DEFAULT_MODEL = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@cgs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GT_SINGLE_PLAYER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [29 x i8] c"sound/player/announce/%s.wav\00", align 1
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_LoadingClient(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @MAX_QPATH, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load i32, i32* @MAX_QPATH, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %16 = load i32, i32* @MAX_QPATH, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %19 = load i64, i64* @CS_PLAYERS, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %19, %21
  %23 = call i8* @CG_ConfigString(i64 %22)
  store i8* %23, i8** %3, align 8
  %24 = load i64, i64* @loadingPlayerIconCount, align 8
  %25 = load i64, i64* @MAX_LOADING_PLAYER_ICONS, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %84

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 @Info_ValueForKey(i8* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = trunc i64 %14 to i32
  %31 = call i32 @Q_strncpyz(i8* %15, i32 %29, i32 %30)
  %32 = call i8* @Q_strrchr(i8* %15, i8 signext 47)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %27
  %36 = load i8*, i8** %4, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %4, align 8
  store i8 0, i8* %36, align 1
  br label %39

38:                                               ; preds = %27
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* @MAX_QPATH, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @Com_sprintf(i8* %18, i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %15, i8* %41)
  %43 = call i64 @trap_R_RegisterShaderNoMip(i8* %18)
  %44 = load i64*, i64** @loadingPlayerIcons, align 8
  %45 = load i64, i64* @loadingPlayerIconCount, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 %43, i64* %46, align 8
  %47 = load i64*, i64** @loadingPlayerIcons, align 8
  %48 = load i64, i64* @loadingPlayerIconCount, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %39
  %53 = load i32, i32* @MAX_QPATH, align 4
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 @Com_sprintf(i8* %18, i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %15, i8* %54)
  %56 = call i64 @trap_R_RegisterShaderNoMip(i8* %18)
  %57 = load i64*, i64** @loadingPlayerIcons, align 8
  %58 = load i64, i64* @loadingPlayerIconCount, align 8
  %59 = getelementptr inbounds i64, i64* %57, i64 %58
  store i64 %56, i64* %59, align 8
  br label %60

60:                                               ; preds = %52, %39
  %61 = load i64*, i64** @loadingPlayerIcons, align 8
  %62 = load i64, i64* @loadingPlayerIconCount, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* @MAX_QPATH, align 4
  %68 = load i8*, i8** @DEFAULT_MODEL, align 8
  %69 = call i32 @Com_sprintf(i8* %18, i32 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %70 = call i64 @trap_R_RegisterShaderNoMip(i8* %18)
  %71 = load i64*, i64** @loadingPlayerIcons, align 8
  %72 = load i64, i64* @loadingPlayerIconCount, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %70, i64* %73, align 8
  br label %74

74:                                               ; preds = %66, %60
  %75 = load i64*, i64** @loadingPlayerIcons, align 8
  %76 = load i64, i64* @loadingPlayerIconCount, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i64, i64* @loadingPlayerIconCount, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* @loadingPlayerIconCount, align 8
  br label %83

83:                                               ; preds = %80, %74
  br label %84

84:                                               ; preds = %83, %1
  %85 = load i8*, i8** %3, align 8
  %86 = call i32 @Info_ValueForKey(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %87 = trunc i64 %10 to i32
  %88 = call i32 @Q_strncpyz(i8* %12, i32 %86, i32 %87)
  %89 = call i32 @Q_CleanStr(i8* %12)
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cgs, i32 0, i32 0), align 8
  %91 = load i64, i64* @GT_SINGLE_PLAYER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %84
  %94 = call i32 @va(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %12)
  %95 = load i32, i32* @qtrue, align 4
  %96 = call i32 @trap_S_RegisterSound(i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %84
  %98 = call i32 @CG_LoadingString(i8* %12)
  %99 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %99)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @CG_ConfigString(i64) #2

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #2

declare dso_local i32 @Info_ValueForKey(i8*, i8*) #2

declare dso_local i8* @Q_strrchr(i8*, i8 signext) #2

declare dso_local i32 @Com_sprintf(i8*, i32, i8*, i8*, i8*) #2

declare dso_local i64 @trap_R_RegisterShaderNoMip(i8*) #2

declare dso_local i32 @Q_CleanStr(i8*) #2

declare dso_local i32 @trap_S_RegisterSound(i32, i32) #2

declare dso_local i32 @va(i8*, i8*) #2

declare dso_local i32 @CG_LoadingString(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
