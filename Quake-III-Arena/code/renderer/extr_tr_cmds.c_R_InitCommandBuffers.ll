; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_cmds.c_R_InitCommandBuffers.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_cmds.c_R_InitCommandBuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (i32, i8*)* }

@qfalse = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@r_smp = common dso_local global %struct.TYPE_5__* null, align 8
@ri = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Trying SMP acceleration...\0A\00", align 1
@RB_RenderThread = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"...succeeded.\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"...failed.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_InitCommandBuffers() #0 {
  %1 = load i32, i32* @qfalse, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 0), align 4
  %2 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_smp, align 8
  %3 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %0
  %7 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %8 = load i32, i32* @PRINT_ALL, align 4
  %9 = call i32 %7(i32 %8, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @RB_RenderThread, align 4
  %11 = call i64 @GLimp_SpawnRenderThread(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %6
  %14 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %15 = load i32, i32* @PRINT_ALL, align 4
  %16 = call i32 %14(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %17 = load i32, i32* @qtrue, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glConfig, i32 0, i32 0), align 4
  br label %22

18:                                               ; preds = %6
  %19 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ri, i32 0, i32 0), align 8
  %20 = load i32, i32* @PRINT_ALL, align 4
  %21 = call i32 %19(i32 %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %22

22:                                               ; preds = %18, %13
  br label %23

23:                                               ; preds = %22, %0
  ret void
}

declare dso_local i64 @GLimp_SpawnRenderThread(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
