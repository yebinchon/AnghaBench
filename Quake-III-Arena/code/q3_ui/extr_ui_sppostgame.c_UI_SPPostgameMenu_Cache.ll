; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_Cache.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_sppostgame.c_UI_SPPostgameMenu_Cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"com_buildscript\00", align 1
@ART_MENU0 = common dso_local global i32 0, align 4
@ART_MENU1 = common dso_local global i32 0, align 4
@ART_REPLAY0 = common dso_local global i32 0, align 4
@ART_REPLAY1 = common dso_local global i32 0, align 4
@ART_NEXT0 = common dso_local global i32 0, align 4
@ART_NEXT1 = common dso_local global i32 0, align 4
@ui_medalPicNames = common dso_local global i32* null, align 8
@ui_medalSounds = common dso_local global i8** null, align 8
@qfalse = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"music/loss.wav\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"music/win.wav\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"sound/player/announce/youwin.wav\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_SPPostgameMenu_Cache() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i64 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i64 %3, i64* %2, align 8
  %4 = load i32, i32* @ART_MENU0, align 4
  %5 = call i32 @trap_R_RegisterShaderNoMip(i32 %4)
  %6 = load i32, i32* @ART_MENU1, align 4
  %7 = call i32 @trap_R_RegisterShaderNoMip(i32 %6)
  %8 = load i32, i32* @ART_REPLAY0, align 4
  %9 = call i32 @trap_R_RegisterShaderNoMip(i32 %8)
  %10 = load i32, i32* @ART_REPLAY1, align 4
  %11 = call i32 @trap_R_RegisterShaderNoMip(i32 %10)
  %12 = load i32, i32* @ART_NEXT0, align 4
  %13 = call i32 @trap_R_RegisterShaderNoMip(i32 %12)
  %14 = load i32, i32* @ART_NEXT1, align 4
  %15 = call i32 @trap_R_RegisterShaderNoMip(i32 %14)
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %33, %0
  %17 = load i32, i32* %1, align 4
  %18 = icmp slt i32 %17, 6
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = load i32*, i32** @ui_medalPicNames, align 8
  %21 = load i32, i32* %1, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @trap_R_RegisterShaderNoMip(i32 %24)
  %26 = load i8**, i8*** @ui_medalSounds, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8*, i8** %26, i64 %28
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @qfalse, align 4
  %32 = call i32 @trap_S_RegisterSound(i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %1, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %1, align 4
  br label %16

36:                                               ; preds = %16
  %37 = load i64, i64* %2, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* @qfalse, align 4
  %41 = call i32 @trap_S_RegisterSound(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @qfalse, align 4
  %43 = call i32 @trap_S_RegisterSound(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @qfalse, align 4
  %45 = call i32 @trap_S_RegisterSound(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %39, %36
  ret void
}

declare dso_local i64 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @trap_R_RegisterShaderNoMip(i32) #1

declare dso_local i32 @trap_S_RegisterSound(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
