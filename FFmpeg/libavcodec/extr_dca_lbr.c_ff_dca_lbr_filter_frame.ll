; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_ff_dca_lbr_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_ff_dca_lbr_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_15__ = type { i32 (float*, i32, i32, i32, i32)* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_17__ = type { i32, i64* }

@channel_layouts = common dso_local global i32* null, align 8
@channel_counts = common dso_local global i32* null, align 8
@AV_SAMPLE_FMT_FLTP = common dso_local global i32 0, align 4
@FF_PROFILE_DTS_EXPRESS = common dso_local global i32 0, align 4
@LBR_FLAG_LFE_PRESENT = common dso_local global i32 0, align 4
@AV_CH_LOW_FREQUENCY = common dso_local global i32 0, align 4
@channel_reorder_lfe = common dso_local global i64** null, align 8
@channel_reorder_nolfe = common dso_local global i64** null, align 8
@lfe_index = common dso_local global i64* null, align 8
@ff_dca_lfe_iir = common dso_local global i32 0, align 4
@AV_MATRIX_ENCODING_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dca_lbr_filter_frame(%struct.TYPE_16__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 10
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  store %struct.TYPE_18__* %16, %struct.TYPE_18__** %6, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 7
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %10, align 4
  %22 = load i32*, i32** @channel_layouts, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** @channel_counts, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @AV_SAMPLE_FMT_FLTP, align 4
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 4
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* @FF_PROFILE_DTS_EXPRESS, align 4
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LBR_FLAG_LFE_PRESENT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %2
  %61 = load i32, i32* @AV_CH_LOW_FREQUENCY, align 4
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load i64**, i64*** @channel_reorder_lfe, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %70, i64 %72
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %11, align 8
  br label %81

75:                                               ; preds = %2
  %76 = load i64**, i64*** @channel_reorder_nolfe, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64*, i64** %76, i64 %78
  %80 = load i64*, i64** %79, align 8
  store i64* %80, i64** %11, align 8
  br label %81

81:                                               ; preds = %75, %60
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = shl i32 1024, %84
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %90 = call i32 @ff_get_buffer(%struct.TYPE_18__* %88, %struct.TYPE_17__* %89, i32 0)
  store i32 %90, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %81
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %231

94:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %184, %94
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = sdiv i32 %100, 2
  %102 = icmp slt i32 %96, %101
  br i1 %102, label %103, label %187

103:                                              ; preds = %95
  %104 = load i32, i32* %7, align 4
  %105 = mul nsw i32 %104, 2
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = add nsw i32 %106, 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = sub nsw i32 %110, 1
  %112 = call i32 @FFMIN(i32 %107, i32 %111)
  store i32 %112, i32* %13, align 4
  %113 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @decode_grid(%struct.TYPE_16__* %113, i32 %114, i32 %115)
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @random_ts(%struct.TYPE_16__* %117, i32 %118, i32 %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @filter_ts(%struct.TYPE_16__* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %141

128:                                              ; preds = %103
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = shl i32 1, %132
  %134 = and i32 %131, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %128
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %138 = load i32, i32* %12, align 4
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @decode_part_stereo(%struct.TYPE_16__* %137, i32 %138, i32 %139)
  br label %141

141:                                              ; preds = %136, %128, %103
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %9, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %141
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load i64*, i64** %11, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i64, i64* %150, i64 %155
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to float*
  %159 = call i32 @transform_channel(%struct.TYPE_16__* %146, i32 %147, float* %158)
  br label %160

160:                                              ; preds = %145, %141
  %161 = load i32, i32* %12, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %183

164:                                              ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = load i32, i32* %9, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %164
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 1
  %173 = load i64*, i64** %172, align 8
  %174 = load i64*, i64** %11, align 8
  %175 = load i32, i32* %13, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i64, i64* %173, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = inttoptr i64 %180 to float*
  %182 = call i32 @transform_channel(%struct.TYPE_16__* %169, i32 %170, float* %181)
  br label %183

183:                                              ; preds = %168, %164, %160
  br label %184

184:                                              ; preds = %183
  %185 = load i32, i32* %7, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %7, align 4
  br label %95

187:                                              ; preds = %95
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @LBR_FLAG_LFE_PRESENT, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %223

194:                                              ; preds = %187
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 7
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %197, i32 0, i32 0
  %199 = load i32 (float*, i32, i32, i32, i32)*, i32 (float*, i32, i32, i32, i32)** %198, align 8
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 1
  %202 = load i64*, i64** %201, align 8
  %203 = load i64*, i64** @lfe_index, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i64, i64* %203, i64 %205
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds i64, i64* %202, i64 %207
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to float*
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @ff_dca_lfe_iir, align 4
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = shl i32 16, %220
  %222 = call i32 %199(float* %210, i32 %213, i32 %214, i32 %217, i32 %221)
  br label %223

223:                                              ; preds = %194, %187
  %224 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %225 = load i32, i32* @AV_MATRIX_ENCODING_NONE, align 4
  %226 = call i32 @ff_side_data_update_matrix_encoding(%struct.TYPE_17__* %224, i32 %225)
  store i32 %226, i32* %8, align 4
  %227 = icmp slt i32 %226, 0
  br i1 %227, label %228, label %230

228:                                              ; preds = %223
  %229 = load i32, i32* %8, align 4
  store i32 %229, i32* %3, align 4
  br label %231

230:                                              ; preds = %223
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %228, %92
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @decode_grid(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @random_ts(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @filter_ts(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @decode_part_stereo(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @transform_channel(%struct.TYPE_16__*, i32, float*) #1

declare dso_local i32 @ff_side_data_update_matrix_encoding(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
