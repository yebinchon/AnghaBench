; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_linux_joystick.c_openJoystickDevice.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_linux_joystick.c_openJoystickDevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32 }

@GLFW_JOYSTICK_1 = common dso_local global i32 0, align 4
@GLFW_JOYSTICK_LAST = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@GLFW_FALSE = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@JSIOCGVERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@GLFW_TRUE = common dso_local global i32 0, align 4
@JSIOCGAXES = common dso_local global i32 0, align 4
@JSIOCGBUTTONS = common dso_local global i32 0, align 4
@GLFW_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @openJoystickDevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openJoystickDevice(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [256 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %3, align 8
  %11 = bitcast [256 x i8]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 256, i1 false)
  %12 = load i32, i32* @GLFW_JOYSTICK_1, align 4
  store i32 %12, i32* %7, align 4
  br label %13

13:                                               ; preds = %39, %1
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %16 = icmp sle i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  br label %39

26:                                               ; preds = %17
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 5
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strcmp(i8* %32, i8* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %37, i32* %2, align 4
  br label %141

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %25
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %13

42:                                               ; preds = %13
  %43 = load i32, i32* @GLFW_JOYSTICK_1, align 4
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %58, %42
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %61

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %44

61:                                               ; preds = %56, %44
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @GLFW_JOYSTICK_LAST, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %66, i32* %2, align 4
  br label %141

67:                                               ; preds = %61
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* @O_RDONLY, align 4
  %70 = load i32, i32* @O_NONBLOCK, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @open(i8* %68, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %67
  %76 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %76, i32* %2, align 4
  br label %141

77:                                               ; preds = %67
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @JSIOCGVERSION, align 4
  %80 = call i64 (i32, i32, ...) @ioctl(i32 %78, i32 %79, i32* %9)
  %81 = load i32, i32* %9, align 4
  %82 = icmp slt i32 %81, 65536
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @close(i32 %84)
  %86 = load i32, i32* @GLFW_FALSE, align 4
  store i32 %86, i32* %2, align 4
  br label %141

87:                                               ; preds = %77
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @JSIOCGNAME(i32 256)
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %91 = call i64 (i32, i32, ...) @ioctl(i32 %88, i32 %89, i8* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %95 = call i32 @strncpy(i8* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 256)
  br label %96

96:                                               ; preds = %93, %87
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @_glfw, i32 0, i32 0, i32 0), align 8
  %98 = load i32, i32* %7, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %99
  store %struct.TYPE_5__* %100, %struct.TYPE_5__** %10, align 8
  %101 = load i32, i32* @GLFW_TRUE, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 7
  store i32 %101, i32* %103, align 8
  %104 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %105 = call i8* @strdup(i8* %104)
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  %108 = load i8*, i8** %3, align 8
  %109 = call i8* @strdup(i8* %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 5
  store i8* %109, i8** %111, align 8
  %112 = load i32, i32* %8, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @JSIOCGAXES, align 4
  %117 = call i64 (i32, i32, ...) @ioctl(i32 %115, i32 %116, i8* %4)
  %118 = load i8, i8* %4, align 1
  %119 = sext i8 %118 to i32
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i8, i8* %4, align 1
  %123 = call i8* @calloc(i8 signext %122, i32 4)
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @JSIOCGBUTTONS, align 4
  %128 = call i64 (i32, i32, ...) @ioctl(i32 %126, i32 %127, i8* %5)
  %129 = load i8, i8* %5, align 1
  %130 = sext i8 %129 to i32
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 8
  %133 = load i8, i8* %5, align 1
  %134 = call i8* @calloc(i8 signext %133, i32 1)
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @GLFW_CONNECTED, align 4
  %139 = call i32 @_glfwInputJoystickChange(i32 %137, i32 %138)
  %140 = load i32, i32* @GLFW_TRUE, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %96, %83, %75, %65, %36
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @ioctl(i32, i32, ...) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @JSIOCGNAME(i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @calloc(i8 signext, i32) #2

declare dso_local i32 @_glfwInputJoystickChange(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
