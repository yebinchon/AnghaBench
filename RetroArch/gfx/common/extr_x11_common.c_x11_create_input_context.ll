; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_create_input_context.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_x11_common.c_x11_create_input_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_x11_has_focus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"[X11]: Failed to open input method.\0A\00", align 1
@XNInputStyle = common dso_local global i32 0, align 4
@XIMPreeditNothing = common dso_local global i32 0, align 4
@XIMStatusNothing = common dso_local global i32 0, align 4
@XNClientWindow = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"[X11]: Failed to create input context.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x11_create_input_context(i32* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load i32*, i32** %8, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = call i32 @x11_destroy_input_context(i32* %10, i32* %11)
  store i32 1, i32* @g_x11_has_focus, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i32 @XOpenIM(i32* %13, i32* null, i32* null, i32* null)
  %15 = load i32*, i32** %8, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %41

21:                                               ; preds = %4
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @XNInputStyle, align 4
  %25 = load i32, i32* @XIMPreeditNothing, align 4
  %26 = load i32, i32* @XIMStatusNothing, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @XNClientWindow, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @XCreateIC(i32 %23, i32 %24, i32 %27, i32 %28, i32 %29, i32* null)
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %21
  %36 = call i32 @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %41

37:                                               ; preds = %21
  %38 = load i32*, i32** %9, align 8
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @XSetICFocus(i32 %39)
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %35, %19
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @x11_destroy_input_context(i32*, i32*) #1

declare dso_local i32 @XOpenIM(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @RARCH_ERR(i8*) #1

declare dso_local i32 @XCreateIC(i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @XSetICFocus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
