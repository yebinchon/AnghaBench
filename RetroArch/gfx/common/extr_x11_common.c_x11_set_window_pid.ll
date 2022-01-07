; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_set_window_pid.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_set_window_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"_NET_WM_PID\00", align 1
@False = common dso_local global i32 0, align 4
@XA_CARDINAL = common dso_local global i32 0, align 4
@PropModeReplace = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@_SC_HOST_NAME_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get hostname.\0A\00", align 1
@XA_WM_CLIENT_MACHINE = common dso_local global i32 0, align 4
@XA_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @x11_set_window_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x11_set_window_pid(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %8 = call i32 (...) @getpid()
  store i32 %8, i32* %7, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @False, align 4
  %13 = call i32 @XInternAtom(i32* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* @XA_CARDINAL, align 4
  %15 = load i32, i32* @PropModeReplace, align 4
  %16 = bitcast i32* %7 to i8*
  %17 = call i32 @XChangeProperty(i32* %9, i32 %10, i32 %13, i32 %14, i32 32, i32 %15, i8* %16, i32 1)
  store i64 0, i64* @errno, align 8
  %18 = load i32, i32* @_SC_HOST_NAME_MAX, align 4
  %19 = call i64 @sysconf(i32 %18)
  store i64 %19, i64* %5, align 8
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i64, i64* @errno, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  br label %53

25:                                               ; preds = %21, %2
  %26 = load i64, i64* %5, align 8
  %27 = add nsw i64 %26, 1
  %28 = call i64 @malloc(i64 %27)
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %6, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %53

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = add nsw i64 %34, 1
  %36 = call i32 @gethostname(i8* %33, i64 %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %50

40:                                               ; preds = %32
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @XA_WM_CLIENT_MACHINE, align 4
  %44 = load i32, i32* @XA_STRING, align 4
  %45 = load i32, i32* @PropModeReplace, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @strlen(i8* %47)
  %49 = call i32 @XChangeProperty(i32* %41, i32 %42, i32 %43, i32 %44, i32 8, i32 %45, i8* %46, i32 %48)
  br label %50

50:                                               ; preds = %40, %38
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @free(i8* %51)
  br label %53

53:                                               ; preds = %50, %31, %24
  ret void
}

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @XChangeProperty(i32*, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @XInternAtom(i32*, i8*, i32) #1

declare dso_local i64 @sysconf(i32) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i32 @gethostname(i8*, i64) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
