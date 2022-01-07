; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorBuildCpuSql.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_monitorBuildCpuSql.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"monitor:%p, get cpu usage failed.\00", align 1
@monitor = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c", %f, %f, %d\00", align 1
@tsNumOfCores = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @monitorBuildCpuSql(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store float 0.000000e+00, float* %3, align 4
  store float 0.000000e+00, float* %4, align 4
  %6 = call i32 @taosGetCpuUsage(float* %3, float* %4)
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @monitorError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load float, float* %3, align 4
  %16 = load float, float* %4, align 4
  %17 = fcmp ole float %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load float, float* %4, align 4
  %20 = fadd float %19, 0x3FB99999A0000000
  store float %20, float* %3, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load i8*, i8** %2, align 8
  %23 = load float, float* %4, align 4
  %24 = load float, float* %3, align 4
  %25 = load i32, i32* @tsNumOfCores, align 4
  %26 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), float %23, float %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @taosGetCpuUsage(float*, float*) #1

declare dso_local i32 @monitorError(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, float, float, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
