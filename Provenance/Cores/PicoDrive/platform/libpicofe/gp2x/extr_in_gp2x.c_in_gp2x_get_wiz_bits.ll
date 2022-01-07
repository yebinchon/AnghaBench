; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_in_gp2x.c_in_gp2x_get_wiz_bits.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_in_gp2x.c_in_gp2x_get_wiz_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gpiodev = common dso_local global i32 0, align 4
@GP2X_BTN_VOL_UP = common dso_local global i32 0, align 4
@GP2X_BTN_VOL_DOWN = common dso_local global i32 0, align 4
@GP2X_BTN_PUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @in_gp2x_get_wiz_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in_gp2x_get_wiz_bits() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %3 = load i32, i32* @gpiodev, align 4
  %4 = call i32 @read(i32 %3, i32* %2, i32 4)
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* %2, align 4
  %6 = and i32 %5, 2
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load i32, i32* %2, align 4
  %10 = or i32 %9, 5
  store i32 %10, i32* %2, align 4
  br label %11

11:                                               ; preds = %8, %0
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = or i32 %16, 20
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %15, %11
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %2, align 4
  %24 = or i32 %23, 80
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, 128
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = or i32 %30, 65
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %29, %25
  %33 = load i32, i32* %2, align 4
  %34 = and i32 %33, 524117
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %2, align 4
  %36 = and i32 %35, 65536
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @GP2X_BTN_VOL_UP, align 4
  %40 = shl i32 1, %39
  %41 = load i32, i32* %2, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %32
  %44 = load i32, i32* %2, align 4
  %45 = and i32 %44, 131072
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = load i32, i32* @GP2X_BTN_VOL_DOWN, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %2, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* %2, align 4
  %54 = and i32 %53, 262144
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i32, i32* @GP2X_BTN_PUSH, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %2, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i32, i32* %2, align 4
  %63 = and i32 %62, -458753
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
