; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_priv_open_screen.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/libs/vgfont/extr_graphics.c_gx_priv_open_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i64*, i32 }

@gx = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DISPMANX_NO_HANDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Could not open dispmanx display %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64*)* @gx_priv_open_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gx_priv_open_screen(i64 %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64* %1, i64** %4, align 8
  store i32 -1, i32* %5, align 4
  %7 = call i32 @vcos_mutex_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 2))
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 0), align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 1), align 8
  %15 = load i64, i64* %3, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %4, align 8
  store i64 %17, i64* %18, align 8
  %19 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 0), align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  store i32 0, i32* %5, align 4
  br label %43

24:                                               ; preds = %2
  %25 = load i64, i64* %3, align 8
  %26 = call i64 @vc_dispmanx_display_open(i64 %25)
  store i64 %26, i64* %6, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @DISPMANX_NO_HANDLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @GX_LOG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %31)
  store i32 -1, i32* %5, align 4
  br label %44

33:                                               ; preds = %24
  %34 = load i64, i64* %6, align 8
  %35 = load i64*, i64** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 1), align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 %34, i64* %37, align 8
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 0), align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 1, i32* %40, align 4
  %41 = load i64, i64* %6, align 8
  %42 = load i64*, i64** %4, align 8
  store i64 %41, i64* %42, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %33, %13
  br label %44

44:                                               ; preds = %43, %30
  %45 = call i32 @vcos_mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @gx, i32 0, i32 2))
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i64 @vc_dispmanx_display_open(i64) #1

declare dso_local i32 @GX_LOG(i8*, i64) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
