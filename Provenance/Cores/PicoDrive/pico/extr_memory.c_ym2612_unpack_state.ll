; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_unpack_state.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_memory.c_ym2612_unpack_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ym2612 = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EL_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"old ym2612 state\00", align 1
@timer_a_step = common dso_local global double 0.000000e+00, align 8
@timer_a_next_oflow = common dso_local global i32 0, align 4
@TIMER_NO_OFLOW = common dso_local global i32 0, align 4
@timer_b_step = common dso_local global double 0.000000e+00, align 8
@timer_b_next_oflow = common dso_local global i32 0, align 4
@EL_YMTIMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"load: %i/%i, timer_a_next_oflow %i\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"load: %i/%i, timer_b_next_oflow %i\00", align 1
@POPT_EXT_FM = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ym2612_unpack_state() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = call i32 (...) @YM2612PicoStateLoad()
  store i32 32, i32* %1, align 4
  br label %8

8:                                                ; preds = %20, %0
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 160
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = call i32 @ym2612_write_local(i32 0, i32 %12, i32 0)
  %14 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ym2612_write_local(i32 1, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %11
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  br label %8

23:                                               ; preds = %8
  store i32 48, i32* %1, align 4
  br label %24

24:                                               ; preds = %37, %23
  %25 = load i32, i32* %1, align 4
  %26 = icmp slt i32 %25, 160
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load i32, i32* %1, align 4
  %29 = call i32 @ym2612_write_local(i32 2, i32 %28, i32 0)
  %30 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %31 = load i32, i32* %1, align 4
  %32 = or i32 %31, 256
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ym2612_write_local(i32 3, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %27
  %38 = load i32, i32* %1, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %1, align 4
  br label %24

40:                                               ; preds = %24
  store i32 175, i32* %1, align 4
  br label %41

41:                                               ; preds = %62, %40
  %42 = load i32, i32* %1, align 4
  %43 = icmp sge i32 %42, 160
  br i1 %43, label %44, label %65

44:                                               ; preds = %41
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @ym2612_write_local(i32 2, i32 %45, i32 0)
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %48 = load i32, i32* %1, align 4
  %49 = or i32 %48, 256
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ym2612_write_local(i32 3, i32 %52, i32 0)
  %54 = load i32, i32* %1, align 4
  %55 = call i32 @ym2612_write_local(i32 0, i32 %54, i32 0)
  %56 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %57 = load i32, i32* %1, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ym2612_write_local(i32 1, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %44
  %63 = load i32, i32* %1, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %1, align 4
  br label %41

65:                                               ; preds = %41
  store i32 176, i32* %1, align 4
  br label %66

66:                                               ; preds = %87, %65
  %67 = load i32, i32* %1, align 4
  %68 = icmp slt i32 %67, 184
  br i1 %68, label %69, label %90

69:                                               ; preds = %66
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @ym2612_write_local(i32 0, i32 %70, i32 0)
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %73 = load i32, i32* %1, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ym2612_write_local(i32 1, i32 %76, i32 0)
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @ym2612_write_local(i32 2, i32 %78, i32 0)
  %80 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 0), align 8
  %81 = load i32, i32* %1, align 4
  %82 = or i32 %81, 256
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ym2612_write_local(i32 3, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %69
  %88 = load i32, i32* %1, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %1, align 4
  br label %66

90:                                               ; preds = %66
  %91 = call i32 @YM2612PicoStateLoad2(i32* %4, i32* %6)
  store i32 %91, i32* %2, align 4
  %92 = load i32, i32* %2, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = load i32, i32* @EL_STATUS, align 4
  %96 = call i32 (i32, i8*, ...) @elprintf(i32 %95, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %154

97:                                               ; preds = %90
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1, i32 0, i32 0), align 8
  %99 = sub nsw i32 1024, %98
  %100 = shl i32 %99, 16
  store i32 %100, i32* %3, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1, i32 0, i32 1), align 4
  %102 = sub nsw i32 256, %101
  %103 = shl i32 %102, 16
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1, i32 0, i32 2), align 8
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %97
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* %4, align 4
  %110 = sub nsw i32 %108, %109
  %111 = sitofp i32 %110 to double
  %112 = load i32, i32* %3, align 4
  %113 = sitofp i32 %112 to double
  %114 = fdiv double %111, %113
  %115 = load double, double* @timer_a_step, align 8
  %116 = fmul double %114, %115
  %117 = fptosi double %116 to i32
  store i32 %117, i32* @timer_a_next_oflow, align 4
  br label %120

118:                                              ; preds = %97
  %119 = load i32, i32* @TIMER_NO_OFLOW, align 4
  store i32 %119, i32* @timer_a_next_oflow, align 4
  br label %120

120:                                              ; preds = %118, %107
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ym2612, i32 0, i32 1, i32 0, i32 2), align 8
  %122 = and i32 %121, 2
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %120
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 %125, %126
  %128 = sitofp i32 %127 to double
  %129 = load i32, i32* %5, align 4
  %130 = sitofp i32 %129 to double
  %131 = fdiv double %128, %130
  %132 = load double, double* @timer_b_step, align 8
  %133 = fmul double %131, %132
  %134 = fptosi double %133 to i32
  store i32 %134, i32* @timer_b_next_oflow, align 4
  br label %137

135:                                              ; preds = %120
  %136 = load i32, i32* @TIMER_NO_OFLOW, align 4
  store i32 %136, i32* @timer_b_next_oflow, align 4
  br label %137

137:                                              ; preds = %135, %124
  %138 = load i32, i32* @EL_YMTIMER, align 4
  %139 = load i32, i32* %4, align 4
  %140 = ashr i32 %139, 16
  %141 = load i32, i32* %3, align 4
  %142 = ashr i32 %141, 16
  %143 = load i32, i32* @timer_a_next_oflow, align 4
  %144 = ashr i32 %143, 8
  %145 = call i32 (i32, i8*, ...) @elprintf(i32 %138, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %142, i32 %144)
  %146 = load i32, i32* @EL_YMTIMER, align 4
  %147 = load i32, i32* %6, align 4
  %148 = ashr i32 %147, 16
  %149 = load i32, i32* %5, align 4
  %150 = ashr i32 %149, 16
  %151 = load i32, i32* @timer_b_next_oflow, align 4
  %152 = ashr i32 %151, 8
  %153 = call i32 (i32, i8*, ...) @elprintf(i32 %146, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %148, i32 %150, i32 %152)
  br label %154

154:                                              ; preds = %137, %94
  ret void
}

declare dso_local i32 @YM2612PicoStateLoad(...) #1

declare dso_local i32 @ym2612_write_local(i32, i32, i32) #1

declare dso_local i32 @YM2612PicoStateLoad2(i32*, i32*) #1

declare dso_local i32 @elprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
