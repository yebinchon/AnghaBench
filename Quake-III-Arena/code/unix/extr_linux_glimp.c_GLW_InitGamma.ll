; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_GLW_InitGamma.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_GLW_InitGamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*)* }

@qfalse = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vidmode_ext = common dso_local global i64 0, align 8
@vidmode_MajorVersion = common dso_local global i64 0, align 8
@vidmode_MinorVersion = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"XF86 Gamma extension not supported in this version\0A\00", align 1
@dpy = common dso_local global i32 0, align 4
@scrnum = common dso_local global i32 0, align 4
@vidmode_InitialGamma = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"XF86 Gamma extension initialized\0A\00", align 1
@qtrue = common dso_local global i32 0, align 4
@GAMMA_MINMAJOR = common dso_local global i64 0, align 8
@GAMMA_MINMINOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @GLW_InitGamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @GLW_InitGamma() #0 {
  %1 = load i32, i32* @qfalse, align 4
  store i32 %1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 0), align 4
  %2 = load i64, i64* @vidmode_ext, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %0
  %5 = load i64, i64* @vidmode_MajorVersion, align 8
  %6 = icmp slt i64 %5, 2
  br i1 %6, label %13, label %7

7:                                                ; preds = %4
  %8 = load i64, i64* @vidmode_MajorVersion, align 8
  %9 = icmp eq i64 %8, 2
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = load i64, i64* @vidmode_MinorVersion, align 8
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %10, %4
  %14 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %15 = load i32, i32* @PRINT_ALL, align 4
  %16 = call i32 %14(i32 %15, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %25

17:                                               ; preds = %10, %7
  %18 = load i32, i32* @dpy, align 4
  %19 = load i32, i32* @scrnum, align 4
  %20 = call i32 @XF86VidModeGetGamma(i32 %18, i32 %19, i32* @vidmode_InitialGamma)
  %21 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %22 = load i32, i32* @PRINT_ALL, align 4
  %23 = call i32 %21(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @qtrue, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @glConfig, i32 0, i32 0), align 4
  br label %25

25:                                               ; preds = %13, %17, %0
  ret void
}

declare dso_local i32 @XF86VidModeGetGamma(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
