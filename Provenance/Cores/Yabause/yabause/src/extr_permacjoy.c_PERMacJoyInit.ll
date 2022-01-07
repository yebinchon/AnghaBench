; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_permacjoy.c_PERMacJoyInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_permacjoy.c_PERMacJoyInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initted = common dso_local global i32 0, align 4
@joycount = common dso_local global i32 0, align 4
@joys = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PERMacJoyInit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @initted, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %58

6:                                                ; preds = %0
  %7 = call i32 (...) @joy_scan_joysticks()
  store i32 %7, i32* @joycount, align 4
  %8 = load i32, i32* @joycount, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 0, i32* @joycount, align 4
  store i32 -1, i32* %1, align 4
  br label %58

11:                                               ; preds = %6
  %12 = load i32, i32* @joycount, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 8, %13
  %15 = trunc i64 %14 to i32
  %16 = call i64 @malloc(i32 %15)
  %17 = inttoptr i64 %16 to i32**
  store i32** %17, i32*** @joys, align 8
  %18 = load i32**, i32*** @joys, align 8
  %19 = icmp ne i32** %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  store i32 0, i32* @joycount, align 4
  store i32 -1, i32* %1, align 4
  br label %58

21:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @joycount, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32, i32* %2, align 4
  %28 = call i32* @joy_get_joystick(i32 %27)
  %29 = load i32**, i32*** @joys, align 8
  %30 = load i32, i32* %2, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* %28, i32** %32, align 8
  %33 = load i32**, i32*** @joys, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  br label %54

40:                                               ; preds = %26
  %41 = load i32**, i32*** @joys, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @joy_open_joystick(i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i32**, i32*** @joys, align 8
  %50 = load i32, i32* %2, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  store i32* null, i32** %52, align 8
  br label %54

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53, %48, %39
  %55 = load i32, i32* %2, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %2, align 4
  br label %22

57:                                               ; preds = %22
  store i32 1, i32* @initted, align 4
  store i32 0, i32* %1, align 4
  br label %58

58:                                               ; preds = %57, %20, %10, %5
  %59 = load i32, i32* %1, align 4
  ret i32 %59
}

declare dso_local i32 @joy_scan_joysticks(...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32* @joy_get_joystick(i32) #1

declare dso_local i32 @joy_open_joystick(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
