; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_LoadOpenGL.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_LoadOpenGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_7__ = type { i32 (i32, i8*, i8*)* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"opengl32\00", align 1
@r_maskMinidriver = common dso_local global %struct.TYPE_9__* null, align 8
@GLDRV_ICD = common dso_local global i64 0, align 8
@glConfig = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@GLDRV_STANDALONE = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"...assuming '%s' is a standalone driver\0A\00", align 1
@_3DFX_DRIVER_NAME = common dso_local global i8* null, align 8
@GLDRV_VOODOO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"FX_GLIDE_NO_SPLASH=0\00", align 1
@r_fullscreen = common dso_local global %struct.TYPE_10__* null, align 8
@r_mode = common dso_local global %struct.TYPE_8__* null, align 8
@r_colorbits = common dso_local global %struct.TYPE_11__* null, align 8
@qtrue = common dso_local global i64 0, align 8
@qfalse = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @GLW_LoadOpenGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @GLW_LoadOpenGL(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [1024 x i8], align 16
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @Q_strncpyz(i8* %6, i8* %7, i32 1024)
  %9 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %10 = call i32 @Q_strlwr(i8* %9)
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %12 = call i64 @strstr(i8* %11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %1
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_maskMinidriver, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %1
  %20 = load i64, i64* @GLDRV_ICD, align 8
  store i64 %20, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  br label %34

21:                                               ; preds = %14
  %22 = load i64, i64* @GLDRV_STANDALONE, align 8
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %23 = load i32 (i32, i8*, i8*)*, i32 (i32, i8*, i8*)** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ri, i32 0, i32 0), align 8
  %24 = load i32, i32* @PRINT_ALL, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = call i32 %23(i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  %27 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %28 = load i8*, i8** @_3DFX_DRIVER_NAME, align 8
  %29 = call i64 @strstr(i8* %27, i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i64, i64* @GLDRV_VOODOO, align 8
  store i64 %32, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  br label %33

33:                                               ; preds = %31, %21
  br label %34

34:                                               ; preds = %33, %19
  %35 = call i32 @_putenv(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %4, i64 0, i64 0
  %37 = call i64 @QGL_Init(i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %34
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_fullscreen, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %5, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_mode, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_colorbits, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @GLW_StartDriverAndSetMode(i8* %43, i32 %46, i32 %49, i64 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %81, label %53

53:                                               ; preds = %39
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %55 = load i64, i64* @GLDRV_ICD, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_colorbits, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 16
  br i1 %61, label %71, label %62

62:                                               ; preds = %57
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* @qtrue, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** @r_mode, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 3
  br i1 %70, label %71, label %78

71:                                               ; preds = %66, %62, %57
  %72 = load i8*, i8** %3, align 8
  %73 = load i64, i64* @qtrue, align 8
  %74 = call i32 @GLW_StartDriverAndSetMode(i8* %72, i32 3, i32 16, i64 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71
  br label %90

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %66
  br label %80

79:                                               ; preds = %53
  br label %90

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80, %39
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 0), align 8
  %83 = load i64, i64* @GLDRV_VOODOO, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i64, i64* @qtrue, align 8
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @glConfig, i32 0, i32 1), align 8
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i64, i64* @qtrue, align 8
  store i64 %88, i64* %2, align 8
  br label %93

89:                                               ; preds = %34
  br label %90

90:                                               ; preds = %89, %79, %76
  %91 = call i32 (...) @QGL_Shutdown()
  %92 = load i64, i64* @qfalse, align 8
  store i64 %92, i64* %2, align 8
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i64, i64* %2, align 8
  ret i64 %94
}

declare dso_local i32 @Q_strncpyz(i8*, i8*, i32) #1

declare dso_local i32 @Q_strlwr(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @_putenv(i8*) #1

declare dso_local i64 @QGL_Init(i8*) #1

declare dso_local i32 @GLW_StartDriverAndSetMode(i8*, i32, i32, i64) #1

declare dso_local i32 @QGL_Shutdown(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
