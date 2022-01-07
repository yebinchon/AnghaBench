; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_NetSource_HandleKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_NetSource_HandleKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@K_MOUSE1 = common dso_local global i32 0, align 4
@K_MOUSE2 = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@ui_netSource = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AS_MPLAYER = common dso_local global i64 0, align 8
@numNetSources = common dso_local global i64 0, align 8
@qtrue = common dso_local global i32 0, align 4
@AS_GLOBAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"ui_netSource\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, float*, i32)* @UI_NetSource_HandleKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @UI_NetSource_HandleKey(i32 %0, float* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store float* %1, float** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @K_MOUSE1, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %23, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @K_MOUSE2, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @K_ENTER, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @K_KP_ENTER, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %19, %15, %11, %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @K_MOUSE2, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %31 = load i64, i64* @AS_MPLAYER, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  br label %36

36:                                               ; preds = %33, %27
  br label %47

37:                                               ; preds = %23
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %41 = load i64, i64* @AS_MPLAYER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  br label %46

46:                                               ; preds = %43, %37
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %49 = load i64, i64* @numNetSources, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  br label %59

52:                                               ; preds = %47
  %53 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i64, i64* @numNetSources, align 8
  %57 = sub nsw i64 %56, 1
  store i64 %57, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %51
  %60 = load i32, i32* @qtrue, align 4
  %61 = call i32 @UI_BuildServerDisplayList(i32 %60)
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %63 = load i64, i64* @AS_GLOBAL, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* @qtrue, align 4
  %67 = call i32 @UI_StartServerRefresh(i32 %66)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ui_netSource, i32 0, i32 0), align 8
  %70 = call i32 @va(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* @qtrue, align 4
  store i32 %72, i32* %4, align 4
  br label %75

73:                                               ; preds = %19
  %74 = load i32, i32* @qfalse, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @UI_BuildServerDisplayList(i32) #1

declare dso_local i32 @UI_StartServerRefresh(i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i32) #1

declare dso_local i32 @va(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
