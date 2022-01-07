; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..inputdrivers_joypadlinuxraw_joypad.c_linuxraw_joypad_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..inputdrivers_joypadlinuxraw_joypad.c_linuxraw_joypad_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.linuxraw_joypad = type { i32, i32 }
%struct.epoll_event = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@linuxraw_epoll = common dso_local global i32 0, align 4
@MAX_USERS = common dso_local global i32 0, align 4
@PATH_MAX_LENGTH = common dso_local global i32 0, align 4
@linuxraw_pads = common dso_local global i32* null, align 8
@input_device_names = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [16 x i8] c"/dev/input/js%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"linuxraw\00", align 1
@linuxraw_inotify = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"/dev/input\00", align 1
@IN_DELETE = common dso_local global i32 0, align 4
@IN_CREATE = common dso_local global i32 0, align 4
@IN_ATTRIB = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to add FD (%d) to epoll list (%s).\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@linuxraw_hotplug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @linuxraw_joypad_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linuxraw_joypad_init(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.linuxraw_joypad*, align 8
  %9 = alloca %struct.epoll_event, align 8
  store i8* %0, i8** %3, align 8
  %10 = call i32 @epoll_create(i32 32)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* @linuxraw_epoll, align 4
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %56, %14
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MAX_USERS, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %59

20:                                               ; preds = %16
  %21 = load i32, i32* @PATH_MAX_LENGTH, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  %25 = load i32*, i32** @linuxraw_pads, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = bitcast i32* %28 to %struct.linuxraw_joypad*
  store %struct.linuxraw_joypad* %29, %struct.linuxraw_joypad** %8, align 8
  %30 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %30, align 16
  %31 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %8, align 8
  %32 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %31, i32 0, i32 0
  store i32 -1, i32* %32, align 4
  %33 = load i32*, i32** @input_device_names, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %8, align 8
  %39 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = trunc i64 %22 to i32
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @snprintf(i8* %24, i32 %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %8, align 8
  %44 = getelementptr inbounds %struct.linuxraw_joypad, %struct.linuxraw_joypad* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @input_autoconfigure_connect(i32 %45, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 0, i32 0)
  %48 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %8, align 8
  %49 = call i64 @linuxraw_joypad_init_pad(i8* %24, %struct.linuxraw_joypad* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %20
  %52 = load %struct.linuxraw_joypad*, %struct.linuxraw_joypad** %8, align 8
  %53 = call i32 @linuxraw_poll_pad(%struct.linuxraw_joypad* %52)
  br label %54

54:                                               ; preds = %51, %20
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %4, align 4
  %58 = add i32 %57, 1
  store i32 %58, i32* %4, align 4
  br label %16

59:                                               ; preds = %16
  %60 = call i64 (...) @inotify_init()
  store i64 %60, i64* @linuxraw_inotify, align 8
  %61 = load i64, i64* @linuxraw_inotify, align 8
  %62 = icmp sge i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %59
  %64 = load i64, i64* @linuxraw_inotify, align 8
  %65 = load i32, i32* @F_SETFL, align 4
  %66 = load i64, i64* @linuxraw_inotify, align 8
  %67 = load i32, i32* @F_GETFL, align 4
  %68 = call i32 (i64, i32, ...) @fcntl(i64 %66, i32 %67)
  %69 = load i32, i32* @O_NONBLOCK, align 4
  %70 = or i32 %68, %69
  %71 = call i32 (i64, i32, ...) @fcntl(i64 %64, i32 %65, i32 %70)
  %72 = load i64, i64* @linuxraw_inotify, align 8
  %73 = load i32, i32* @IN_DELETE, align 4
  %74 = load i32, i32* @IN_CREATE, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @IN_ATTRIB, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @inotify_add_watch(i64 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EPOLLIN, align 4
  %80 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %9, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %9, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* @linuxraw_epoll, align 4
  %84 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %85 = load i64, i64* @linuxraw_inotify, align 8
  %86 = call i64 @epoll_ctl(i32 %83, i32 %84, i64 %85, %struct.epoll_event* %9)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %63
  %89 = load i64, i64* @linuxraw_inotify, align 8
  %90 = load i32, i32* @errno, align 4
  %91 = call i32 @strerror(i32 %90)
  %92 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i64 %89, i32 %91)
  br label %93

93:                                               ; preds = %88, %63
  br label %94

94:                                               ; preds = %93, %59
  store i32 1, i32* @linuxraw_hotplug, align 4
  store i32 1, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %13
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @epoll_create(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @input_autoconfigure_connect(i32, i32*, i8*, i32, i32, i32) #1

declare dso_local i64 @linuxraw_joypad_init_pad(i8*, %struct.linuxraw_joypad*) #1

declare dso_local i32 @linuxraw_poll_pad(%struct.linuxraw_joypad*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @inotify_init(...) #1

declare dso_local i32 @fcntl(i64, i32, ...) #1

declare dso_local i32 @inotify_add_watch(i64, i8*, i32) #1

declare dso_local i64 @epoll_ctl(i32, i32, i64, %struct.epoll_event*) #1

declare dso_local i32 @RARCH_ERR(i8*, i64, i32) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
