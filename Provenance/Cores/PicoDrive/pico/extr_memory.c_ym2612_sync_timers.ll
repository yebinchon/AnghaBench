; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_sync_timers.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_sync_timers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@timer_a_next_oflow = common dso_local global i32 0, align 4
@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@timer_b_next_oflow = common dso_local global i32 0, align 4
@timer_a_step = common dso_local global i32 0, align 4
@TIMER_NO_OFLOW = common dso_local global i32 0, align 4
@EL_YMTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"timer a upd to %i @ %i\00", align 1
@timer_b_step = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"timer b upd to %i @ %i\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ym2612_sync_timers(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = shl i32 %8, 8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @timer_a_next_oflow, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 4
  %19 = or i32 %18, 1
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 4
  br label %20

20:                                               ; preds = %17, %13, %3
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @timer_b_next_oflow, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 4
  %30 = or i32 %29, 2
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0, i32 0, i32 0), align 4
  br label %31

31:                                               ; preds = %28, %24, %20
  %32 = load i32, i32* %5, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %40, %35
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @timer_a_next_oflow, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i32, i32* @timer_a_step, align 4
  %42 = load i32, i32* @timer_a_next_oflow, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* @timer_a_next_oflow, align 4
  br label %36

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %31
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = xor i32 %46, %47
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %45
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 1
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @TIMER_NO_OFLOW, align 4
  store i32 %56, i32* @timer_a_next_oflow, align 4
  br label %61

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @timer_a_step, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* @timer_a_next_oflow, align 4
  br label %61

61:                                               ; preds = %57, %55
  br label %62

62:                                               ; preds = %61, %45
  %63 = load i32, i32* %6, align 4
  %64 = and i32 %63, 1
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %62
  %67 = load i32, i32* @EL_YMTIMER, align 4
  %68 = load i32, i32* @timer_a_next_oflow, align 4
  %69 = ashr i32 %68, 8
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @elprintf(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %66, %62
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, 2
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %81, %76
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @timer_b_next_oflow, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @timer_b_step, align 4
  %83 = load i32, i32* @timer_b_next_oflow, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* @timer_b_next_oflow, align 4
  br label %77

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %6, align 4
  %89 = xor i32 %87, %88
  %90 = and i32 %89, 2
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i32, i32* %5, align 4
  %94 = and i32 %93, 2
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = load i32, i32* @TIMER_NO_OFLOW, align 4
  store i32 %97, i32* @timer_b_next_oflow, align 4
  br label %102

98:                                               ; preds = %92
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @timer_b_step, align 4
  %101 = add nsw i32 %99, %100
  store i32 %101, i32* @timer_b_next_oflow, align 4
  br label %102

102:                                              ; preds = %98, %96
  br label %103

103:                                              ; preds = %102, %86
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 2
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* @EL_YMTIMER, align 4
  %109 = load i32, i32* @timer_b_next_oflow, align 4
  %110 = ashr i32 %109, 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @elprintf(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %107, %103
  ret void
}

declare dso_local i32 @elprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
