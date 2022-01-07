; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_pier_write8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/extr_carthw.c_carthw_pier_write8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@pier_regs = common dso_local global i32* null, align 8
@EL_UIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"pier w8  [%06x] %02x @%06x\00", align 1
@SekPc = common dso_local global i32 0, align 4
@EL_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"-- unmapped w8 [%06x] %02x @%06x\00", align 1
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"pier: missing bank @ %06x\00", align 1
@m68k_read8_map = common dso_local global i32 0, align 4
@m68k_read16_map = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @carthw_pier_write8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carthw_pier_write8(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 16776960
  %10 = icmp ne i32 %9, 10563584
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @PicoWrite8_io(i32 %12, i32 %13)
  br label %105

15:                                               ; preds = %2
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32*, i32** @pier_regs, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sdiv i32 %20, 2
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  store i32 %18, i32* %23, align 4
  %24 = load i32, i32* @EL_UIO, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 65535
  %28 = load i32, i32* @SekPc, align 4
  %29 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  switch i32 %30, label %64 [
    i32 1, label %31
    i32 3, label %32
    i32 5, label %42
    i32 7, label %52
    i32 9, label %62
    i32 11, label %63
  ]

31:                                               ; preds = %15
  br label %72

32:                                               ; preds = %15
  %33 = load i32*, i32** @pier_regs, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %65

39:                                               ; preds = %32
  store i32 2621440, i32* %6, align 4
  %40 = load i32, i32* %4, align 4
  %41 = shl i32 %40, 19
  store i32 %41, i32* %7, align 4
  br label %73

42:                                               ; preds = %15
  %43 = load i32*, i32** @pier_regs, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 2
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %65

49:                                               ; preds = %42
  store i32 3145728, i32* %6, align 4
  %50 = load i32, i32* %4, align 4
  %51 = shl i32 %50, 19
  store i32 %51, i32* %7, align 4
  br label %73

52:                                               ; preds = %15
  %53 = load i32*, i32** @pier_regs, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 2
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  br label %65

59:                                               ; preds = %52
  store i32 3670016, i32* %6, align 4
  %60 = load i32, i32* %4, align 4
  %61 = shl i32 %60, 19
  store i32 %61, i32* %7, align 4
  br label %73

62:                                               ; preds = %15
  br label %72

63:                                               ; preds = %15
  br label %64

64:                                               ; preds = %15, %63
  br label %65

65:                                               ; preds = %64, %58, %48, %38
  %66 = load i32, i32* @EL_STATUS, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 65535
  %70 = load i32, i32* @SekPc, align 4
  %71 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %66, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %65, %62, %31
  br label %105

73:                                               ; preds = %59, %49, %39
  %74 = load i32, i32* %7, align 4
  %75 = add nsw i32 %74, 524288
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load i32, i32* @EL_ANOMALY, align 4
  %80 = load i32, i32* @EL_STATUS, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %7, align 4
  %83 = call i32 (i32, i8*, i32, ...) @elprintf(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %82)
  br label %105

84:                                               ; preds = %73
  %85 = load i32, i32* @m68k_read8_map, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 524288
  %89 = sub nsw i32 %88, 1
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i32 @cpu68k_map_set(i32 %85, i32 %86, i32 %89, i64 %93, i32 0)
  %95 = load i32, i32* @m68k_read16_map, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = add nsw i32 %97, 524288
  %99 = sub nsw i32 %98, 1
  %100 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %101 = load i32, i32* %7, align 4
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %100, %102
  %104 = call i32 @cpu68k_map_set(i32 %95, i32 %96, i32 %99, i64 %103, i32 0)
  br label %105

105:                                              ; preds = %84, %78, %72, %11
  ret void
}

declare dso_local i32 @PicoWrite8_io(i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @cpu68k_map_set(i32, i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
