; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoRead16_32x_on.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoRead16_32x_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@Pico32xMem = common dso_local global %struct.TYPE_2__* null, align 8
@EL_UIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"m68k unmapped r16 [%06x] @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@EL_32X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"m68k 32x r16 [%06x] %04x @%06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @PicoRead16_32x_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @PicoRead16_32x_on(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65472
  %7 = icmp eq i32 %6, 20736
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @p32x_reg_read16(i32 %9)
  store i32 %10, i32* %4, align 4
  br label %64

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 64512
  %14 = icmp ne i32 %13, 20480
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load i32, i32* @PicoAHW, align 4
  %17 = load i32, i32* @PAHW_MCD, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @PicoRead16_mcd_io(i32 %21)
  store i32 %22, i32* %2, align 4
  br label %71

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @PicoRead16_io(i32 %24)
  store i32 %25, i32* %2, align 4
  br label %71

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 65520
  %29 = icmp eq i32 %28, 20864
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @p32x_vdp_read16(i32 %31)
  store i32 %32, i32* %4, align 4
  br label %64

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 65024
  %36 = icmp eq i32 %35, 20992
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @Pico32xMem, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, 511
  %43 = sdiv i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %4, align 4
  br label %64

47:                                               ; preds = %33
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 65532
  %50 = icmp eq i32 %49, 12524
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 2
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 19777, i32 21075
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %47
  %59 = load i32, i32* @EL_UIO, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @SekPc, align 4
  %62 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %59, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %71

64:                                               ; preds = %51, %37, %30, %8
  %65 = load i32, i32* @EL_32X, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @SekPc, align 4
  %69 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %64, %58, %23, %20
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @p32x_reg_read16(i32) #1

declare dso_local i32 @PicoRead16_mcd_io(i32) #1

declare dso_local i32 @PicoRead16_io(i32) #1

declare dso_local i32 @p32x_vdp_read16(i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
