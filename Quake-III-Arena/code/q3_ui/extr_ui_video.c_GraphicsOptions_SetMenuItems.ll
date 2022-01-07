; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_GraphicsOptions_SetMenuItems.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_GraphicsOptions_SetMenuItems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"r_mode\00", align 1
@s_graphicsoptions = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"r_allowExtensions\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"r_picmip\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"r_vertexLight\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"r_texturebits\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"r_textureMode\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"GL_LINEAR_MIPMAP_NEAREST\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"r_lodBias\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"r_subdivisions\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"r_colorbits\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GraphicsOptions_SetMenuItems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_SetMenuItems() #0 {
  %1 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 4
  br label %5

5:                                                ; preds = %4, %0
  %6 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 4
  %7 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 4
  %8 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %9 = sub nsw i32 3, %8
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %5
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  br label %18

13:                                               ; preds = %5
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  %15 = icmp sgt i32 %14, 3
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %17, %12
  %19 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 4
  %22 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  switch i32 %22, label %23 [
    i32 0, label %24
    i32 16, label %25
    i32 32, label %26
  ]

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %18, %23
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 4
  br label %27

25:                                               ; preds = %18
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 4
  br label %27

26:                                               ; preds = %18
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 4
  br label %27

27:                                               ; preds = %26, %25, %24
  %28 = call i32 @UI_Cvar_VariableString(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %29 = call i32 @Q_stricmp(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 4
  br label %33

32:                                               ; preds = %27
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %38 = icmp sge i32 %37, 20
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 4
  br label %41

40:                                               ; preds = %36
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %43

42:                                               ; preds = %33
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = call i32 @trap_Cvar_VariableValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  switch i32 %44, label %45 [
    i32 0, label %46
    i32 16, label %47
    i32 32, label %48
  ]

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %43, %45
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %49

47:                                               ; preds = %43
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %49

48:                                               ; preds = %43
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %49

49:                                               ; preds = %48, %47, %46
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 4
  br label %57

57:                                               ; preds = %56, %53
  ret void
}

declare dso_local i32 @trap_Cvar_VariableValue(i8*) #1

declare dso_local i32 @Q_stricmp(i32, i8*) #1

declare dso_local i32 @UI_Cvar_VariableString(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
