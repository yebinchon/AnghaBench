; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-joystick.c_InitJoysticks.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_dos-joystick.c_InitJoysticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@joy = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Joystick not detected!\0A\00", align 1
@soundo = common dso_local global i64 0, align 8
@soundjoyeron = common dso_local global i32 0, align 4
@soundjoyer = common dso_local global i32 0, align 4
@joyx = common dso_local global i32 0, align 4
@joyxcenter = common dso_local global i32 0, align 4
@joyy = common dso_local global i32 0, align 4
@joyycenter = common dso_local global i32 0, align 4
@joyBMap = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitJoysticks() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @joy, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %5, label %4

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %44

5:                                                ; preds = %0
  %6 = call i32 (...) @DetectJoystick()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* @joy, align 8
  store i32 0, i32* %1, align 4
  br label %44

10:                                               ; preds = %5
  %11 = load i64, i64* @soundo, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %10
  store i32 1, i32* @soundjoyeron, align 4
  br label %14

14:                                               ; preds = %18, %13
  %15 = load i32, i32* @soundjoyer, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  br label %14

19:                                               ; preds = %14
  br label %22

20:                                               ; preds = %10
  %21 = call i32 (...) @UpdateJoyData()
  br label %22

22:                                               ; preds = %20, %19
  %23 = load i32, i32* @joyx, align 4
  store i32 %23, i32* @joyxcenter, align 4
  %24 = load i32, i32* @joyy, align 4
  store i32 %24, i32* @joyycenter, align 4
  %25 = load i32*, i32** @joyBMap, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** @joyBMap, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = load i32*, i32** @joyBMap, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 2
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %31, %34
  %36 = load i32*, i32** @joyBMap, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %22
  %42 = call i32 (...) @ConfigJoystick()
  br label %43

43:                                               ; preds = %41, %22
  store i32 1, i32* %1, align 4
  br label %44

44:                                               ; preds = %43, %8, %4
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @DetectJoystick(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @UpdateJoyData(...) #1

declare dso_local i32 @ConfigJoystick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
