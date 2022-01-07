; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_sh2_read8_cs0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_sh2_read8_cs0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i64 }

@SH2_STATE_VPOLL = common dso_local global i32 0, align 4
@Pico32xMem = common dso_local global %struct.TYPE_12__* null, align 8
@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"r8  [%08x]       %02x @%06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_15__*)* @sh2_read8_cs0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh2_read8_cs0(i32 %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %8 = call i32 @sh2_burn_cycles(%struct.TYPE_15__* %7, i32 2)
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 262080
  %11 = icmp eq i32 %10, 16384
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = call i32 @p32x_sh2reg_read16(i32 %13, %struct.TYPE_15__* %14)
  store i32 %15, i32* %6, align 4
  br label %83

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, 262128
  %19 = icmp eq i32 %18, 16640
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @p32x_vdp_read16(i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SH2_STATE_VPOLL, align 4
  %26 = call i32 @sh2_poll_detect(%struct.TYPE_15__* %23, i32 %24, i32 %25, i32 7)
  br label %83

27:                                               ; preds = %16
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 8
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Pico32xMem, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = xor i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %3, align 4
  br label %102

46:                                               ; preds = %32, %27
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp ult i64 %53, 8
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Pico32xMem, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = xor i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %3, align 4
  br label %102

65:                                               ; preds = %51, %46
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 261632
  %68 = icmp eq i32 %67, 16896
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Pico32xMem, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %73, 511
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %72, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %6, align 4
  br label %83

79:                                               ; preds = %65
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %82 = call i32 @sh2_read8_unmapped(i32 %80, %struct.TYPE_15__* %81)
  store i32 %82, i32* %3, align 4
  br label %102

83:                                               ; preds = %69, %20, %12
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 1
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, 255
  store i32 %89, i32* %6, align 4
  br label %93

90:                                               ; preds = %83
  %91 = load i32, i32* %6, align 4
  %92 = ashr i32 %91, 8
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %95 = load i32, i32* @EL_32X, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %99 = call i32 @sh2_pc(%struct.TYPE_15__* %98)
  %100 = call i32 @elprintf_sh2(%struct.TYPE_15__* %94, i32 %95, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97, i32 %99)
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %93, %79, %55, %36
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @sh2_burn_cycles(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @p32x_sh2reg_read16(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @p32x_vdp_read16(i32) #1

declare dso_local i32 @sh2_poll_detect(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @sh2_read8_unmapped(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @elprintf_sh2(%struct.TYPE_15__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sh2_pc(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
