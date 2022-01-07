; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_cue.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_cue.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_19__*, %struct.TYPE_21__**, %struct.TYPE_21__** }
%struct.TYPE_19__ = type { i32, i64, i64, i64, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }

@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_22__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %14, i64 0
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %4, align 8
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %19, i64 0
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  store %struct.TYPE_21__* %21, %struct.TYPE_21__** %5, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  store %struct.TYPE_19__* %24, %struct.TYPE_19__** %6, align 8
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_21__* %25, %struct.TYPE_21__* %26)
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %29 = call i64 @ff_inlink_queued_frames(%struct.TYPE_21__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %170

31:                                               ; preds = %1
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %33 = call %struct.TYPE_20__* @ff_inlink_peek_frame(%struct.TYPE_21__* %32, i64 0)
  store %struct.TYPE_20__* %33, %struct.TYPE_20__** %7, align 8
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %41 = call i64 @av_rescale_q(i32 %36, i32 %39, i32 %40)
  store i64 %41, i64* %8, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %31
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  br label %54

54:                                               ; preds = %46, %31
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %88

59:                                               ; preds = %54
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %59
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %71 = call i32 @ff_inlink_consume_frame(%struct.TYPE_21__* %70, %struct.TYPE_20__** %7)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %178

76:                                               ; preds = %69
  %77 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %78 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %79 = call i32 @ff_filter_frame(%struct.TYPE_21__* %77, %struct.TYPE_20__* %78)
  store i32 %79, i32* %2, align 4
  br label %178

80:                                               ; preds = %59
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %80, %54
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 2
  br i1 %92, label %93, label %129

93:                                               ; preds = %88
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %96 = call i64 @ff_inlink_queued_frames(%struct.TYPE_21__* %95)
  %97 = sub nsw i64 %96, 1
  %98 = call %struct.TYPE_20__* @ff_inlink_peek_frame(%struct.TYPE_21__* %94, i64 %97)
  store %struct.TYPE_20__* %98, %struct.TYPE_20__** %7, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %106 = call i64 @av_rescale_q(i32 %101, i32 %104, i32 %105)
  store i64 %106, i64* %8, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %107, %110
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp slt i64 %111, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %93
  %117 = call i64 (...) @av_gettime()
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  %122 = icmp slt i64 %121, 0
  br i1 %122, label %128, label %123

123:                                              ; preds = %116, %93
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %123, %116
  br label %129

129:                                              ; preds = %128, %88
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp eq i32 %132, 3
  br i1 %133, label %134, label %153

134:                                              ; preds = %129
  br label %135

135:                                              ; preds = %142, %134
  %136 = call i64 (...) @av_gettime()
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 4
  %139 = load i64, i64* %138, align 8
  %140 = sub nsw i64 %136, %139
  store i64 %140, i64* %10, align 8
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i64, i64* %10, align 8
  %144 = sub nsw i64 0, %143
  %145 = sdiv i64 %144, 2
  %146 = call i32 @av_clip(i64 %145, i32 100, i32 1000000)
  %147 = call i32 @av_usleep(i32 %146)
  br label %135

148:                                              ; preds = %135
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %148, %129
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 4
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %160 = call i32 @ff_inlink_consume_frame(%struct.TYPE_21__* %159, %struct.TYPE_20__** %7)
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %2, align 4
  br label %178

165:                                              ; preds = %158
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %168 = call i32 @ff_filter_frame(%struct.TYPE_21__* %166, %struct.TYPE_20__* %167)
  store i32 %168, i32* %2, align 4
  br label %178

169:                                              ; preds = %153
  br label %170

170:                                              ; preds = %169, %1
  %171 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %172 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %173 = call i32 @FF_FILTER_FORWARD_STATUS(%struct.TYPE_21__* %171, %struct.TYPE_21__* %172)
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %176 = call i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_21__* %174, %struct.TYPE_21__* %175)
  %177 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %170, %165, %163, %76, %74
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i64 @ff_inlink_queued_frames(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_20__* @ff_inlink_peek_frame(%struct.TYPE_21__*, i64) #1

declare dso_local i64 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @ff_inlink_consume_frame(%struct.TYPE_21__*, %struct.TYPE_20__**) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_21__*, %struct.TYPE_20__*) #1

declare dso_local i64 @av_gettime(...) #1

declare dso_local i32 @av_usleep(i32) #1

declare dso_local i32 @av_clip(i64, i32, i32) #1

declare dso_local i32 @FF_FILTER_FORWARD_STATUS(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_21__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
