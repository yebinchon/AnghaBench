; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoWrite8_32x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoWrite8_32x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"m68k 32x w8  [%06x]   %02x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@P32XS_ADEN = common dso_local global i32 0, align 4
@P32XS_nRES = common dso_local global i32 0, align 4
@EL_UIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"m68k unmapped w8  [%06x]   %02x @%06x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoWrite8_32x(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 65472
  %9 = icmp eq i32 %8, 20736
  br i1 %9, label %10, label %63

10:                                               ; preds = %2
  %11 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  store i32* %11, i32** %5, align 8
  %12 = load i32, i32* @EL_32X, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 255
  %16 = load i32, i32* @SekPc, align 4
  %17 = call i32 @elprintf(i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 63
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %50

22:                                               ; preds = %10
  %23 = load i32, i32* %4, align 4
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = xor i32 %23, %26
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @P32XS_ADEN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %22
  %34 = call i32 (...) @Pico32xStartup()
  %35 = load i32, i32* @P32XS_nRES, align 4
  %36 = xor i32 %35, -1
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @P32XS_ADEN, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* %3, align 4
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @p32x_reg_write8(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %33, %22
  br label %70

50:                                               ; preds = %10
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %51, 48
  %53 = icmp eq i32 %52, 32
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i32*, i32** %5, align 8
  store i32* %55, i32** %6, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %3, align 4
  %59 = xor i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %57, i64 %60
  store i32 %56, i32* %61, align 4
  br label %62

62:                                               ; preds = %54, %50
  br label %70

63:                                               ; preds = %2
  %64 = load i32, i32* @EL_UIO, align 4
  %65 = load i32, i32* %3, align 4
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 255
  %68 = load i32, i32* @SekPc, align 4
  %69 = call i32 @elprintf(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %63, %62, %49
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @Pico32xStartup(...) #1

declare dso_local i32 @p32x_reg_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
