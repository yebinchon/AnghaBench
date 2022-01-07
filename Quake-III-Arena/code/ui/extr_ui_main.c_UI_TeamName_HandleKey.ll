; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_TeamName_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_TeamName_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ui_blueTeam\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ui_redTeam\00", align 1
@uiInfo = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, float*, i32, i64)* @UI_TeamName_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @UI_TeamName_HandleKey(i32 %0, float* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @K_MOUSE1, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @K_MOUSE2, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @K_ENTER, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @K_KP_ENTER, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %67

26:                                               ; preds = %22, %18, %14, %4
  %27 = load i64, i64* %9, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  %31 = call i32 @UI_Cvar_VariableString(i8* %30)
  %32 = call i32 @UI_TeamIndexFromName(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @K_MOUSE2, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %10, align 4
  br label %42

39:                                               ; preds = %26
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 0, i32* %10, align 4
  br label %54

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 0), align 8
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %50, %47
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uiInfo, i32 0, i32 1), align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @trap_Cvar_Set(i8* %58, i32 %64)
  %66 = load i64, i64* @qtrue, align 8
  store i64 %66, i64* %5, align 8
  br label %69

67:                                               ; preds = %22
  %68 = load i64, i64* @qfalse, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %67, %54
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local i32 @UI_TeamIndexFromName(i32) #1

declare dso_local i32 @UI_Cvar_VariableString(i8*) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
