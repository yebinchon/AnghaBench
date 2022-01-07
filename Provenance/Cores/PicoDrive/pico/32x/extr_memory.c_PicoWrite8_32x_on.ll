; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoWrite8_32x_on.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_PicoWrite8_32x_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i64 }

@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"m68k 32x w8  [%06x]   %02x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@PicoAHW = common dso_local global i32 0, align 4
@PAHW_MCD = common dso_local global i32 0, align 4
@Pico32x = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@P32XS_FM = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"m68k 32x PAL w8  [%06x]   %02x @%06x\00", align 1
@Pico32xMem = common dso_local global %struct.TYPE_3__* null, align 8
@EL_UIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"m68k unmapped w8  [%06x]   %02x @%06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PicoWrite8_32x_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PicoWrite8_32x_on(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 64512
  %7 = icmp eq i32 %6, 20480
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @EL_32X, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 255
  %13 = load i32, i32* @SekPc, align 4
  %14 = call i32 @elprintf(i32 %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %12, i32 %13)
  br label %15

15:                                               ; preds = %8, %2
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 65472
  %18 = icmp eq i32 %17, 20736
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @p32x_reg_write8(i32 %20, i32 %21)
  br label %95

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 64512
  %26 = icmp ne i32 %25, 20480
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load i32, i32* @PicoAHW, align 4
  %29 = load i32, i32* @PAHW_MCD, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @PicoWrite8_mcd_io(i32 %33, i32 %34)
  br label %40

36:                                               ; preds = %27
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @PicoWrite8_io(i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 10563825
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @bank_switch(i32 %46)
  br label %48

48:                                               ; preds = %43, %40
  br label %95

49:                                               ; preds = %23
  %50 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 0), align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @P32XS_FM, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %88, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 65520
  %59 = icmp eq i32 %58, 20864
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @p32x_vdp_write8(i32 %61, i32 %62)
  br label %95

64:                                               ; preds = %56
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 65024
  %67 = icmp eq i32 %66, 20992
  br i1 %67, label %68, label %87

68:                                               ; preds = %64
  %69 = load i32, i32* @EL_32X, align 4
  %70 = load i32, i32* @EL_ANOMALY, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, 255
  %75 = load i32, i32* @SekPc, align 4
  %76 = call i32 @elprintf(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %74, i32 %75)
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** @Pico32xMem, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 511
  %84 = xor i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %81, i64 %85
  store i32 %77, i32* %86, align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @Pico32x, i32 0, i32 1), align 8
  br label %95

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %87, %49
  %89 = load i32, i32* @EL_UIO, align 4
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %4, align 4
  %92 = and i32 %91, 255
  %93 = load i32, i32* @SekPc, align 4
  %94 = call i32 @elprintf(i32 %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %68, %60, %48, %19
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @p32x_reg_write8(i32, i32) #1

declare dso_local i32 @PicoWrite8_mcd_io(i32, i32) #1

declare dso_local i32 @PicoWrite8_io(i32, i32) #1

declare dso_local i32 @bank_switch(i32) #1

declare dso_local i32 @p32x_vdp_write8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
