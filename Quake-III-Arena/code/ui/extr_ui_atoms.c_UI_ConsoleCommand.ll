; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_atoms.c_UI_ConsoleCommand.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_atoms.c_UI_ConsoleCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"ui_test\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ui_report\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"ui_load\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"remapShader\00", align 1
@MAX_QPATH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"postgame\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"ui_cache\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ui_teamOrders\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"ui_cdkey\00", align 1
@qfalse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @UI_ConsoleCommand(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 1), align 4
  %10 = sub nsw i32 %8, %9
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 0), align 4
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0, i32 1), align 4
  %12 = call i8* @UI_Argv(i32 0)
  store i8* %12, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = call i64 @Q_stricmp(i8* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @qtrue, align 4
  %18 = call i32 @UI_ShowPostGame(i32 %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load i8*, i8** %4, align 8
  %21 = call i64 @Q_stricmp(i8* %20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = call i32 (...) @UI_Report()
  %25 = load i32, i32* @qtrue, align 4
  store i32 %25, i32* %2, align 4
  br label %87

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i64 @Q_stricmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = call i32 (...) @UI_Load()
  %32 = load i32, i32* @qtrue, align 4
  store i32 %32, i32* %2, align 4
  br label %87

33:                                               ; preds = %26
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @Q_stricmp(i8* %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = call i32 (...) @trap_Argc()
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i32, i32* @MAX_QPATH, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %5, align 8
  %44 = alloca i8, i64 %42, align 16
  store i64 %42, i64* %6, align 8
  %45 = load i32, i32* @MAX_QPATH, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %7, align 8
  %48 = call i8* @UI_Argv(i32 1)
  %49 = trunc i64 %42 to i32
  %50 = call i32 @Q_strncpyz(i8* %44, i8* %48, i32 %49)
  %51 = call i8* @UI_Argv(i32 2)
  %52 = trunc i64 %46 to i32
  %53 = call i32 @Q_strncpyz(i8* %47, i8* %51, i32 %52)
  %54 = call i8* @UI_Argv(i32 3)
  %55 = call i32 @trap_R_RemapShader(i8* %44, i8* %47, i8* %54)
  %56 = load i32, i32* @qtrue, align 4
  store i32 %56, i32* %2, align 4
  %57 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %57)
  br label %87

58:                                               ; preds = %37
  br label %59

59:                                               ; preds = %58, %33
  %60 = load i8*, i8** %4, align 8
  %61 = call i64 @Q_stricmp(i8* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = call i32 (...) @UI_CalcPostGameStats()
  %65 = load i32, i32* @qtrue, align 4
  store i32 %65, i32* %2, align 4
  br label %87

66:                                               ; preds = %59
  %67 = load i8*, i8** %4, align 8
  %68 = call i64 @Q_stricmp(i8* %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = call i32 (...) @UI_Cache_f()
  %72 = load i32, i32* @qtrue, align 4
  store i32 %72, i32* %2, align 4
  br label %87

73:                                               ; preds = %66
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @Q_stricmp(i8* %74, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @qtrue, align 4
  store i32 %78, i32* %2, align 4
  br label %87

79:                                               ; preds = %73
  %80 = load i8*, i8** %4, align 8
  %81 = call i64 @Q_stricmp(i8* %80, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @qtrue, align 4
  store i32 %84, i32* %2, align 4
  br label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @qfalse, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %85, %83, %77, %70, %63, %40, %30, %23
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i8* @UI_Argv(i32) #1

declare dso_local i64 @Q_stricmp(i8*, i8*) #1

declare dso_local i32 @UI_ShowPostGame(i32) #1

declare dso_local i32 @UI_Report(...) #1

declare dso_local i32 @UI_Load(...) #1

declare dso_local i32 @trap_Argc(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @trap_R_RemapShader(i8*, i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @UI_CalcPostGameStats(...) #1

declare dso_local i32 @UI_Cache_f(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
