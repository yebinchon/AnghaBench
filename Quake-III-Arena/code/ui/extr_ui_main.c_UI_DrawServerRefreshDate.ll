; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawServerRefreshDate.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_main.c_UI_DrawServerRefreshDate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_9__ = type { i32, i32 }

@uiInfo = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@PULSE_DIVISOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Getting info for %d servers (ESC to cancel)\00", align 1
@ui_netSource = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"ui_lastServerRefresh_%i\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Refresh Time: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, float, double*, i32)* @UI_DrawServerRefreshDate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UI_DrawServerRefreshDate(%struct.TYPE_9__* %0, float %1, double* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca float, align 4
  %7 = alloca double*, align 8
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  %10 = alloca double*, align 8
  %11 = alloca [64 x i8], align 16
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store float %1, float* %6, align 4
  store double* %2, double** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 1, i32 0), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %4
  %15 = load double*, double** %7, align 8
  %16 = getelementptr inbounds double, double* %15, i64 0
  %17 = load double, double* %16, align 8
  %18 = fmul double 8.000000e-01, %17
  %19 = load double*, double** %9, align 8
  %20 = getelementptr inbounds double, double* %19, i64 0
  store double %18, double* %20, align 8
  %21 = load double*, double** %7, align 8
  %22 = getelementptr inbounds double, double* %21, i64 1
  %23 = load double, double* %22, align 8
  %24 = fmul double 8.000000e-01, %23
  %25 = load double*, double** %9, align 8
  %26 = getelementptr inbounds double, double* %25, i64 1
  store double %24, double* %26, align 8
  %27 = load double*, double** %7, align 8
  %28 = getelementptr inbounds double, double* %27, i64 2
  %29 = load double, double* %28, align 8
  %30 = fmul double 8.000000e-01, %29
  %31 = load double*, double** %9, align 8
  %32 = getelementptr inbounds double, double* %31, i64 2
  store double %30, double* %32, align 8
  %33 = load double*, double** %7, align 8
  %34 = getelementptr inbounds double, double* %33, i64 3
  %35 = load double, double* %34, align 8
  %36 = fmul double 8.000000e-01, %35
  %37 = load double*, double** %9, align 8
  %38 = getelementptr inbounds double, double* %37, i64 3
  store double %36, double* %38, align 8
  %39 = load double*, double** %7, align 8
  %40 = load double*, double** %9, align 8
  %41 = load double*, double** %10, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @uiInfo, i32 0, i32 0, i32 0), align 8
  %43 = load i32, i32* @PULSE_DIVISOR, align 4
  %44 = sdiv i32 %42, %43
  %45 = call double @sin(i32 %44)
  %46 = fmul double 5.000000e-01, %45
  %47 = fadd double 5.000000e-01, %46
  %48 = call i32 @LerpColor(double* %39, double* %40, double* %41, double %47)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load float, float* %6, align 4
  %56 = load double*, double** %10, align 8
  %57 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %58 = call i8* @trap_LAN_GetServerCount(i8* %57)
  %59 = call i32 @va(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %58)
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @Text_Paint(i32 %51, i32 %54, float %55, double* %56, i32 %59, i32 0, i32 0, i32 %60)
  br label %80

62:                                               ; preds = %4
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %64 = load i8*, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ui_netSource, i32 0, i32 0), align 8
  %65 = call i32 @va(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %64)
  %66 = call i32 @UI_Cvar_VariableString(i32 %65)
  %67 = call i32 @Q_strncpyz(i8* %63, i32 %66, i32 64)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load float, float* %6, align 4
  %75 = load double*, double** %7, align 8
  %76 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %77 = call i32 @va(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %76)
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @Text_Paint(i32 %70, i32 %73, float %74, double* %75, i32 %77, i32 0, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %62, %14
  ret void
}

declare dso_local i32 @LerpColor(double*, double*, double*, double) #1

declare dso_local double @sin(i32) #1

declare dso_local i32 @Text_Paint(i32, i32, float, double*, i32, i32, i32, i32) #1

declare dso_local i32 @va(i8*, i8*) #1

declare dso_local i8* @trap_LAN_GetServerCount(i8*) #1

declare dso_local i32 @Q_strncpyz(i8*, i32, i32) #1

declare dso_local i32 @UI_Cvar_VariableString(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
