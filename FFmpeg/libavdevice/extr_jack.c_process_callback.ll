; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_jack.c_process_callback.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_jack.c_process_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, i32, i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_9__ = type { double, i64 }
%struct.TYPE_7__ = type { i64 }

@JackCaptureLatency = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @process_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_callback(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca float*, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct.TYPE_7__, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %8, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %151

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 9
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @jack_frames_since_cycle_start(i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 8
  %30 = load i32, i32* %29, align 4
  %31 = call double (...) @av_gettime()
  %32 = fdiv double %31, 1.000000e+06
  %33 = load i64, i64* %11, align 8
  %34 = sitofp i64 %33 to double
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load double, double* %36, align 8
  %38 = fdiv double %34, %37
  %39 = fsub double %32, %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call double @ff_timefilter_update(i32 %30, double %39, i32 %42)
  store double %43, double* %14, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @av_fifo_size(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = icmp ult i64 %48, 16
  br i1 %49, label %57, label %50

50:                                               ; preds = %23
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @av_fifo_space(i32 %53)
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 16
  br i1 %56, label %57, label %60

57:                                               ; preds = %50, %23
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  store i32 0, i32* %3, align 4
  br label %151

60:                                               ; preds = %50
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 7
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @av_fifo_generic_read(i32 %63, %struct.TYPE_9__* %12, i32 16, i32* null)
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to float*
  store float* %67, float** %13, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %125, %60
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %128

74:                                               ; preds = %68
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @JackCaptureLatency, align 4
  %83 = call i32 @jack_port_get_latency_range(i32 %81, i32 %82, %struct.TYPE_7__* %15)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %10, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 6
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call float* @jack_port_get_buffer(i32 %94, i32 %97)
  store float* %98, float** %9, align 8
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %121, %74
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %99
  %106 = load float*, float** %9, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  %110 = load float, float* %109, align 4
  %111 = load float*, float** %13, align 8
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = mul nsw i32 %112, %115
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds float, float* %111, i64 %119
  store float %110, float* %120, align 4
  br label %121

121:                                              ; preds = %105
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  br label %99

124:                                              ; preds = %99
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  br label %68

128:                                              ; preds = %68
  %129 = load double, double* %14, align 8
  %130 = load i64, i64* %10, align 8
  %131 = sitofp i64 %130 to double
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = sitofp i32 %134 to double
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load double, double* %137, align 8
  %139 = fmul double %135, %138
  %140 = fdiv double %131, %139
  %141 = fsub double %129, %140
  %142 = fmul double %141, 1.000000e+06
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store double %142, double* %143, align 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @av_fifo_generic_write(i32 %146, %struct.TYPE_9__* %12, i32 16, i32* null)
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 4
  %150 = call i32 @sem_post(i32* %149)
  store i32 0, i32* %3, align 4
  br label %151

151:                                              ; preds = %128, %57, %22
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i64 @jack_frames_since_cycle_start(i32) #1

declare dso_local double @ff_timefilter_update(i32, double, i32) #1

declare dso_local double @av_gettime(...) #1

declare dso_local i32 @av_fifo_size(i32) #1

declare dso_local i32 @av_fifo_space(i32) #1

declare dso_local i32 @av_fifo_generic_read(i32, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @jack_port_get_latency_range(i32, i32, %struct.TYPE_7__*) #1

declare dso_local float* @jack_port_get_buffer(i32, i32) #1

declare dso_local i32 @av_fifo_generic_write(i32, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @sem_post(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
