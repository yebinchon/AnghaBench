; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_StartOpenGL.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/win32/extr_win_glimp.c_GLW_StartOpenGL.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*)*, i32 (i8*, i32)* }

@qfalse = common dso_local global i8* null, align 8
@r_glDriver = common dso_local global %struct.TYPE_4__* null, align 8
@OPENGL_DRIVER_NAME = common dso_local global i32 0, align 4
@qtrue = common dso_local global i8* null, align 8
@_3DFX_DRIVER_NAME = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"r_glDriver\00", align 1
@ERR_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"GLW_StartOpenGL() - could not load OpenGL subsystem\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GLW_StartOpenGL to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GLW_StartOpenGL() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @qfalse, align 8
  store i8* %3, i8** %1, align 8
  %4 = load i8*, i8** @qfalse, align 8
  store i8* %4, i8** %2, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_glDriver, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @GLW_LoadOpenGL(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %90, label %10

10:                                               ; preds = %0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_glDriver, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @OPENGL_DRIVER_NAME, align 4
  %15 = call i32 @Q_stricmp(i32 %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %10
  %18 = load i8*, i8** @qtrue, align 8
  store i8* %18, i8** %1, align 8
  br label %29

19:                                               ; preds = %10
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_glDriver, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @_3DFX_DRIVER_NAME, align 4
  %24 = call i32 @Q_stricmp(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %19
  %27 = load i8*, i8** @qtrue, align 8
  store i8* %27, i8** %2, align 8
  br label %28

28:                                               ; preds = %26, %19
  br label %29

29:                                               ; preds = %28, %17
  %30 = load i8*, i8** %2, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %68, label %32

32:                                               ; preds = %29
  %33 = load i8*, i8** @qtrue, align 8
  store i8* %33, i8** %2, align 8
  %34 = load i32, i32* @_3DFX_DRIVER_NAME, align 4
  %35 = call i64 @GLW_LoadOpenGL(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 1), align 8
  %39 = load i32, i32* @_3DFX_DRIVER_NAME, align 4
  %40 = call i32 %38(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i8*, i8** @qfalse, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_glDriver, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %67

44:                                               ; preds = %32
  %45 = load i8*, i8** %1, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %62, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @OPENGL_DRIVER_NAME, align 4
  %49 = call i64 @GLW_LoadOpenGL(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %53 = load i32, i32* @ERR_FATAL, align 4
  %54 = call i32 %52(i32 %53, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %55

55:                                               ; preds = %51, %47
  %56 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 1), align 8
  %57 = load i32, i32* @OPENGL_DRIVER_NAME, align 4
  %58 = call i32 %56(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i8*, i8** @qfalse, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_glDriver, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  br label %66

62:                                               ; preds = %44
  %63 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %64 = load i32, i32* @ERR_FATAL, align 4
  %65 = call i32 %63(i32 %64, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %62, %55
  br label %67

67:                                               ; preds = %66, %37
  br label %89

68:                                               ; preds = %29
  %69 = load i8*, i8** %1, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %88, label %71

71:                                               ; preds = %68
  %72 = load i8*, i8** @qtrue, align 8
  store i8* %72, i8** %1, align 8
  %73 = load i32, i32* @OPENGL_DRIVER_NAME, align 4
  %74 = call i64 @GLW_LoadOpenGL(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load i32 (i8*, i32)*, i32 (i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 1), align 8
  %78 = load i32, i32* @OPENGL_DRIVER_NAME, align 4
  %79 = call i32 %77(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i8*, i8** @qfalse, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @r_glDriver, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  br label %87

83:                                               ; preds = %71
  %84 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %85 = load i32, i32* @ERR_FATAL, align 4
  %86 = call i32 %84(i32 %85, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %76
  br label %88

88:                                               ; preds = %87, %68
  br label %89

89:                                               ; preds = %88, %67
  br label %90

90:                                               ; preds = %89, %0
  ret void
}

declare dso_local i64 @GLW_LoadOpenGL(i32) #1

declare dso_local i32 @Q_stricmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
