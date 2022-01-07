; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_GraphicsOptions_ApplyChanges.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/q3_ui/extr_ui_video.c_GraphicsOptions_ApplyChanges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@QM_ACTIVATED = common dso_local global i32 0, align 4
@s_graphicsoptions = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [14 x i8] c"r_texturebits\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"r_picmip\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"r_allowExtensions\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"r_mode\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"r_fullscreen\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"r_glDriver\00", align 1
@s_drivers = common dso_local global i64* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"r_colorbits\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"r_depthbits\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"r_stencilbits\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"r_vertexLight\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"r_lodBias\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"r_subdivisions\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"r_textureMode\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"GL_LINEAR_MIPMAP_LINEAR\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"GL_LINEAR_MIPMAP_NEAREST\00", align 1
@EXEC_APPEND = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"vid_restart\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @GraphicsOptions_ApplyChanges to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GraphicsOptions_ApplyChanges(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @QM_ACTIVATED, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %73

9:                                                ; preds = %2
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 9, i32 0), align 8
  switch i32 %10, label %17 [
    i32 0, label %11
    i32 1, label %13
    i32 2, label %15
  ]

11:                                               ; preds = %9
  %12 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %17

13:                                               ; preds = %9
  %14 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 16)
  br label %17

15:                                               ; preds = %9
  %16 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 32)
  br label %17

17:                                               ; preds = %9, %15, %13, %11
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 8, i32 0), align 4
  %19 = sub nsw i32 3, %18
  %20 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 7, i32 0), align 8
  %22 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 6, i32 0), align 4
  %24 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 5, i32 0), align 8
  %26 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i64*, i64** @s_drivers, align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 4, i32 0), align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %31)
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 3, i32 0), align 8
  switch i32 %33, label %45 [
    i32 0, label %34
    i32 1, label %38
    i32 2, label %42
  ]

34:                                               ; preds = %17
  %35 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 0)
  %36 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 0)
  %37 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 0)
  br label %45

38:                                               ; preds = %17
  %39 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 16)
  %40 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 16)
  %41 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 0)
  br label %45

42:                                               ; preds = %17
  %43 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 32)
  %44 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 24)
  br label %45

45:                                               ; preds = %17, %42, %38, %34
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 2, i32 0), align 4
  %47 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 0)
  %52 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 4)
  br label %63

53:                                               ; preds = %45
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 1, i32 0), align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %58 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 12)
  br label %62

59:                                               ; preds = %53
  %60 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i32 1)
  %61 = call i32 @trap_Cvar_SetValue(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 20)
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @s_graphicsoptions, i32 0, i32 0, i32 0), align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  br label %70

68:                                               ; preds = %63
  %69 = call i32 @trap_Cvar_Set(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %66
  %71 = load i32, i32* @EXEC_APPEND, align 4
  %72 = call i32 @trap_Cmd_ExecuteText(i32 %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %8
  ret void
}

declare dso_local i32 @trap_Cvar_SetValue(i8*, i32) #1

declare dso_local i32 @trap_Cvar_Set(i8*, i8*) #1

declare dso_local i32 @trap_Cmd_ExecuteText(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
