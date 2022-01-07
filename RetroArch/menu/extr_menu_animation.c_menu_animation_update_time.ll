; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_update_time.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_menu_animation_update_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { float }

@menu_animation_update_time.last_clock_update = internal global i64 0, align 8
@menu_animation_update_time.last_ticker_update = internal global i64 0, align 8
@menu_animation_update_time.last_ticker_slow_update = internal global i64 0, align 8
@menu_animation_update_time.ticker_pixel_accumulator = internal global float 0.000000e+00, align 4
@TICKER_SPEED = common dso_local global i64 0, align 8
@TICKER_SLOW_SPEED = common dso_local global i64 0, align 8
@cur_time = common dso_local global i64 0, align 8
@old_time = common dso_local global i64 0, align 8
@delta_time = common dso_local global float 0.000000e+00, align 4
@animation_is_active = common dso_local global i32 0, align 4
@ticker_is_active = common dso_local global i64 0, align 8
@ticker_idx = common dso_local global i32 0, align 4
@ticker_slow_idx = common dso_local global i32 0, align 4
@ticker_pixel_period = common dso_local global float 0.000000e+00, align 4
@.str = private unnamed_addr constant [5 x i8] c"rgui\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"ozone\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"glui\00", align 1
@ticker_pixel_idx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @menu_animation_update_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @menu_animation_update_time(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca float, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store float 0.000000e+00, float* %8, align 4
  %13 = call %struct.TYPE_7__* (...) @config_get_ptr()
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load float, float* %16, align 4
  %18 = fcmp ogt float %17, 0x3F1A36E2E0000000
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load float, float* %22, align 4
  br label %25

24:                                               ; preds = %3
  br label %25

25:                                               ; preds = %24, %19
  %26 = phi float [ %23, %19 ], [ 1.000000e+00, %24 ]
  store float %26, float* %10, align 4
  %27 = load i64, i64* @TICKER_SPEED, align 8
  %28 = sitofp i64 %27 to float
  %29 = load float, float* %10, align 4
  %30 = fdiv float %28, %29
  %31 = fpext float %30 to double
  %32 = fadd double %31, 5.000000e-01
  %33 = fptoui double %32 to i32
  store i32 %33, i32* %11, align 4
  %34 = load i64, i64* @TICKER_SLOW_SPEED, align 8
  %35 = sitofp i64 %34 to float
  %36 = load float, float* %10, align 4
  %37 = fdiv float %35, %36
  %38 = fpext float %37 to double
  %39 = fadd double %38, 5.000000e-01
  %40 = fptoui double %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = call i64 (...) @cpu_features_get_time_usec()
  store i64 %41, i64* @cur_time, align 8
  %42 = load i64, i64* @old_time, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %25
  br label %51

45:                                               ; preds = %25
  %46 = load i64, i64* @cur_time, align 8
  %47 = load i64, i64* @old_time, align 8
  %48 = sub nsw i64 %46, %47
  %49 = sitofp i64 %48 to float
  %50 = fdiv float %49, 1.000000e+03
  br label %51

51:                                               ; preds = %45, %44
  %52 = phi float [ 0.000000e+00, %44 ], [ %50, %45 ]
  store float %52, float* @delta_time, align 4
  %53 = load i64, i64* @cur_time, align 8
  store i64 %53, i64* @old_time, align 8
  %54 = load i64, i64* @cur_time, align 8
  %55 = load i64, i64* @menu_animation_update_time.last_clock_update, align 8
  %56 = sub nsw i64 %54, %55
  %57 = icmp sgt i64 %56, 1000000
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  store i32 1, i32* @animation_is_active, align 4
  %62 = load i64, i64* @cur_time, align 8
  store i64 %62, i64* @menu_animation_update_time.last_clock_update, align 8
  br label %63

63:                                               ; preds = %61, %58, %51
  %64 = load i64, i64* @ticker_is_active, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %157

66:                                               ; preds = %63
  %67 = load i64, i64* @cur_time, align 8
  %68 = load i64, i64* @menu_animation_update_time.last_ticker_update, align 8
  %69 = sub nsw i64 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = zext i32 %70 to i64
  %72 = icmp sge i64 %69, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @ticker_idx, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @ticker_idx, align 4
  %76 = load i64, i64* @cur_time, align 8
  store i64 %76, i64* @menu_animation_update_time.last_ticker_update, align 8
  br label %77

77:                                               ; preds = %73, %66
  %78 = load i64, i64* @cur_time, align 8
  %79 = load i64, i64* @menu_animation_update_time.last_ticker_slow_update, align 8
  %80 = sub nsw i64 %78, %79
  %81 = load i32, i32* %12, align 4
  %82 = zext i32 %81 to i64
  %83 = icmp sge i64 %80, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @ticker_slow_idx, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* @ticker_slow_idx, align 4
  %87 = load i64, i64* @cur_time, align 8
  store i64 %87, i64* @menu_animation_update_time.last_ticker_slow_update, align 8
  br label %88

88:                                               ; preds = %84, %77
  %89 = load float, float* @delta_time, align 4
  %90 = load float, float* @ticker_pixel_period, align 4
  %91 = fdiv float %89, %90
  store float %91, float* %8, align 4
  %92 = load float, float* %10, align 4
  %93 = load float, float* %8, align 4
  %94 = fmul float %93, %92
  store float %94, float* %8, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @string_is_equal(i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = load float, float* %8, align 4
  %103 = fmul float %102, 2.500000e-01
  store float %103, float* %8, align 4
  br label %140

104:                                              ; preds = %88
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @string_is_equal(i32 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load float, float* %8, align 4
  %113 = fmul float %112, 5.000000e-01
  store float %113, float* %8, align 4
  br label %139

114:                                              ; preds = %104
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @string_is_equal(i32 %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %114
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call float @menu_display_get_dpi_scale(i32 %122, i32 %123)
  %125 = fmul float %124, 0x3FE99999A0000000
  %126 = load float, float* %8, align 4
  %127 = fmul float %126, %125
  store float %127, float* %8, align 4
  br label %138

128:                                              ; preds = %114
  %129 = load i32, i32* %5, align 4
  %130 = icmp ugt i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load i32, i32* %5, align 4
  %133 = uitofp i32 %132 to float
  %134 = fdiv float %133, 1.920000e+03
  %135 = load float, float* %8, align 4
  %136 = fmul float %135, %134
  store float %136, float* %8, align 4
  br label %137

137:                                              ; preds = %131, %128
  br label %138

138:                                              ; preds = %137, %121
  br label %139

139:                                              ; preds = %138, %111
  br label %140

140:                                              ; preds = %139, %101
  %141 = load float, float* %8, align 4
  %142 = load float, float* @menu_animation_update_time.ticker_pixel_accumulator, align 4
  %143 = fadd float %142, %141
  store float %143, float* @menu_animation_update_time.ticker_pixel_accumulator, align 4
  %144 = load float, float* @menu_animation_update_time.ticker_pixel_accumulator, align 4
  %145 = fptoui float %144 to i32
  store i32 %145, i32* %7, align 4
  %146 = load i32, i32* %7, align 4
  %147 = icmp ugt i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %140
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @ticker_pixel_idx, align 4
  %151 = add i32 %150, %149
  store i32 %151, i32* @ticker_pixel_idx, align 4
  %152 = load i32, i32* %7, align 4
  %153 = uitofp i32 %152 to float
  %154 = load float, float* @menu_animation_update_time.ticker_pixel_accumulator, align 4
  %155 = fsub float %154, %153
  store float %155, float* @menu_animation_update_time.ticker_pixel_accumulator, align 4
  br label %156

156:                                              ; preds = %148, %140
  br label %157

157:                                              ; preds = %156, %63
  ret void
}

declare dso_local %struct.TYPE_7__* @config_get_ptr(...) #1

declare dso_local i64 @cpu_features_get_time_usec(...) #1

declare dso_local i64 @string_is_equal(i32, i8*) #1

declare dso_local float @menu_display_get_dpi_scale(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
