; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_StartupVariable.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_common.c_Com_StartupVariable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@com_numConsoleLines = common dso_local global i32 0, align 4
@com_consoleLines = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CVAR_USER_CREATED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Com_StartupVariable(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @com_numConsoleLines, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %45

10:                                               ; preds = %6
  %11 = load i32*, i32** @com_consoleLines, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @Cmd_TokenizeString(i32 %15)
  %17 = call i8* @Cmd_Argv(i32 0)
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %42

21:                                               ; preds = %10
  %22 = call i8* @Cmd_Argv(i32 1)
  store i8* %22, i8** %4, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @strcmp(i8* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25, %21
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @Cmd_Argv(i32 2)
  %33 = call i32 @Cvar_Set(i8* %31, i8* %32)
  %34 = load i8*, i8** %4, align 8
  %35 = call %struct.TYPE_3__* @Cvar_Get(i8* %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.TYPE_3__* %35, %struct.TYPE_3__** %5, align 8
  %36 = load i32, i32* @CVAR_USER_CREATED, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %30, %25
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %6

45:                                               ; preds = %6
  ret void
}

declare dso_local i32 @Cmd_TokenizeString(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @Cmd_Argv(i32) #1

declare dso_local i32 @Cvar_Set(i8*, i8*) #1

declare dso_local %struct.TYPE_3__* @Cvar_Get(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
