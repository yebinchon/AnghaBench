; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_LoadBots.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_bot.c_G_LoadBots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"bot_enable\00", align 1
@g_numBots = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"g_botsFile\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@CVAR_ROM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"scripts/bots.txt\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".bot\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"scripts/\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"%i bots parsed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @G_LoadBots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @G_LoadBots() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = call i32 @trap_Cvar_VariableIntegerValue(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %56

11:                                               ; preds = %0
  store i64 0, i64* @g_numBots, align 8
  %12 = load i32, i32* @CVAR_INIT, align 4
  %13 = load i32, i32* @CVAR_ROM, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @trap_Cvar_Register(%struct.TYPE_3__* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i8, i8* %17, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @G_LoadBotsFromFile(i8* %22)
  br label %26

24:                                               ; preds = %11
  %25 = call i32 @G_LoadBotsFromFile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %20
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %28 = call i32 @trap_FS_GetFileList(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %27, i32 1024)
  store i32 %28, i32* %2, align 4
  %29 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %29, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %44, %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %2, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %30
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @strlen(i8* %35)
  store i32 %36, i32* %7, align 4
  %37 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %38 = call i32 @strcpy(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @strcat(i8* %39, i8* %40)
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %43 = call i32 @G_LoadBotsFromFile(i8* %42)
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %6, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  %49 = load i8*, i8** %5, align 8
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %5, align 8
  br label %30

52:                                               ; preds = %30
  %53 = load i64, i64* @g_numBots, align 8
  %54 = call i32 @va(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i64 %53)
  %55 = call i32 @trap_Printf(i32 %54)
  br label %56

56:                                               ; preds = %52, %10
  ret void
}

declare dso_local i32 @trap_Cvar_VariableIntegerValue(i8*) #1

declare dso_local i32 @trap_Cvar_Register(%struct.TYPE_3__*, i8*, i8*, i32) #1

declare dso_local i32 @G_LoadBotsFromFile(i8*) #1

declare dso_local i32 @trap_FS_GetFileList(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @trap_Printf(i32) #1

declare dso_local i32 @va(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
