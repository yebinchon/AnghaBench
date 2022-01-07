; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/pico/extr_memory.c_PicoRead8_pico.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/pico/extr_memory.c_PicoRead8_pico.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32 }

@PicoPicohw = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PicoPad = common dso_local global i32* null, align 8
@EL_UIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"m68k unmapped r8  [%06x] @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PicoRead8_pico to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PicoRead8_pico(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 16777184
  %7 = icmp eq i32 %6, 8388608
  br i1 %7, label %8, label %60

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = and i32 %9, 31
  switch i32 %10, label %57 [
    i32 1, label %11
    i32 3, label %13
    i32 5, label %27
    i32 7, label %32
    i32 9, label %37
    i32 11, label %42
    i32 13, label %47
    i32 18, label %52
  ]

11:                                               ; preds = %8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 0), align 8
  store i32 %12, i32* %4, align 4
  br label %58

13:                                               ; preds = %8
  %14 = load i32*, i32** @PicoPad, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 31
  store i32 %17, i32* %4, align 4
  %18 = load i32*, i32** @PicoPad, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 32
  %22 = shl i32 %21, 2
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = xor i32 %25, -1
  store i32 %26, i32* %4, align 4
  br label %58

27:                                               ; preds = %8
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 1), align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = ashr i32 %30, 8
  store i32 %31, i32* %4, align 4
  br label %58

32:                                               ; preds = %8
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 1), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 255
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %8
  %38 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 1), align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = ashr i32 %40, 8
  store i32 %41, i32* %4, align 4
  br label %58

42:                                               ; preds = %8
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 1), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %4, align 4
  br label %58

47:                                               ; preds = %8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 2), align 8
  %49 = and i32 %48, 7
  %50 = shl i32 1, %49
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %58

52:                                               ; preds = %8
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @PicoPicohw, i32 0, i32 3), align 4
  %54 = icmp eq i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 128, i32 0
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %8
  br label %61

58:                                               ; preds = %52, %47, %42, %37, %32, %27, %13, %11
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %67

60:                                               ; preds = %1
  br label %61

61:                                               ; preds = %60, %57
  %62 = load i32, i32* @EL_UIO, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @SekPc, align 4
  %65 = call i32 @elprintf(i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %61, %58
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
