; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_timervalidate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_filt_timervalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_internal_s = type { i32, i64, i64* }
%struct.filt_timer_params = type { i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NOTE_LEEWAY = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@NOTE_ABSOLUTE = common dso_local global i32 0, align 4
@NOTE_MACH_CONTINUOUS_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kevent_internal_s*, %struct.filt_timer_params*)* @filt_timervalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_timervalidate(%struct.kevent_internal_s* %0, %struct.filt_timer_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kevent_internal_s*, align 8
  %5 = alloca %struct.filt_timer_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.kevent_internal_s* %0, %struct.kevent_internal_s** %4, align 8
  store %struct.filt_timer_params* %1, %struct.filt_timer_params** %5, align 8
  %20 = load i64, i64* @FALSE, align 8
  store i64 %20, i64* %7, align 8
  %21 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %22 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 131
  switch i32 %24, label %35 [
    i32 129, label %25
    i32 128, label %27
    i32 130, label %29
    i32 131, label %30
    i32 0, label %32
  ]

25:                                               ; preds = %2
  %26 = load i32, i32* @NSEC_PER_SEC, align 4
  store i32 %26, i32* %6, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load i32, i32* @NSEC_PER_USEC, align 4
  store i32 %28, i32* %6, align 4
  br label %37

29:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %37

30:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %31 = load i64, i64* @TRUE, align 8
  store i64 %31, i64* %7, align 8
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @NSEC_PER_SEC, align 4
  %34 = sdiv i32 %33, 1000
  store i32 %34, i32* %6, align 4
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %3, align 4
  br label %192

37:                                               ; preds = %32, %30, %29, %27, %25
  %38 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %39 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @NOTE_LEEWAY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %73

44:                                               ; preds = %37
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %49 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %48, i32 0, i32 2
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %8, align 4
  br label %69

54:                                               ; preds = %44
  %55 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %56 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @os_mul_overflow(i32 %60, i32 %61, i32* %9)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i32, i32* @ERANGE, align 4
  store i32 %65, i32* %3, align 4
  br label %192

66:                                               ; preds = %54
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @nanoseconds_to_absolutetime(i32 %67, i32* %8)
  br label %69

69:                                               ; preds = %66, %47
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.filt_timer_params*, %struct.filt_timer_params** %5, align 8
  %72 = getelementptr inbounds %struct.filt_timer_params, %struct.filt_timer_params* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %76

73:                                               ; preds = %37
  %74 = load %struct.filt_timer_params*, %struct.filt_timer_params** %5, align 8
  %75 = getelementptr inbounds %struct.filt_timer_params, %struct.filt_timer_params* %74, i32 0, i32 0
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %69
  %77 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %78 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @NOTE_ABSOLUTE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %139

83:                                               ; preds = %76
  %84 = load i64, i64* %7, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %88 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %10, align 4
  br label %133

91:                                               ; preds = %83
  %92 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %93 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32, i32* %6, align 4
  %97 = call i64 @os_mul_overflow(i32 %95, i32 %96, i32* %11)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %91
  %100 = load i32, i32* @ERANGE, align 4
  store i32 %100, i32* %3, align 4
  br label %192

101:                                              ; preds = %91
  %102 = call i32 @clock_get_calendar_nanotime(i64* %12, i32* %13)
  %103 = load i64, i64* %12, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32, i32* @NSEC_PER_SEC, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load i32, i32* %13, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %131

112:                                              ; preds = %101
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %14, align 4
  %115 = sub nsw i32 %113, %114
  store i32 %115, i32* %15, align 4
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @nanoseconds_to_absolutetime(i32 %116, i32* %16)
  %118 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %119 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NOTE_MACH_CONTINUOUS_TIME, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %112
  %125 = load i32, i32* %16, align 4
  %126 = call i32 @clock_continuoustime_interval_to_deadline(i32 %125, i32* %10)
  br label %130

127:                                              ; preds = %112
  %128 = load i32, i32* %16, align 4
  %129 = call i32 @clock_absolutetime_interval_to_deadline(i32 %128, i32* %10)
  br label %130

130:                                              ; preds = %127, %124
  br label %132

131:                                              ; preds = %101
  store i32 0, i32* %10, align 4
  br label %132

132:                                              ; preds = %131, %130
  br label %133

133:                                              ; preds = %132, %86
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.filt_timer_params*, %struct.filt_timer_params** %5, align 8
  %136 = getelementptr inbounds %struct.filt_timer_params, %struct.filt_timer_params* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  %137 = load %struct.filt_timer_params*, %struct.filt_timer_params** %5, align 8
  %138 = getelementptr inbounds %struct.filt_timer_params, %struct.filt_timer_params* %137, i32 0, i32 2
  store i32 0, i32* %138, align 4
  br label %191

139:                                              ; preds = %76
  %140 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %141 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %139
  %145 = load %struct.filt_timer_params*, %struct.filt_timer_params** %5, align 8
  %146 = getelementptr inbounds %struct.filt_timer_params, %struct.filt_timer_params* %145, i32 0, i32 1
  store i32 0, i32* %146, align 4
  %147 = load %struct.filt_timer_params*, %struct.filt_timer_params** %5, align 8
  %148 = getelementptr inbounds %struct.filt_timer_params, %struct.filt_timer_params* %147, i32 0, i32 2
  store i32 0, i32* %148, align 4
  br label %190

149:                                              ; preds = %139
  store i32 0, i32* %17, align 4
  %150 = load i64, i64* %7, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %154 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %17, align 4
  br label %170

157:                                              ; preds = %149
  %158 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %159 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* %6, align 4
  %163 = call i64 @os_mul_overflow(i32 %161, i32 %162, i32* %18)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %157
  %166 = load i32, i32* @ERANGE, align 4
  store i32 %166, i32* %3, align 4
  br label %192

167:                                              ; preds = %157
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @nanoseconds_to_absolutetime(i32 %168, i32* %17)
  br label %170

170:                                              ; preds = %167, %152
  store i32 0, i32* %19, align 4
  %171 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %172 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @NOTE_MACH_CONTINUOUS_TIME, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %170
  %178 = load i32, i32* %17, align 4
  %179 = call i32 @clock_continuoustime_interval_to_deadline(i32 %178, i32* %19)
  br label %183

180:                                              ; preds = %170
  %181 = load i32, i32* %17, align 4
  %182 = call i32 @clock_absolutetime_interval_to_deadline(i32 %181, i32* %19)
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %19, align 4
  %185 = load %struct.filt_timer_params*, %struct.filt_timer_params** %5, align 8
  %186 = getelementptr inbounds %struct.filt_timer_params, %struct.filt_timer_params* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* %17, align 4
  %188 = load %struct.filt_timer_params*, %struct.filt_timer_params** %5, align 8
  %189 = getelementptr inbounds %struct.filt_timer_params, %struct.filt_timer_params* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %183, %144
  br label %191

191:                                              ; preds = %190, %133
  store i32 0, i32* %3, align 4
  br label %192

192:                                              ; preds = %191, %165, %99, %64, %35
  %193 = load i32, i32* %3, align 4
  ret i32 %193
}

declare dso_local i64 @os_mul_overflow(i32, i32, i32*) #1

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i32*) #1

declare dso_local i32 @clock_get_calendar_nanotime(i64*, i32*) #1

declare dso_local i32 @clock_continuoustime_interval_to_deadline(i32, i32*) #1

declare dso_local i32 @clock_absolutetime_interval_to_deadline(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
