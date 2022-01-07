; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_PLATFORM_Exit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_x11.c_PLATFORM_Exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@image_data = common dso_local global i32* null, align 8
@display = common dso_local global i32* null, align 8
@True = common dso_local global i32 0, align 4
@private_cmap = common dso_local global i64 0, align 8
@cmap = common dso_local global i32 0, align 4
@pixmap = common dso_local global i32 0, align 4
@window = common dso_local global i32 0, align 4
@image = common dso_local global i32* null, align 8
@js0 = common dso_local global i32 0, align 4
@js1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PLATFORM_Exit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @Log_flushlog()
  %5 = load i32, i32* %2, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = call i32 (...) @autorepeat_restore()
  %9 = call i32 (...) @MONITOR_Run()
  store i32 %9, i32* %3, align 4
  %10 = call i32 (...) @autorepeat_off()
  br label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @FALSE, align 4
  store i32 %12, i32* %3, align 4
  br label %13

13:                                               ; preds = %11, %7
  %14 = load i32, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %49, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** @image_data, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** @image_data, align 8
  %21 = call i32 @free(i32* %20)
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32*, i32** @display, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32*, i32** @display, align 8
  %27 = load i32, i32* @True, align 4
  %28 = call i32 @XSync(i32* %26, i32 %27)
  %29 = load i64, i64* @private_cmap, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i32*, i32** @display, align 8
  %33 = load i32, i32* @cmap, align 4
  %34 = call i32 @XFreeColormap(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32*, i32** @display, align 8
  %37 = load i32, i32* @pixmap, align 4
  %38 = call i32 @XFreePixmap(i32* %36, i32 %37)
  %39 = load i32*, i32** @display, align 8
  %40 = load i32, i32* @window, align 4
  %41 = call i32 @XUnmapWindow(i32* %39, i32 %40)
  %42 = load i32*, i32** @display, align 8
  %43 = load i32, i32* @window, align 4
  %44 = call i32 @XDestroyWindow(i32* %42, i32 %43)
  %45 = call i32 (...) @autorepeat_restore()
  %46 = load i32*, i32** @display, align 8
  %47 = call i32 @XCloseDisplay(i32* %46)
  br label %48

48:                                               ; preds = %35, %22
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @Log_flushlog(...) #1

declare dso_local i32 @autorepeat_restore(...) #1

declare dso_local i32 @MONITOR_Run(...) #1

declare dso_local i32 @autorepeat_off(...) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @XSync(i32*, i32) #1

declare dso_local i32 @XFreeColormap(i32*, i32) #1

declare dso_local i32 @XFreePixmap(i32*, i32) #1

declare dso_local i32 @XUnmapWindow(i32*, i32) #1

declare dso_local i32 @XDestroyWindow(i32*, i32) #1

declare dso_local i32 @XCloseDisplay(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
