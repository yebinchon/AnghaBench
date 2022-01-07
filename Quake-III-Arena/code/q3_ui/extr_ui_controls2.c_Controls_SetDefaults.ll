; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_controls2.c_Controls_SetDefaults.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_controls2.c_Controls_SetDefaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i32 }

@g_bindings = common dso_local global %struct.TYPE_21__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"m_pitch\00", align 1
@s_controls = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"m_filter\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cl_run\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"cg_autoswitch\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"sensitivity\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"in_joystick\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"joy_threshold\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"cl_freelook\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Controls_SetDefaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Controls_SetDefaults() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = load %struct.TYPE_21__*, %struct.TYPE_21__** @g_bindings, align 8
  store %struct.TYPE_21__* %3, %struct.TYPE_21__** %2, align 8
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %21, %0
  %5 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  br label %26

10:                                               ; preds = %4
  %11 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %10
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  %24 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %24, i32 1
  store %struct.TYPE_21__* %25, %struct.TYPE_21__** %2, align 8
  br label %4

26:                                               ; preds = %9
  %27 = call i64 @Controls_GetCvarDefault(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %28 = icmp slt i64 %27, 0
  %29 = zext i1 %28 to i32
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 7, i32 0), align 8
  %30 = call i64 @Controls_GetCvarDefault(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i64 %30, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 6, i32 0), align 8
  %31 = call i64 @Controls_GetCvarDefault(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i64 %31, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 5, i32 0), align 8
  %32 = call i64 @Controls_GetCvarDefault(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 4, i32 0), align 8
  %33 = call i64 @Controls_GetCvarDefault(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 3, i32 0), align 8
  %34 = call i64 @Controls_GetCvarDefault(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i64 %34, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 2, i32 0), align 8
  %35 = call i64 @Controls_GetCvarDefault(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  store i64 %35, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 1, i32 0), align 8
  %36 = call i64 @Controls_GetCvarDefault(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @s_controls, i32 0, i32 0, i32 0), align 8
  ret void
}

declare dso_local i64 @Controls_GetCvarDefault(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
