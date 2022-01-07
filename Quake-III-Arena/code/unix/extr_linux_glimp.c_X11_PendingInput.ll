; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_X11_PendingInput.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_X11_PendingInput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@dpy = common dso_local global i32* null, align 8
@QueuedAlready = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4
@X11_PendingInput.zero_time = internal global %struct.timeval zeroinitializer, align 4
@qfalse = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @X11_PendingInput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @X11_PendingInput() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32*, i32** @dpy, align 8
  %5 = icmp ne i32* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load i32*, i32** @dpy, align 8
  %9 = call i32 @XFlush(i32* %8)
  %10 = load i32*, i32** @dpy, align 8
  %11 = load i32, i32* @QueuedAlready, align 4
  %12 = call i64 @XEventsQueued(i32* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i32, i32* @qtrue, align 4
  store i32 %15, i32* %1, align 4
  br label %31

16:                                               ; preds = %0
  %17 = load i32*, i32** @dpy, align 8
  %18 = call i32 @ConnectionNumber(i32* %17)
  store i32 %18, i32* %2, align 4
  %19 = call i32 @FD_ZERO(i32* %3)
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @FD_SET(i32 %20, i32* %3)
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @select(i32 %23, i32* %3, i32* null, i32* null, %struct.timeval* @X11_PendingInput.zero_time)
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32*, i32** @dpy, align 8
  %28 = call i32 @XPending(i32* %27)
  store i32 %28, i32* %1, align 4
  br label %31

29:                                               ; preds = %16
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %29, %26, %14
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @XFlush(i32*) #1

declare dso_local i64 @XEventsQueued(i32*, i32) #1

declare dso_local i32 @ConnectionNumber(i32*) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @XPending(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
