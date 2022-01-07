; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_clearArea.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/gizmondo/extr_emu.c_clearArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@giz_screen = common dso_local global i32* null, align 8
@currentConfig = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @clearArea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearArea(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @giz_screen, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call i32* @fb_lock(i32 1)
  store i32* %6, i32** @giz_screen, align 8
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32*, i32** @giz_screen, align 8
  %12 = call i32 @memset32(i32* %11, i32 0, i32 38400)
  br label %19

13:                                               ; preds = %7
  %14 = load i32*, i32** @giz_screen, align 8
  %15 = bitcast i32* %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 148944
  %17 = bitcast i8* %16 to i32*
  %18 = call i32 @memset32(i32* %17, i32 0, i32 1284)
  br label %19

19:                                               ; preds = %13, %10
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @currentConfig, i32 0, i32 0), align 4
  %21 = and i32 %20, 32768
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %19
  %24 = call i32 (...) @fb_unlock()
  %25 = call i32* @fb_lock(i32 0)
  store i32* %25, i32** @giz_screen, align 8
  %26 = load i32, i32* %2, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32*, i32** @giz_screen, align 8
  %30 = call i32 @memset32(i32* %29, i32 0, i32 38400)
  br label %37

31:                                               ; preds = %23
  %32 = load i32*, i32** @giz_screen, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = getelementptr inbounds i8, i8* %33, i64 148944
  %35 = bitcast i8* %34 to i32*
  %36 = call i32 @memset32(i32* %35, i32 0, i32 1284)
  br label %37

37:                                               ; preds = %31, %28
  br label %38

38:                                               ; preds = %37, %19
  ret void
}

declare dso_local i32* @fb_lock(i32) #1

declare dso_local i32 @memset32(i32*, i32, i32) #1

declare dso_local i32 @fb_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
