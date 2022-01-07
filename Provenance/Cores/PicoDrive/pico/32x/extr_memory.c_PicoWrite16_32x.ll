; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoWrite16_32x.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoWrite16_32x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@Pico32x = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EL_UIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"m68k 32x w16 [%06x] %04x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@P32XS_ADEN = common dso_local global i32 0, align 4
@P32XS_nRES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"m68k unmapped w16 [%06x] %04x @%06x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoWrite16_32x(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 65472
  %8 = icmp eq i32 %7, 20736
  br i1 %8, label %9, label %61

9:                                                ; preds = %2
  %10 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico32x, i32 0, i32 0), align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* @EL_UIO, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 65535
  %15 = load i32, i32* @SekPc, align 4
  %16 = call i32 @elprintf(i32 %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %14, i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 62
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %9
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %22, %25
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @P32XS_ADEN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %21
  %33 = call i32 (...) @Pico32xStartup()
  %34 = load i32, i32* @P32XS_nRES, align 4
  %35 = xor i32 %34, -1
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @P32XS_ADEN, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @p32x_reg_write16(i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %32, %21
  br label %68

49:                                               ; preds = %9
  %50 = load i32, i32* %3, align 4
  %51 = and i32 %50, 48
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load i32, i32* %4, align 4
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sdiv i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %49
  br label %68

61:                                               ; preds = %2
  %62 = load i32, i32* @EL_UIO, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, 65535
  %66 = load i32, i32* @SekPc, align 4
  %67 = call i32 @elprintf(i32 %62, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %63, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %60, %48
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @Pico32xStartup(...) #1

declare dso_local i32 @p32x_reg_write16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
