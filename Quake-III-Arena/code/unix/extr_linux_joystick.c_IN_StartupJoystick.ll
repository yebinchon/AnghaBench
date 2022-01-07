; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_joystick.c_IN_StartupJoystick.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_joystick.c_IN_StartupJoystick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.js_event = type { i32 }

@joy_fd = common dso_local global i32 0, align 4
@in_joystick = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"Joystick is not active.\0A\00", align 1
@PATH_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"/dev/js%d\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Joystick %s found\0A\00", align 1
@JS_EVENT_INIT = common dso_local global i32 0, align 4
@JSIOCGAXES = common dso_local global i32 0, align 4
@JSIOCGBUTTONS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Name:    %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Axes:    %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"Buttons: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"No joystick found.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IN_StartupJoystick() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.js_event, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca [128 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 -1, i32* @joy_fd, align 4
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @in_joystick, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %86

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %78, %16
  %18 = load i32, i32* %1, align 4
  %19 = icmp slt i32 %18, 4
  br i1 %19, label %20, label %81

20:                                               ; preds = %17
  %21 = load i32, i32* @PATH_MAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %2, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %3, align 8
  %25 = load i32, i32* @PATH_MAX, align 4
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @O_RDONLY, align 4
  %29 = load i32, i32* @O_NONBLOCK, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @open(i8* %24, i32 %30)
  store i32 %31, i32* @joy_fd, align 4
  %32 = load i32, i32* @joy_fd, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %73

34:                                               ; preds = %20
  store i8 0, i8* %5, align 1
  store i8 0, i8* %6, align 1
  store i32 -1, i32* %8, align 4
  %35 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %24)
  br label %36

36:                                               ; preds = %43, %34
  %37 = load i32, i32* @joy_fd, align 4
  %38 = call i32 @read(i32 %37, %struct.js_event* %4, i32 4)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %49

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = getelementptr inbounds %struct.js_event, %struct.js_event* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @JS_EVENT_INIT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %36, label %49

49:                                               ; preds = %43, %41
  %50 = load i32, i32* @joy_fd, align 4
  %51 = load i32, i32* @JSIOCGAXES, align 4
  %52 = call i64 @ioctl(i32 %50, i32 %51, i8* %5)
  %53 = load i32, i32* @joy_fd, align 4
  %54 = load i32, i32* @JSIOCGBUTTONS, align 4
  %55 = call i64 @ioctl(i32 %53, i32 %54, i8* %6)
  %56 = load i32, i32* @joy_fd, align 4
  %57 = call i32 @JSIOCGNAME(i32 128)
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %59 = call i64 @ioctl(i32 %56, i32 %57, i8* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %63 = call i32 @strncpy(i8* %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 128)
  br label %64

64:                                               ; preds = %61, %49
  %65 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %66 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %65)
  %67 = load i8, i8* %5, align 1
  %68 = sext i8 %67 to i32
  %69 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = load i8, i8* %6, align 1
  %71 = sext i8 %70 to i32
  %72 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %71)
  store i32 1, i32* %9, align 4
  br label %74

73:                                               ; preds = %20
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %9, align 4
  switch i32 %76, label %87 [
    i32 0, label %77
    i32 1, label %86
  ]

77:                                               ; preds = %74
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %1, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %1, align 4
  br label %17

81:                                               ; preds = %17
  %82 = load i32, i32* @joy_fd, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = call i32 (i8*, ...) @Com_Printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %86

86:                                               ; preds = %14, %74, %84, %81
  ret void

87:                                               ; preds = %74
  unreachable
}

declare dso_local i32 @Com_Printf(i8*, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @read(i32, %struct.js_event*, i32) #1

declare dso_local i64 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @JSIOCGNAME(i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
