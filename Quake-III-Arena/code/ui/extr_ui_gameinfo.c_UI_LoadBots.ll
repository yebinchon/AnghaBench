; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_gameinfo.c_UI_LoadBots.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_gameinfo.c_UI_LoadBots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@ui_numBots = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"g_botsFile\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CVAR_INIT = common dso_local global i32 0, align 4
@CVAR_ROM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"scripts/bots.txt\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"scripts\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".bot\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"scripts/\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"%i bots parsed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UI_LoadBots() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 0, i64* @ui_numBots, align 8
  %8 = load i32, i32* @CVAR_INIT, align 4
  %9 = load i32, i32* @CVAR_ROM, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @trap_Cvar_Register(%struct.TYPE_3__* %1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8, i8* %13, align 1
  %15 = icmp ne i8 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @UI_LoadBotsFromFile(i8* %18)
  br label %22

20:                                               ; preds = %0
  %21 = call i32 @UI_LoadBotsFromFile(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %16
  %23 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %24 = call i32 @trap_FS_GetFileList(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %23, i32 1024)
  store i32 %24, i32* %2, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  store i8* %25, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %40, %22
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %7, align 4
  %33 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @strcat(i8* %35, i8* %36)
  %38 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %39 = call i32 @UI_LoadBotsFromFile(i8* %38)
  br label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = load i8*, i8** %5, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %5, align 8
  br label %26

48:                                               ; preds = %26
  %49 = load i64, i64* @ui_numBots, align 8
  %50 = call i32 @va(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 %49)
  %51 = call i32 @trap_Print(i32 %50)
  ret void
}

declare dso_local i32 @trap_Cvar_Register(%struct.TYPE_3__*, i8*, i8*, i32) #1

declare dso_local i32 @UI_LoadBotsFromFile(i8*) #1

declare dso_local i32 @trap_FS_GetFileList(i8*, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @trap_Print(i32) #1

declare dso_local i32 @va(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
