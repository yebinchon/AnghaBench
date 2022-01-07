; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_button_press.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/gtk/extr_gtkglwidget.c_yui_gl_button_press.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@padbits = common dso_local global i32 0, align 4
@PERMOUSE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i32)* @yui_gl_button_press to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yui_gl_button_press(i32* %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @padbits, align 4
  %8 = call i64 @PerGetId(i32 %7)
  %9 = load i64, i64* @PERMOUSE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %24 [
    i32 1, label %15
    i32 2, label %18
    i32 3, label %21
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @padbits, align 4
  %17 = call i32 @PerMouseLeftPressed(i32 %16)
  br label %24

18:                                               ; preds = %11
  %19 = load i32, i32* @padbits, align 4
  %20 = call i32 @PerMouseMiddlePressed(i32 %19)
  br label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @padbits, align 4
  %23 = call i32 @PerMouseRightPressed(i32 %22)
  br label %24

24:                                               ; preds = %11, %21, %18, %15
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i32, i32* @FALSE, align 4
  ret i32 %26
}

declare dso_local i64 @PerGetId(i32) #1

declare dso_local i32 @PerMouseLeftPressed(i32) #1

declare dso_local i32 @PerMouseMiddlePressed(i32) #1

declare dso_local i32 @PerMouseRightPressed(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
