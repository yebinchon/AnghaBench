; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoRead16_32x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoRead16_32x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EL_UIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"m68k unmapped r16 [%06x] @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@EL_32X = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"m68k 32x r16 [%06x] %04x @%06x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PicoRead16_32x(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 65472
  %7 = icmp eq i32 %6, 20736
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 63
  %12 = sdiv i32 %11, 2
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %9, i64 %13
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 65532
  %19 = icmp eq i32 %18, 12524
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 2
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 19777, i32 21075
  store i32 %26, i32* %4, align 4
  br label %33

27:                                               ; preds = %16
  %28 = load i32, i32* @EL_UIO, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @SekPc, align 4
  %31 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %20, %8
  %34 = load i32, i32* @EL_32X, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @SekPc, align 4
  %38 = call i32 (i32, i8*, i32, i32, ...) @elprintf(i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
