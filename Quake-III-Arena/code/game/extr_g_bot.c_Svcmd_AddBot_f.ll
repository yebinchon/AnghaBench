; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_Svcmd_AddBot_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_Svcmd_AddBot_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"bot_enable\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Usage: Addbot <botname> [skill 1-5] [team] [msec delay] [altname]\0A\00", align 1
@level = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"cl_running\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"loaddefered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Svcmd_AddBot_f() #0 {
  %1 = alloca float, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %3, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %4, align 8
  %13 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %14 = zext i32 %13 to i64
  %15 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %16 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %17 = zext i32 %16 to i64
  %18 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %19 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %22 = call i64 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %0
  store i32 1, i32* %8, align 4
  br label %69

25:                                               ; preds = %0
  %26 = trunc i64 %10 to i32
  %27 = call i32 @trap_Argv(i32 1, i8* %12, i32 %26)
  %28 = getelementptr inbounds i8, i8* %12, i64 0
  %29 = load i8, i8* %28, align 16
  %30 = icmp ne i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 @trap_Printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %8, align 4
  br label %69

33:                                               ; preds = %25
  %34 = trunc i64 %17 to i32
  %35 = call i32 @trap_Argv(i32 2, i8* %18, i32 %34)
  %36 = getelementptr inbounds i8, i8* %18, i64 0
  %37 = load i8, i8* %36, align 16
  %38 = icmp ne i8 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  store float 4.000000e+00, float* %1, align 4
  br label %42

40:                                               ; preds = %33
  %41 = call float @atof(i8* %18)
  store float %41, float* %1, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = trunc i64 %20 to i32
  %44 = call i32 @trap_Argv(i32 3, i8* %21, i32 %43)
  %45 = trunc i64 %17 to i32
  %46 = call i32 @trap_Argv(i32 4, i8* %18, i32 %45)
  %47 = getelementptr inbounds i8, i8* %18, i64 0
  %48 = load i8, i8* %47, align 16
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %53

51:                                               ; preds = %42
  %52 = call i32 @atoi(i8* %18)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = trunc i64 %14 to i32
  %55 = call i32 @trap_Argv(i32 5, i8* %15, i32 %54)
  %56 = load float, float* %1, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @G_AddBot(i8* %12, float %56, i8* %21, i32 %57, i8* %15)
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 0), align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @level, i32 0, i32 1), align 4
  %61 = sub nsw i32 %59, %60
  %62 = icmp sgt i32 %61, 1000
  br i1 %62, label %63, label %68

63:                                               ; preds = %53
  %64 = call i64 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @trap_SendServerCommand(i32 -1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %63, %53
  store i32 0, i32* %8, align 4
  br label %69

69:                                               ; preds = %68, %31, %24
  %70 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %8, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @trap_Cvar_VariableIntegerValue(i8*) #2

declare dso_local i32 @trap_Argv(i32, i8*, i32) #2

declare dso_local i32 @trap_Printf(i8*) #2

declare dso_local float @atof(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @G_AddBot(i8*, float, i8*, i32, i8*) #2

declare dso_local i32 @trap_SendServerCommand(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
