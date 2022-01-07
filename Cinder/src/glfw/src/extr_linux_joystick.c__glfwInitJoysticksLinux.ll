; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_linux_joystick.c__glfwInitJoysticksLinux.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_linux_joystick.c__glfwInitJoysticksLinux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"/dev/input\00", align 1
@IN_NONBLOCK = common dso_local global i32 0, align 4
@IN_CLOEXEC = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Linux: Failed to initialize inotify: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@GLFW_FALSE = common dso_local global i32 0, align 4
@IN_CREATE = common dso_local global i32 0, align 4
@IN_ATTRIB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Linux: Failed to watch for joystick connections in %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"^js[0-9]\\+$\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Linux: Failed to compile regex\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Linux: Failed to open joystick device directory %s: %s\00", align 1
@compareJoysticks = common dso_local global i32 0, align 4
@GLFW_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwInitJoysticksLinux() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dirent*, align 8
  %6 = alloca [20 x i8], align 16
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %8 = load i32, i32* @IN_NONBLOCK, align 4
  %9 = load i32, i32* @IN_CLOEXEC, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @inotify_init1(i32 %10)
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %20

14:                                               ; preds = %0
  %15 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %16 = load i32, i32* @errno, align 4
  %17 = call i32 @strerror(i32 %16)
  %18 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %15, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %19, i32* %1, align 4
  br label %88

20:                                               ; preds = %0
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @IN_CREATE, align 4
  %24 = load i32, i32* @IN_ATTRIB, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @inotify_add_watch(i32 %21, i8* %22, i32 %25)
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %30, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  %36 = call i64 @regcomp(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %40 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %41, i32* %1, align 4
  br label %88

42:                                               ; preds = %35
  %43 = load i8*, i8** %4, align 8
  %44 = call i32* @opendir(i8* %43)
  store i32* %44, i32** %2, align 8
  %45 = load i32*, i32** %2, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %76

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %72, %58, %47
  %49 = load i32*, i32** %2, align 8
  %50 = call %struct.dirent* @readdir(i32* %49)
  store %struct.dirent* %50, %struct.dirent** %5, align 8
  %51 = icmp ne %struct.dirent* %50, null
  br i1 %51, label %52, label %73

52:                                               ; preds = %48
  %53 = load %struct.dirent*, %struct.dirent** %5, align 8
  %54 = getelementptr inbounds %struct.dirent, %struct.dirent* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = call i64 @regexec(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 3), i8* %55, i32 1, i32* %7, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  br label %48

59:                                               ; preds = %52
  %60 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %61 = load i8*, i8** %4, align 8
  %62 = load %struct.dirent*, %struct.dirent** %5, align 8
  %63 = getelementptr inbounds %struct.dirent, %struct.dirent* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @snprintf(i8* %60, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %61, i8* %64)
  %66 = getelementptr inbounds [20 x i8], [20 x i8]* %6, i64 0, i64 0
  %67 = call i64 @openJoystickDevice(i8* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %59
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %59
  br label %48

73:                                               ; preds = %48
  %74 = load i32*, i32** %2, align 8
  %75 = call i32 @closedir(i32* %74)
  br label %82

76:                                               ; preds = %42
  %77 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %78 = load i8*, i8** %4, align 8
  %79 = load i32, i32* @errno, align 4
  %80 = call i32 @strerror(i32 %79)
  %81 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %77, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %78, i32 %80)
  br label %82

82:                                               ; preds = %76, %73
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* @compareJoysticks, align 4
  %86 = call i32 @qsort(i32 %83, i32 %84, i32 4, i32 %85)
  %87 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %87, i32* %1, align 4
  br label %88

88:                                               ; preds = %82, %38, %14
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32 @inotify_init1(i32) #1

declare dso_local i32 @_glfwInputError(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @inotify_add_watch(i32, i8*, i32) #1

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @openJoystickDevice(i8*) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @qsort(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
