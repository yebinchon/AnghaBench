; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_DriverInitialize.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/pc/extr_main.c_DriverInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CloseStuff = common dso_local global i32 0, align 4
@inited = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @DriverInitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DriverInitialize(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @CloseStuff, align 4
  %5 = call i32 @SetSignals(i32 %4)
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @InitVideo(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

10:                                               ; preds = %1
  %11 = load i32, i32* @inited, align 4
  %12 = or i32 %11, 4
  store i32 %12, i32* @inited, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = call i64 @InitSound(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load i32, i32* @inited, align 4
  %18 = or i32 %17, 1
  store i32 %18, i32* @inited, align 4
  br label %19

19:                                               ; preds = %16, %10
  %20 = call i64 (...) @InitJoysticks()
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* @inited, align 4
  %24 = or i32 %23, 2
  store i32 %24, i32* @inited, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = call i32 (...) @InitKeyboard()
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %33

29:                                               ; preds = %25
  %30 = load i32, i32* @inited, align 4
  %31 = or i32 %30, 8
  store i32 %31, i32* @inited, align 4
  %32 = call i32 (...) @InitOtherInput()
  store i32 1, i32* %2, align 4
  br label %33

33:                                               ; preds = %29, %28, %9
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @SetSignals(i32) #1

declare dso_local i32 @InitVideo(i32*) #1

declare dso_local i64 @InitSound(i32*) #1

declare dso_local i64 @InitJoysticks(...) #1

declare dso_local i32 @InitKeyboard(...) #1

declare dso_local i32 @InitOtherInput(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
