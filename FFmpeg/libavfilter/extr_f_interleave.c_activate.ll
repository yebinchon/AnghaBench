; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_interleave.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_f_interleave.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_16__*, i32** }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@INT64_MAX = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"NOPTS value for input frame cannot be accepted, frame discarded\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 3
  %17 = load i32**, i32*** %16, align 8
  %18 = getelementptr inbounds i32*, i32** %17, i64 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %4, align 8
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %5, align 8
  %23 = load i64, i64* @INT64_MAX, align 8
  store i64 %23, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = call i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(i32* %24, %struct.TYPE_18__* %25)
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %55, %1
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %36, i64 %38
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %39, align 8
  %41 = call i64 @ff_outlink_get_status(%struct.TYPE_19__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %33
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %46, i64 %48
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %49, align 8
  %51 = call i64 @ff_inlink_queued_frames(%struct.TYPE_19__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %43
  br label %58

54:                                               ; preds = %43, %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %27

58:                                               ; preds = %53, %27
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  br i1 %63, label %64, label %166

64:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %137, %64
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %140

71:                                               ; preds = %65
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %74, i64 %76
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %77, align 8
  %79 = call i64 @ff_outlink_get_status(%struct.TYPE_19__* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %137

82:                                               ; preds = %71
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %85, i64 %87
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %88, align 8
  %90 = call %struct.TYPE_17__* @ff_inlink_peek_frame(%struct.TYPE_19__* %89, i32 0)
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %11, align 8
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %82
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = load i32, i32* @AV_LOG_WARNING, align 4
  %99 = call i32 @av_log(%struct.TYPE_18__* %97, i32 %98, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %101, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %102, i64 %104
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = call i32 @ff_inlink_consume_frame(%struct.TYPE_19__* %106, %struct.TYPE_17__** %11)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %96
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %2, align 4
  br label %228

112:                                              ; preds = %96
  %113 = call i32 @av_frame_free(%struct.TYPE_17__** %11)
  %114 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %114, i32* %2, align 4
  br label %228

115:                                              ; preds = %82
  %116 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %121, i64 %123
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %129 = call i64 @av_rescale_q(i64 %118, i32 %127, i32 %128)
  store i64 %129, i64* %6, align 8
  %130 = load i64, i64* %6, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %115
  %134 = load i64, i64* %6, align 8
  store i64 %134, i64* %7, align 8
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %133, %115
  br label %137

137:                                              ; preds = %136, %81
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %65

140:                                              ; preds = %65
  %141 = load i32, i32* %10, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %165

143:                                              ; preds = %140
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %146, i64 %148
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = call i32 @ff_inlink_consume_frame(%struct.TYPE_19__* %150, %struct.TYPE_17__** %13)
  store i32 %151, i32* %14, align 4
  %152 = load i32, i32* %14, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i32, i32* %14, align 4
  store i32 %155, i32* %2, align 4
  br label %228

156:                                              ; preds = %143
  %157 = load i64, i64* %7, align 8
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  store i64 %157, i64* %159, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  store i64 %157, i64* %161, align 8
  %162 = load i32*, i32** %4, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %164 = call i32 @ff_filter_frame(i32* %162, %struct.TYPE_17__* %163)
  store i32 %164, i32* %2, align 4
  br label %228

165:                                              ; preds = %140
  br label %166

166:                                              ; preds = %165, %58
  store i32 0, i32* %8, align 4
  br label %167

167:                                              ; preds = %210, %166
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %213

173:                                              ; preds = %167
  %174 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %175, align 8
  %177 = load i32, i32* %8, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %176, i64 %178
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %179, align 8
  %181 = call i64 @ff_inlink_queued_frames(%struct.TYPE_19__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %210

184:                                              ; preds = %173
  %185 = load i32*, i32** %4, align 8
  %186 = call i64 @ff_outlink_frame_wanted(i32* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %207

188:                                              ; preds = %184
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %190, align 8
  %192 = load i32, i32* %8, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %191, i64 %193
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = call i64 @ff_outlink_get_status(%struct.TYPE_19__* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %207, label %198

198:                                              ; preds = %188
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %199, i32 0, i32 1
  %201 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %200, align 8
  %202 = load i32, i32* %8, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %201, i64 %203
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %204, align 8
  %206 = call i32 @ff_inlink_request_frame(%struct.TYPE_19__* %205)
  store i32 0, i32* %2, align 4
  br label %228

207:                                              ; preds = %188, %184
  %208 = load i32, i32* %9, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %9, align 4
  br label %210

210:                                              ; preds = %207, %183
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %8, align 4
  br label %167

213:                                              ; preds = %167
  %214 = load i32, i32* %9, align 4
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp eq i32 %214, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %213
  %220 = load i32*, i32** %4, align 8
  %221 = load i32, i32* @AVERROR_EOF, align 4
  %222 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i32 @ff_outlink_set_status(i32* %220, i32 %221, i64 %224)
  store i32 0, i32* %2, align 4
  br label %228

226:                                              ; preds = %213
  %227 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %226, %219, %198, %156, %154, %112, %110
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(i32*, %struct.TYPE_18__*) #1

declare dso_local i64 @ff_outlink_get_status(%struct.TYPE_19__*) #1

declare dso_local i64 @ff_inlink_queued_frames(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_17__* @ff_inlink_peek_frame(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @ff_inlink_consume_frame(%struct.TYPE_19__*, %struct.TYPE_17__**) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_17__**) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @ff_filter_frame(i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @ff_outlink_frame_wanted(i32*) #1

declare dso_local i32 @ff_inlink_request_frame(%struct.TYPE_19__*) #1

declare dso_local i32 @ff_outlink_set_status(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
