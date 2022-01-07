; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_linux_joystick.c_openJoystickDevice.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_linux_joystick.c_openJoystickDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i8*, i8*, i8*, i8* }

@GLFW_JOYSTICK_1 = common dso_local global i32 0, align 4
@GLFW_JOYSTICK_LAST = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@JSIOCGVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@JSIOCGAXES = common dso_local global i32 0, align 4
@JSIOCGBUTTONS = common dso_local global i32 0, align 4
@GL_TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @openJoystickDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @openJoystickDevice(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i32, i32* @GLFW_JOYSTICK_1, align 4
  store i32 %9, i32* %6, align 4
  br label %10

10:                                               ; preds = %35, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %10
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %35

23:                                               ; preds = %14
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 6
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = call i64 @strcmp(i8* %29, i8* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  br label %150

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %22
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load i32, i32* @GLFW_JOYSTICK_1, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %54, %38
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %43 = icmp sle i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  br label %57

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %40

57:                                               ; preds = %52, %40
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %60 = icmp sgt i32 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %150

62:                                               ; preds = %57
  %63 = load i8*, i8** %2, align 8
  %64 = load i32, i32* @O_RDONLY, align 4
  %65 = load i32, i32* @O_NONBLOCK, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @open(i8* %63, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %150

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @JSIOCGVERSION, align 4
  %80 = call i64 (i32, i32, ...) @ioctl(i32 %78, i32 %79, i32* %8)
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 65536
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  %85 = call i32 @close(i32 %84)
  br label %150

86:                                               ; preds = %71
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @JSIOCGNAME(i32 256)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %90 = call i64 (i32, i32, ...) @ioctl(i32 %87, i32 %88, i8* %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %94 = call i32 @strncpy(i8* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 256)
  br label %95

95:                                               ; preds = %92, %86
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %97 = call i8* @strdup(i8* %96)
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 7
  store i8* %97, i8** %102, align 8
  %103 = load i8*, i8** %2, align 8
  %104 = call i8* @strdup(i8* %103)
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  store i8* %104, i8** %109, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load i32, i32* @JSIOCGAXES, align 4
  %112 = call i64 (i32, i32, ...) @ioctl(i32 %110, i32 %111, i8* %3)
  %113 = load i8, i8* %3, align 1
  %114 = sext i8 %113 to i32
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* @JSIOCGBUTTONS, align 4
  %122 = call i64 (i32, i32, ...) @ioctl(i32 %120, i32 %121, i8* %4)
  %123 = load i8, i8* %4, align 1
  %124 = sext i8 %123 to i32
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %126 = load i32, i32* %6, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 2
  store i32 %124, i32* %129, align 8
  %130 = load i8, i8* %3, align 1
  %131 = call i8* @calloc(i8 signext %130, i32 4)
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 5
  store i8* %131, i8** %136, align 8
  %137 = load i8, i8* %4, align 1
  %138 = call i8* @calloc(i8 signext %137, i32 1)
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 4
  store i8* %138, i8** %143, align 8
  %144 = load i64, i64* @GL_TRUE, align 8
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 3
  store i64 %144, i64* %149, align 8
  br label %150

150:                                              ; preds = %95, %83, %70, %61, %33
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @JSIOCGNAME(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @calloc(i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
