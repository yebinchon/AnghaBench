; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_Svcmd_BotList_f.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_Svcmd_BotList_f.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TOKEN_CHARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"^1name             model            aifile              funname\0A\00", align 1
@g_numBots = common dso_local global i32 0, align 4
@g_botInfos = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"UnnamedPlayer\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"funname\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"model\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"visor/default\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"aifile\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"bots/default_c.c\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"%-16s %-16s %-20s %-20s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Svcmd_BotList_f() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %3, align 8
  %11 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %12 = zext i32 %11 to i64
  %13 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %14 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %15 = zext i32 %14 to i64
  %16 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %5, align 8
  %17 = load i32, i32* @MAX_TOKEN_CHARS, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %6, align 8
  %20 = call i32 @trap_Printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %76, %0
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* @g_numBots, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %79

25:                                               ; preds = %21
  %26 = load i32*, i32** @g_botInfos, align 8
  %27 = load i32, i32* %1, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @Info_ValueForKey(i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %32 = call i32 @strcpy(i8* %10, i8* %31)
  %33 = load i8, i8* %10, align 16
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %25
  %36 = call i32 @strcpy(i8* %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %25
  %38 = load i32*, i32** @g_botInfos, align 8
  %39 = load i32, i32* %1, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @Info_ValueForKey(i32 %42, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %44 = call i32 @strcpy(i8* %13, i8* %43)
  %45 = load i8, i8* %13, align 16
  %46 = icmp ne i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %37
  %48 = call i32 @strcpy(i8* %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  br label %49

49:                                               ; preds = %47, %37
  %50 = load i32*, i32** @g_botInfos, align 8
  %51 = load i32, i32* %1, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @Info_ValueForKey(i32 %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %56 = call i32 @strcpy(i8* %16, i8* %55)
  %57 = load i8, i8* %16, align 16
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %49
  %60 = call i32 @strcpy(i8* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %61

61:                                               ; preds = %59, %49
  %62 = load i32*, i32** @g_botInfos, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @Info_ValueForKey(i32 %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %68 = call i32 @strcpy(i8* %19, i8* %67)
  %69 = load i8, i8* %19, align 16
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %61
  %72 = call i32 @strcpy(i8* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %61
  %74 = call i8* @va(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i8* %10, i8* %16, i8* %19, i8* %13)
  %75 = call i32 @trap_Printf(i8* %74)
  br label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %1, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %1, align 4
  br label %21

79:                                               ; preds = %21
  %80 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %80)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_Printf(i8*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @Info_ValueForKey(i32, i8*) #2

declare dso_local i8* @va(i8*, i8*, i8*, i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
