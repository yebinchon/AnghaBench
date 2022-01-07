; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_linux_joystick.c__glfwInitJoysticks.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_linux_joystick.c__glfwInitJoysticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.dirent = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"/dev/input\00", align 1
@IN_NONBLOCK = common dso_local global i32 0, align 4
@IN_CLOEXEC = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GLFW_PLATFORM_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Linux: Failed to initialize inotify: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@GL_FALSE = common dso_local global i32 0, align 4
@IN_CREATE = common dso_local global i32 0, align 4
@IN_ATTRIB = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [58 x i8] c"Linux: Failed to watch for joystick connections in %s: %s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"^js[0-9]\\+$\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Linux: Failed to compile regex\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Linux: Failed to open joystick device directory %s: %s\00", align 1
@GL_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_glfwInitJoysticks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dirent*, align 8
  %5 = alloca [20 x i8], align 16
  %6 = alloca i32, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  %7 = load i32, i32* @IN_NONBLOCK, align 4
  %8 = load i32, i32* @IN_CLOEXEC, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @inotify_init1(i32 %9)
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %19

13:                                               ; preds = %0
  %14 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %14, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @GL_FALSE, align 4
  store i32 %18, i32* %1, align 4
  br label %78

19:                                               ; preds = %0
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 4
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* @IN_CREATE, align 4
  %23 = load i32, i32* @IN_ATTRIB, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @inotify_add_watch(i32 %20, i8* %21, i32 %24)
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 4
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 1), align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %29, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %19
  %35 = call i64 @regcomp(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %39 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %38, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %40 = load i32, i32* @GL_FALSE, align 4
  store i32 %40, i32* %1, align 4
  br label %78

41:                                               ; preds = %34
  %42 = load i8*, i8** %2, align 8
  %43 = call i32* @opendir(i8* %42)
  store i32* %43, i32** %3, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %70

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %58, %57, %46
  %48 = load i32*, i32** %3, align 8
  %49 = call %struct.dirent* @readdir(i32* %48)
  store %struct.dirent* %49, %struct.dirent** %4, align 8
  %50 = icmp ne %struct.dirent* %49, null
  br i1 %50, label %51, label %67

51:                                               ; preds = %47
  %52 = load %struct.dirent*, %struct.dirent** %4, align 8
  %53 = getelementptr inbounds %struct.dirent, %struct.dirent* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i64 @regexec(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 2), i8* %54, i32 1, i32* %6, i32 0)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %47

58:                                               ; preds = %51
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %60 = load i8*, i8** %2, align 8
  %61 = load %struct.dirent*, %struct.dirent** %4, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @snprintf(i8* %59, i32 20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %60, i8* %63)
  %65 = getelementptr inbounds [20 x i8], [20 x i8]* %5, i64 0, i64 0
  %66 = call i32 @openJoystickDevice(i8* %65)
  br label %47

67:                                               ; preds = %47
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @closedir(i32* %68)
  br label %76

70:                                               ; preds = %41
  %71 = load i32, i32* @GLFW_PLATFORM_ERROR, align 4
  %72 = load i8*, i8** %2, align 8
  %73 = load i32, i32* @errno, align 4
  %74 = call i32 @strerror(i32 %73)
  %75 = call i32 (i32, i8*, ...) @_glfwInputError(i32 %71, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i8* %72, i32 %74)
  br label %76

76:                                               ; preds = %70, %67
  %77 = load i32, i32* @GL_TRUE, align 4
  store i32 %77, i32* %1, align 4
  br label %78

78:                                               ; preds = %76, %37, %13
  %79 = load i32, i32* %1, align 4
  ret i32 %79
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

declare dso_local i32 @openJoystickDevice(i8*) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
