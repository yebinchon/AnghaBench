; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amix.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_amix.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__**, %struct.TYPE_20__*, %struct.TYPE_22__** }
%struct.TYPE_20__ = type { i32, i32*, %struct.TYPE_24__*, i32, i32* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i64, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@INPUT_EOF = common dso_local global i32 0, align 4
@INPUT_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %16, i64 0
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %17, align 8
  store %struct.TYPE_22__* %18, %struct.TYPE_22__** %4, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  store %struct.TYPE_20__* %21, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %24 = call i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(%struct.TYPE_22__* %22, %struct.TYPE_23__* %23)
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %107, %1
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %110

31:                                               ; preds = %25
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %34, i64 %36
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %37, align 8
  store %struct.TYPE_22__* %38, %struct.TYPE_22__** %9, align 8
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %41, i64 %43
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %44, align 8
  %46 = call i32 @ff_inlink_consume_frame(%struct.TYPE_22__* %45, %struct.TYPE_21__** %6)
  store i32 %46, i32* %8, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %106

48:                                               ; preds = %31
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @av_rescale_q(i32 %54, i32 %57, i32 %60)
  store i32 %61, i32* %10, align 4
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %63, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @frame_list_add_frame(%struct.TYPE_24__* %64, i32 %67, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %51
  %73 = call i32 @av_frame_free(%struct.TYPE_21__** %6)
  %74 = load i32, i32* %8, align 4
  store i32 %74, i32* %2, align 4
  br label %242

75:                                               ; preds = %51
  br label %76

76:                                               ; preds = %75, %48
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 4
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i8**
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @av_audio_fifo_write(i32 %83, i8** %87, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %76
  %95 = call i32 @av_frame_free(%struct.TYPE_21__** %6)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %2, align 4
  br label %242

97:                                               ; preds = %76
  %98 = call i32 @av_frame_free(%struct.TYPE_21__** %6)
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %100 = call i32 @output_frame(%struct.TYPE_22__* %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %2, align 4
  br label %242

105:                                              ; preds = %97
  br label %106

106:                                              ; preds = %105, %31
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %7, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %7, align 4
  br label %25

110:                                              ; preds = %25
  store i32 0, i32* %7, align 4
  br label %111

111:                                              ; preds = %181, %110
  %112 = load i32, i32* %7, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %184

117:                                              ; preds = %111
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %119, align 8
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %120, i64 %122
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %123, align 8
  %125 = call i64 @ff_inlink_acknowledge_status(%struct.TYPE_22__* %124, i32* %12, i32* %11)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %180

127:                                              ; preds = %117
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @AVERROR_EOF, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %179

131:                                              ; preds = %127
  %132 = load i32, i32* %7, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %151

134:                                              ; preds = %131
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 0, i32* %140, align 4
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %150

145:                                              ; preds = %134
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @ff_outlink_set_status(%struct.TYPE_22__* %146, i32 %147, i32 %148)
  store i32 0, i32* %2, align 4
  br label %242

150:                                              ; preds = %134
  br label %178

151:                                              ; preds = %131
  %152 = load i32, i32* @INPUT_EOF, align 4
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %152
  store i32 %160, i32* %158, align 4
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 4
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @av_audio_fifo_size(i32 %167)
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %151
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %7, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 0, i32* %176, align 4
  br label %177

177:                                              ; preds = %170, %151
  br label %178

178:                                              ; preds = %177, %150
  br label %179

179:                                              ; preds = %178, %127
  br label %180

180:                                              ; preds = %179, %117
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %7, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %7, align 4
  br label %111

184:                                              ; preds = %111
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %186 = call i64 @calc_active_inputs(%struct.TYPE_20__* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %184
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %190 = load i32, i32* @AVERROR_EOF, align 4
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @ff_outlink_set_status(%struct.TYPE_22__* %189, i32 %190, i32 %193)
  store i32 0, i32* %2, align 4
  br label %242

195:                                              ; preds = %184
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %197 = call i64 @ff_outlink_frame_wanted(%struct.TYPE_22__* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %241

199:                                              ; preds = %195
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @INPUT_ON, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %211, label %208

208:                                              ; preds = %199
  %209 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %210 = call i32 @request_samples(%struct.TYPE_23__* %209, i32 1)
  store i32 %210, i32* %2, align 4
  br label %242

211:                                              ; preds = %199
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 2
  %214 = load %struct.TYPE_24__*, %struct.TYPE_24__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %225

218:                                              ; preds = %211
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 0
  %221 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %221, i64 0
  %223 = load %struct.TYPE_22__*, %struct.TYPE_22__** %222, align 8
  %224 = call i32 @ff_inlink_request_frame(%struct.TYPE_22__* %223)
  store i32 0, i32* %2, align 4
  br label %242

225:                                              ; preds = %211
  %226 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_24__*, %struct.TYPE_24__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = icmp sgt i64 %230, 0
  %232 = zext i1 %231 to i32
  %233 = call i32 @av_assert0(i32 %232)
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 2
  %236 = load %struct.TYPE_24__*, %struct.TYPE_24__** %235, align 8
  %237 = call i32 @frame_list_next_frame_size(%struct.TYPE_24__* %236)
  store i32 %237, i32* %13, align 4
  %238 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @request_samples(%struct.TYPE_23__* %238, i32 %239)
  store i32 %240, i32* %2, align 4
  br label %242

241:                                              ; preds = %195
  store i32 0, i32* %2, align 4
  br label %242

242:                                              ; preds = %241, %225, %218, %208, %188, %145, %103, %94, %72
  %243 = load i32, i32* %2, align 4
  ret i32 %243
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK_ALL(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @ff_inlink_consume_frame(%struct.TYPE_22__*, %struct.TYPE_21__**) #1

declare dso_local i32 @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @frame_list_add_frame(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

declare dso_local i32 @av_audio_fifo_write(i32, i8**, i32) #1

declare dso_local i32 @output_frame(%struct.TYPE_22__*) #1

declare dso_local i64 @ff_inlink_acknowledge_status(%struct.TYPE_22__*, i32*, i32*) #1

declare dso_local i32 @ff_outlink_set_status(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i64 @av_audio_fifo_size(i32) #1

declare dso_local i64 @calc_active_inputs(%struct.TYPE_20__*) #1

declare dso_local i64 @ff_outlink_frame_wanted(%struct.TYPE_22__*) #1

declare dso_local i32 @request_samples(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @ff_inlink_request_frame(%struct.TYPE_22__*) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @frame_list_next_frame_size(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
