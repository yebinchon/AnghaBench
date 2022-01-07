; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_sh2_read16_cs0.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_memory.c_sh2_read16_cs0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i64 }

@EL_LOGMASK = common dso_local global i32 0, align 4
@EL_PWM = common dso_local global i32 0, align 4
@SH2_STATE_VPOLL = common dso_local global i32 0, align 4
@Pico32xMem = common dso_local global %struct.TYPE_12__* null, align 8
@EL_32X = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"r16 [%08x]     %04x @%06x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_15__*)* @sh2_read16_cs0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh2_read16_cs0(i32 %0, %struct.TYPE_15__* %1) #0 {
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
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %15 = call i32 @p32x_sh2reg_read16(i32 %13, %struct.TYPE_15__* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @EL_LOGMASK, align 4
  %17 = load i32, i32* @EL_PWM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, 48
  %23 = icmp eq i32 %22, 48
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %3, align 4
  br label %103

26:                                               ; preds = %20, %12
  br label %94

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 262128
  %30 = icmp eq i32 %29, 16640
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @p32x_vdp_read16(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @SH2_STATE_VPOLL, align 4
  %37 = call i32 @sh2_poll_detect(%struct.TYPE_15__* %34, i32 %35, i32 %36, i32 7)
  br label %94

38:                                               ; preds = %27
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ult i64 %45, 8
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Pico32xMem, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sdiv i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %3, align 4
  br label %103

57:                                               ; preds = %43, %38
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %57
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp ult i64 %64, 8
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Pico32xMem, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sdiv i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %3, align 4
  br label %103

76:                                               ; preds = %62, %57
  %77 = load i32, i32* %4, align 4
  %78 = and i32 %77, 261632
  %79 = icmp eq i32 %78, 16896
  br i1 %79, label %80, label %90

80:                                               ; preds = %76
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @Pico32xMem, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = and i32 %84, 511
  %86 = sdiv i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %6, align 4
  br label %94

90:                                               ; preds = %76
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %93 = call i32 @sh2_read16_unmapped(i32 %91, %struct.TYPE_15__* %92)
  store i32 %93, i32* %3, align 4
  br label %103

94:                                               ; preds = %80, %31, %26
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = load i32, i32* @EL_32X, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %6, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = call i32 @sh2_pc(%struct.TYPE_15__* %99)
  %101 = call i32 @elprintf_sh2(%struct.TYPE_15__* %95, i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98, i32 %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %94, %90, %66, %47, %24
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @sh2_burn_cycles(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @p32x_sh2reg_read16(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @p32x_vdp_read16(i32) #1

declare dso_local i32 @sh2_poll_detect(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @sh2_read16_unmapped(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @elprintf_sh2(%struct.TYPE_15__*, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @sh2_pc(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
