; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scr-x.c_ScreenChangeResolution.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scr-x.c_ScreenChangeResolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@x11Conf = common dso_local global i32* null, align 8
@x11OriginalRate = common dso_local global i32 0, align 4
@x11OriginalRotation = common dso_local global i32 0, align 4
@x11OriginalSizeId = common dso_local global i32 0, align 4
@RR_Rotate_0 = common dso_local global i32 0, align 4
@CurrentTime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScreenChangeResolution(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = call i32* @XOpenDisplay(i32* null)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @RootWindow(i32* %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** @x11Conf, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** @x11Conf, align 8
  %12 = call i32 @XRRFreeScreenConfigInfo(i32* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32* @XRRGetScreenInfo(i32* %14, i32 %15)
  store i32* %16, i32** @x11Conf, align 8
  %17 = load i32*, i32** @x11Conf, align 8
  %18 = call i32 @XRRConfigCurrentRate(i32* %17)
  store i32 %18, i32* @x11OriginalRate, align 4
  %19 = load i32*, i32** @x11Conf, align 8
  %20 = call i32 @XRRConfigCurrentConfiguration(i32* %19, i32* @x11OriginalRotation)
  store i32 %20, i32* @x11OriginalSizeId, align 4
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** @x11Conf, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @RR_Rotate_0, align 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CurrentTime, align 4
  %32 = call i32 @XRRSetScreenConfigAndRate(i32* %21, i32* %22, i32 %23, i32 %26, i32 %27, i32 %30, i32 %31)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @XCloseDisplay(i32* %33)
  ret void
}

declare dso_local i32* @XOpenDisplay(i32*) #1

declare dso_local i32 @RootWindow(i32*, i32) #1

declare dso_local i32 @XRRFreeScreenConfigInfo(i32*) #1

declare dso_local i32* @XRRGetScreenInfo(i32*, i32) #1

declare dso_local i32 @XRRConfigCurrentRate(i32*) #1

declare dso_local i32 @XRRConfigCurrentConfiguration(i32*, i32*) #1

declare dso_local i32 @XRRSetScreenConfigAndRate(i32*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
