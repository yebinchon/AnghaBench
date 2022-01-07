; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_freezedetect.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_freezedetect.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_26__*, %struct.TYPE_28__**, %struct.TYPE_28__** }
%struct.TYPE_26__ = type { i64, i64, i64, i32, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64 }

@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"lavfi.freezedetect.freeze_start\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"lavfi.freezedetect.freeze_duration\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"lavfi.freezedetect.freeze_end\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_29__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_29__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_29__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_28__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %3, align 8
  %11 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %13, i64 0
  %15 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  store %struct.TYPE_28__* %15, %struct.TYPE_28__** %5, align 8
  %16 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_28__**, %struct.TYPE_28__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_28__*, %struct.TYPE_28__** %18, i64 0
  %20 = load %struct.TYPE_28__*, %struct.TYPE_28__** %19, align 8
  store %struct.TYPE_28__* %20, %struct.TYPE_28__** %6, align 8
  %21 = load %struct.TYPE_29__*, %struct.TYPE_29__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  store %struct.TYPE_26__* %23, %struct.TYPE_26__** %7, align 8
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %26 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_28__* %24, %struct.TYPE_28__* %25)
  %27 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %28 = call i32 @ff_inlink_consume_frame(%struct.TYPE_28__* %27, %struct.TYPE_27__** %8)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %197

33:                                               ; preds = %1
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %35 = icmp ne %struct.TYPE_27__* %34, null
  br i1 %35, label %36, label %189

36:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  %37 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* %38, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %42, align 8
  %44 = icmp ne %struct.TYPE_27__* %43, null
  br i1 %44, label %45, label %160

45:                                               ; preds = %36
  %46 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_27__*, %struct.TYPE_27__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %69, label %53

53:                                               ; preds = %45
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %69, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %63, i32 0, i32 4
  %65 = load %struct.TYPE_27__*, %struct.TYPE_27__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %62, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %59, %53, %45
  %70 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %69
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = sub nsw i64 %78, %81
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @av_inv_q(i64 %86)
  %88 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %89 = call i64 @av_rescale_q(i64 %82, i32 %87, i32 %88)
  br label %91

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %75
  %92 = phi i64 [ %89, %75 ], [ 0, %90 ]
  store i64 %92, i64* %10, align 8
  br label %108

93:                                               ; preds = %59
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_27__*, %struct.TYPE_27__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = sub nsw i64 %96, %101
  %103 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %107 = call i64 @av_rescale_q(i64 %102, i32 %105, i32 %106)
  store i64 %107, i64* %10, align 8
  br label %108

108:                                              ; preds = %93, %91
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_27__*, %struct.TYPE_27__** %111, align 8
  %113 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %114 = call i32 @is_frozen(%struct.TYPE_26__* %109, %struct.TYPE_27__* %112, %struct.TYPE_27__* %113)
  store i32 %114, i32* %9, align 4
  %115 = load i64, i64* %10, align 8
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = icmp sge i64 %115, %118
  br i1 %119, label %120, label %159

120:                                              ; preds = %108
  %121 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %137, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %127 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %128 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %128, i32 0, i32 4
  %130 = load %struct.TYPE_27__*, %struct.TYPE_27__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %133, i32 0, i32 0
  %135 = call i32 @av_ts2timestr(i64 %132, i32* %134)
  %136 = call i32 @set_meta(%struct.TYPE_26__* %126, %struct.TYPE_27__* %127, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %135)
  br label %137

137:                                              ; preds = %125, %120
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %155, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %142 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %143 = load i64, i64* %10, align 8
  %144 = call i32 @av_ts2timestr(i64 %143, i32* @AV_TIME_BASE_Q)
  %145 = call i32 @set_meta(%struct.TYPE_26__* %141, %struct.TYPE_27__* %142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %147 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %148 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 0
  %153 = call i32 @av_ts2timestr(i64 %150, i32* %152)
  %154 = call i32 @set_meta(%struct.TYPE_26__* %146, %struct.TYPE_27__* %147, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %153)
  br label %155

155:                                              ; preds = %140, %137
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  br label %159

159:                                              ; preds = %155, %108
  br label %160

160:                                              ; preds = %159, %36
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %185, label %163

163:                                              ; preds = %160
  %164 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %164, i32 0, i32 4
  %166 = call i32 @av_frame_free(%struct.TYPE_27__** %165)
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %168 = call %struct.TYPE_27__* @av_frame_clone(%struct.TYPE_27__* %167)
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 4
  store %struct.TYPE_27__* %168, %struct.TYPE_27__** %170, align 8
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 1
  store i64 %173, i64* %175, align 8
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 4
  %178 = load %struct.TYPE_27__*, %struct.TYPE_27__** %177, align 8
  %179 = icmp ne %struct.TYPE_27__* %178, null
  br i1 %179, label %184, label %180

180:                                              ; preds = %163
  %181 = call i32 @av_frame_free(%struct.TYPE_27__** %8)
  %182 = load i32, i32* @ENOMEM, align 4
  %183 = call i32 @AVERROR(i32 %182)
  store i32 %183, i32* %2, align 4
  br label %197

184:                                              ; preds = %163
  br label %185

185:                                              ; preds = %184, %160
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %188 = call i32 @ff_filter_frame(%struct.TYPE_28__* %186, %struct.TYPE_27__* %187)
  store i32 %188, i32* %2, align 4
  br label %197

189:                                              ; preds = %33
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %192 = call i32 @FF_FILTER_FORWARD_STATUS(%struct.TYPE_28__* %190, %struct.TYPE_28__* %191)
  %193 = load %struct.TYPE_28__*, %struct.TYPE_28__** %6, align 8
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %195 = call i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_28__* %193, %struct.TYPE_28__* %194)
  %196 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %196, i32* %2, align 4
  br label %197

197:                                              ; preds = %189, %185, %180, %31
  %198 = load i32, i32* %2, align 4
  ret i32 %198
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ff_inlink_consume_frame(%struct.TYPE_28__*, %struct.TYPE_27__**) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @av_inv_q(i64) #1

declare dso_local i32 @is_frozen(%struct.TYPE_26__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @set_meta(%struct.TYPE_26__*, %struct.TYPE_27__*, i8*, i32) #1

declare dso_local i32 @av_ts2timestr(i64, i32*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_27__**) #1

declare dso_local %struct.TYPE_27__* @av_frame_clone(%struct.TYPE_27__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_filter_frame(%struct.TYPE_28__*, %struct.TYPE_27__*) #1

declare dso_local i32 @FF_FILTER_FORWARD_STATUS(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(%struct.TYPE_28__*, %struct.TYPE_28__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
