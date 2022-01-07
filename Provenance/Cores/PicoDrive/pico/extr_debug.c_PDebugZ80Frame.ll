; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugZ80Frame.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_debug.c_PDebugZ80Frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, i64 }
%struct.TYPE_5__ = type { i64 }

@PicoAHW = common dso_local global i32 0, align 4
@PAHW_SMS = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@emustatus = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_Z80 = common dso_local global i32 0, align 4
@ym2612 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@PsndDacLine = common dso_local global i32 0, align 4
@PsndOut = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PDebugZ80Frame() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @PicoAHW, align 4
  %4 = load i32, i32* @PAHW_SMS, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %108

8:                                                ; preds = %0
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 312, i32* %1, align 4
  store i32 68, i32* %2, align 4
  br label %13

12:                                               ; preds = %8
  store i32 262, i32* %1, align 4
  store i32 93, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %11
  %14 = call i32 (...) @z80_resetCycles()
  %15 = load i32, i32* @emustatus, align 4
  %16 = and i32 %15, -2
  store i32 %16, i32* @emustatus, align 4
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 2), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @PicoOpt, align 4
  %24 = load i32, i32* @POPT_EN_Z80, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %2, align 4
  %29 = mul nsw i32 %28, 488
  %30 = call i32 @PicoSyncZ80(i32 %29)
  br label %31

31:                                               ; preds = %27, %22, %19, %13
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ym2612, i32 0, i32 0), align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i32, i32* @PsndDacLine, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @PsndDoDAC(i32 %39)
  br label %41

41:                                               ; preds = %38, %34, %31
  %42 = load i64, i64* @PsndOut, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @PsndGetSamples(i32 %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 2), align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* @PicoOpt, align 4
  %55 = load i32, i32* @POPT_EN_Z80, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call i32 @PicoSyncZ80(i32 109312)
  %60 = call i32 (...) @z80_int()
  br label %61

61:                                               ; preds = %58, %53, %50, %47
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ym2612, i32 0, i32 0), align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i32, i32* @PsndDacLine, align 4
  %66 = icmp sle i32 %65, 224
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 @PsndDoDAC(i32 224)
  br label %69

69:                                               ; preds = %67, %64, %61
  %70 = load i64, i64* @PsndOut, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = call i32 @PsndGetSamples(i32 224)
  br label %74

74:                                               ; preds = %72, %69
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 2), align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 1), align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %77
  %81 = load i32, i32* @PicoOpt, align 4
  %82 = load i32, i32* @POPT_EN_Z80, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 151809, i32 127671
  %90 = call i32 @PicoSyncZ80(i32 %89)
  br label %91

91:                                               ; preds = %85, %80, %77, %74
  %92 = load i64, i64* @PsndOut, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %91
  %95 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ym2612, i32 0, i32 0), align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %106

97:                                               ; preds = %94
  %98 = load i32, i32* @PsndDacLine, align 4
  %99 = load i32, i32* %1, align 4
  %100 = sub nsw i32 %99, 1
  %101 = icmp sle i32 %98, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %97
  %103 = load i32, i32* %1, align 4
  %104 = sub nsw i32 %103, 1
  %105 = call i32 @PsndDoDAC(i32 %104)
  br label %106

106:                                              ; preds = %102, %97, %94, %91
  %107 = call i32 (...) @timers_cycle()
  br label %108

108:                                              ; preds = %106, %7
  ret void
}

declare dso_local i32 @z80_resetCycles(...) #1

declare dso_local i32 @PicoSyncZ80(i32) #1

declare dso_local i32 @PsndDoDAC(i32) #1

declare dso_local i32 @PsndGetSamples(i32) #1

declare dso_local i32 @z80_int(...) #1

declare dso_local i32 @timers_cycle(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
