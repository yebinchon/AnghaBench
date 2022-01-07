; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_linuxraw_joypad.c_linuxraw_joypad_init_pad.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_joypad/extr_linuxraw_joypad.c_linuxraw_joypad_init_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linuxraw_joypad = type { i8*, i8* }
%struct.epoll_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.linuxraw_joypad* }

@R_OK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"[Device]: Found pad: %s on %s.\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"[Device]: Didn't find ident of %s.\0A\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@linuxraw_epoll = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to add FD (%d) to epoll list (%s).\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"[Device]: Failed to open pad %s (error: %s).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.linuxraw_joypad*)* @linuxraw_joypad_init_pad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linuxraw_joypad_init_pad(i8* %0, %struct.linuxraw_joypad* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.linuxraw_joypad*, align 8
  %6 = alloca %struct.epoll_event, align 8
  store i8* %0, i8** %4, align 8
  store %struct.linuxraw_joypad* %1, %struct.linuxraw_joypad** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* @R_OK, align 4
  %9 = call i64 @access(i8* %7, i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %79

12:                                               ; preds = %2
  %13 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %14 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = icmp uge i8* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %79

18:                                               ; preds = %12
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* @O_RDONLY, align 4
  %21 = load i32, i32* @O_NONBLOCK, align 4
  %22 = or i32 %20, %21
  %23 = call i8* @open(i8* %19, i32 %22)
  %24 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %25 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %27 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  store i8 0, i8* %28, align 1
  %29 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %30 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp uge i8* %31, null
  br i1 %32, label %33, label %74

33:                                               ; preds = %18
  %34 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %35 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @JSIOCGNAME(i32 0)
  %38 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %39 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i64 @ioctl(i8* %36, i32 %37, i8* %40)
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %45 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %44, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %46, i8* %47)
  br label %52

49:                                               ; preds = %33
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 (i8*, i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* @EPOLLIN, align 4
  %54 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %56 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %6, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store %struct.linuxraw_joypad* %55, %struct.linuxraw_joypad** %57, align 8
  %58 = load i32, i32* @linuxraw_epoll, align 4
  %59 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %60 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %61 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i64 @epoll_ctl(i32 %58, i32 %59, i8* %62, %struct.epoll_event* %6)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %52
  %66 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %5, align 8
  %67 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i32, i32* @errno, align 4
  %70 = call i32 @strerror(i32 %69)
  %71 = call i32 (i8*, i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i8* %68, i32 %70)
  br label %73

72:                                               ; preds = %52
  store i32 1, i32* %3, align 4
  br label %79

73:                                               ; preds = %65
  br label %74

74:                                               ; preds = %73, %18
  %75 = load i8*, i8** %4, align 8
  %76 = load i32, i32* @errno, align 4
  %77 = call i32 @strerror(i32 %76)
  %78 = call i32 (i8*, i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %75, i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %72, %17, %11
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i8* @open(i8*, i32) #1

declare dso_local i64 @ioctl(i8*, i32, i8*) #1

declare dso_local i32 @JSIOCGNAME(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*, i8*) #1

declare dso_local i32 @RARCH_ERR(i8*, i8*, ...) #1

declare dso_local i64 @epoll_ctl(i32, i32, i8*, %struct.epoll_event*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
