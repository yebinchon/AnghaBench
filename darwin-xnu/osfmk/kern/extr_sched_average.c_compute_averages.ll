; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_average.c_compute_averages.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_sched_average.c_compute_averages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32 (i32)* }

@sched_run_buckets = common dso_local global i64* null, align 8
@TH_BUCKET_RUN = common dso_local global i64 0, align 8
@processor_avail_count = common dso_local global i64 0, align 8
@TH_BUCKET_SHARE_FG = common dso_local global i64 0, align 8
@TH_BUCKET_SHARE_BG = common dso_local global i64 0, align 8
@sched_load = common dso_local global i32* null, align 8
@sched_fixed_shift = common dso_local global i64 0, align 8
@sched_load_shifts = common dso_local global i64* null, align 8
@sched_pri_shifts = common dso_local global i64* null, align 8
@sched_nrun = common dso_local global i64 0, align 8
@LOAD_SCALE = common dso_local global i64 0, align 8
@sched_mach_factor = common dso_local global i32 0, align 4
@sched_load_average = common dso_local global i32 0, align 4
@mach_factor = common dso_local global i64* null, align 8
@fract = common dso_local global i64* null, align 8
@avenrun = common dso_local global i64* null, align 8
@sched_average = common dso_local global %struct.TYPE_3__* null, align 8
@sched_one_second_interval = common dso_local global i64 0, align 8
@SCHED_TICK_MAX_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @compute_averages(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_3__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %17 = load i64*, i64** @sched_run_buckets, align 8
  %18 = load i64, i64* @TH_BUCKET_RUN, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = sub i64 %20, 1
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* @processor_avail_count, align 8
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* @TH_BUCKET_SHARE_FG, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %43, %1
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @TH_BUCKET_SHARE_BG, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  %29 = load i32*, i32** @sched_load, align 8
  %30 = load i64, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @SCHED_LOAD_EWMA_UNSCALE(i32 %32)
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* @sched_fixed_shift, align 8
  %35 = load i64*, i64** @sched_load_shifts, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %34, %38
  %40 = load i64*, i64** @sched_pri_shifts, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %28
  %44 = load i64, i64* %5, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %5, align 8
  br label %24

46:                                               ; preds = %24
  %47 = load i64, i64* %3, align 8
  store i64 %47, i64* @sched_nrun, align 8
  %48 = load i64, i64* %3, align 8
  %49 = load i64, i64* @LOAD_SCALE, align 8
  %50 = mul i64 %48, %49
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* %4, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @LOAD_SCALE, align 8
  %57 = mul i64 %55, %56
  %58 = load i64, i64* %3, align 8
  %59 = add i64 %58, 1
  %60 = udiv i64 %57, %59
  store i64 %60, i64* %8, align 8
  br label %67

61:                                               ; preds = %46
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* %3, align 8
  %64 = sub i64 %62, %63
  %65 = load i64, i64* @LOAD_SCALE, align 8
  %66 = mul i64 %64, %65
  store i64 %66, i64* %8, align 8
  br label %67

67:                                               ; preds = %61, %54
  store i64 0, i64* %9, align 8
  br label %68

68:                                               ; preds = %87, %67
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %2, align 8
  %71 = icmp ult i64 %69, %70
  br i1 %71, label %72, label %90

72:                                               ; preds = %68
  %73 = load i32, i32* @sched_mach_factor, align 4
  %74 = shl i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %75, %76
  %78 = udiv i64 %77, 5
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* @sched_mach_factor, align 4
  %80 = load i32, i32* @sched_load_average, align 4
  %81 = shl i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %7, align 8
  %84 = add i64 %82, %83
  %85 = udiv i64 %84, 5
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* @sched_load_average, align 4
  br label %87

87:                                               ; preds = %72
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %9, align 8
  br label %68

90:                                               ; preds = %68
  store i64 0, i64* %10, align 8
  br label %91

91:                                               ; preds = %150, %90
  %92 = load i64, i64* %10, align 8
  %93 = load i64, i64* %2, align 8
  %94 = icmp ult i64 %92, %93
  br i1 %94, label %95, label %153

95:                                               ; preds = %91
  store i64 0, i64* %11, align 8
  br label %96

96:                                               ; preds = %146, %95
  %97 = load i64, i64* %11, align 8
  %98 = icmp ult i64 %97, 3
  br i1 %98, label %99, label %149

99:                                               ; preds = %96
  %100 = load i64*, i64** @mach_factor, align 8
  %101 = load i64, i64* %11, align 8
  %102 = getelementptr inbounds i64, i64* %100, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** @fract, align 8
  %105 = load i64, i64* %11, align 8
  %106 = getelementptr inbounds i64, i64* %104, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = mul i64 %103, %107
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* @LOAD_SCALE, align 8
  %111 = load i64*, i64** @fract, align 8
  %112 = load i64, i64* %11, align 8
  %113 = getelementptr inbounds i64, i64* %111, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = sub i64 %110, %114
  %116 = mul i64 %109, %115
  %117 = add i64 %108, %116
  %118 = load i64, i64* @LOAD_SCALE, align 8
  %119 = udiv i64 %117, %118
  %120 = load i64*, i64** @mach_factor, align 8
  %121 = load i64, i64* %11, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  store i64 %119, i64* %122, align 8
  %123 = load i64*, i64** @avenrun, align 8
  %124 = load i64, i64* %11, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load i64*, i64** @fract, align 8
  %128 = load i64, i64* %11, align 8
  %129 = getelementptr inbounds i64, i64* %127, i64 %128
  %130 = load i64, i64* %129, align 8
  %131 = mul i64 %126, %130
  %132 = load i64, i64* %7, align 8
  %133 = load i64, i64* @LOAD_SCALE, align 8
  %134 = load i64*, i64** @fract, align 8
  %135 = load i64, i64* %11, align 8
  %136 = getelementptr inbounds i64, i64* %134, i64 %135
  %137 = load i64, i64* %136, align 8
  %138 = sub i64 %133, %137
  %139 = mul i64 %132, %138
  %140 = add i64 %131, %139
  %141 = load i64, i64* @LOAD_SCALE, align 8
  %142 = udiv i64 %140, %141
  %143 = load i64*, i64** @avenrun, align 8
  %144 = load i64, i64* %11, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  store i64 %142, i64* %145, align 8
  br label %146

146:                                              ; preds = %99
  %147 = load i64, i64* %11, align 8
  %148 = add i64 %147, 1
  store i64 %148, i64* %11, align 8
  br label %96

149:                                              ; preds = %96
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %10, align 8
  %152 = add i64 %151, 1
  store i64 %152, i64* %10, align 8
  br label %91

153:                                              ; preds = %91
  %154 = call i64 (...) @mach_absolute_time()
  store i64 %154, i64* %12, align 8
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sched_average, align 8
  store %struct.TYPE_3__* %155, %struct.TYPE_3__** %13, align 8
  br label %156

156:                                              ; preds = %207, %153
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 3
  %159 = load i32 (i32)*, i32 (i32)** %158, align 8
  %160 = icmp ne i32 (i32)* %159, null
  br i1 %160, label %161, label %210

161:                                              ; preds = %156
  %162 = load i64, i64* %12, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp uge i64 %162, %165
  br i1 %166, label %167, label %206

167:                                              ; preds = %161
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @sched_one_second_interval, align 8
  %172 = mul i64 %170, %171
  store i64 %172, i64* %14, align 8
  store i64 1, i64* %15, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = sub i64 %173, %176
  %178 = load i64, i64* %14, align 8
  %179 = udiv i64 %177, %178
  %180 = load i64, i64* %15, align 8
  %181 = add i64 %180, %179
  store i64 %181, i64* %15, align 8
  %182 = load i64, i64* %15, align 8
  %183 = load i32, i32* @SCHED_TICK_MAX_DELTA, align 4
  %184 = call i64 @MIN(i64 %182, i32 %183)
  store i64 %184, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %185

185:                                              ; preds = %197, %167
  %186 = load i64, i64* %16, align 8
  %187 = load i64, i64* %15, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %185
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 3
  %192 = load i32 (i32)*, i32 (i32)** %191, align 8
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 %192(i32 %195)
  br label %197

197:                                              ; preds = %189
  %198 = load i64, i64* %16, align 8
  %199 = add i64 %198, 1
  store i64 %199, i64* %16, align 8
  br label %185

200:                                              ; preds = %185
  %201 = load i64, i64* %12, align 8
  %202 = load i64, i64* %14, align 8
  %203 = add i64 %201, %202
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i32 0, i32 0
  store i64 %203, i64* %205, align 8
  br label %206

206:                                              ; preds = %200, %161
  br label %207

207:                                              ; preds = %206
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 1
  store %struct.TYPE_3__* %209, %struct.TYPE_3__** %13, align 8
  br label %156

210:                                              ; preds = %156
  ret void
}

declare dso_local i64 @SCHED_LOAD_EWMA_UNSCALE(i32) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local i64 @MIN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
