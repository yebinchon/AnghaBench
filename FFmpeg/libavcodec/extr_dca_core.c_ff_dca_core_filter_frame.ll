; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_ff_dca_core_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_ff_dca_core_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32, i32, i64, i64, i32, i64, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@DCA_SPEAKER_LAYOUT_STEREO = common dso_local global i64 0, align 8
@DCA_AMODE_MONO = common dso_local global i64 0, align 8
@DCA_DMIX_TYPE_LoRo = common dso_local global i64 0, align 8
@DCA_DMIX_TYPE_LtRt = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AV_CODEC_FLAG_BITEXACT = common dso_local global i32 0, align 4
@DCA_PACKET_EXSS = common dso_local global i32 0, align 4
@DCA_EXSS_XLL = common dso_local global i32 0, align 4
@DCA_EXSS_MASK = common dso_local global i32 0, align 4
@FF_PROFILE_DTS_HD_HRA = common dso_local global i32 0, align 4
@DCA_CSS_XXCH = common dso_local global i32 0, align 4
@DCA_CSS_XCH = common dso_local global i32 0, align 4
@FF_PROFILE_DTS_ES = common dso_local global i32 0, align 4
@DCA_CSS_X96 = common dso_local global i32 0, align 4
@FF_PROFILE_DTS_96_24 = common dso_local global i32 0, align 4
@FF_PROFILE_DTS = common dso_local global i32 0, align 4
@DCA_AMODE_STEREO_TOTAL = common dso_local global i64 0, align 8
@AV_MATRIX_ENCODING_DOLBY = common dso_local global i32 0, align 4
@AV_MATRIX_ENCODING_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dca_core_filter_frame(%struct.TYPE_12__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %6, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %7, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 0
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DCA_SPEAKER_LAYOUT_STEREO, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %54

27:                                               ; preds = %2
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DCA_AMODE_MONO, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %33
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DCA_DMIX_TYPE_LoRo, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DCA_DMIX_TYPE_LtRt, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %38
  %51 = load i64, i64* @DCA_SPEAKER_LAYOUT_STEREO, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 5
  store i64 %51, i64* %53, align 8
  br label %60

54:                                               ; preds = %44, %33, %27, %2
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 5
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %54, %50
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @ff_dca_set_channel_layout(%struct.TYPE_14__* %61, i32 %64, i64 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @EINVAL, align 4
  %72 = call i32 @AVERROR(i32 %71)
  store i32 %72, i32* %3, align 4
  br label %201

73:                                               ; preds = %60
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @AV_CODEC_FLAG_BITEXACT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %94, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @DCA_PACKET_EXSS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %80
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @DCA_EXSS_XLL, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87, %73
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @filter_frame_fixed(%struct.TYPE_12__* %95, i32* %96)
  store i32 %97, i32* %10, align 4
  br label %102

98:                                               ; preds = %87, %80
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @filter_frame_float(%struct.TYPE_12__* %99, i32* %100)
  store i32 %101, i32* %10, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %3, align 4
  br label %201

107:                                              ; preds = %102
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @DCA_EXSS_MASK, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @FF_PROFILE_DTS_HD_HRA, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 8
  br label %148

118:                                              ; preds = %107
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @DCA_CSS_XXCH, align 4
  %123 = load i32, i32* @DCA_CSS_XCH, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %118
  %128 = load i32, i32* @FF_PROFILE_DTS_ES, align 4
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  br label %147

131:                                              ; preds = %118
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @DCA_CSS_X96, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %131
  %139 = load i32, i32* @FF_PROFILE_DTS_96_24, align 4
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  br label %146

142:                                              ; preds = %131
  %143 = load i32, i32* @FF_PROFILE_DTS, align 4
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  br label %146

146:                                              ; preds = %142, %138
  br label %147

147:                                              ; preds = %146, %127
  br label %148

148:                                              ; preds = %147, %114
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp sgt i32 %151, 3
  br i1 %152, label %153, label %166

153:                                              ; preds = %148
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @DCA_EXSS_MASK, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %153
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %169

166:                                              ; preds = %153, %148
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  br label %169

169:                                              ; preds = %166, %160
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @DCA_AMODE_STEREO_TOTAL, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %189, label %175

175:                                              ; preds = %169
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %178, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %175
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @DCA_DMIX_TYPE_LtRt, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183, %169
  %190 = load i32, i32* @AV_MATRIX_ENCODING_DOLBY, align 4
  store i32 %190, i32* %9, align 4
  br label %193

191:                                              ; preds = %183, %175
  %192 = load i32, i32* @AV_MATRIX_ENCODING_NONE, align 4
  store i32 %192, i32* %9, align 4
  br label %193

193:                                              ; preds = %191, %189
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @ff_side_data_update_matrix_encoding(i32* %194, i32 %195)
  store i32 %196, i32* %10, align 4
  %197 = icmp slt i32 %196, 0
  br i1 %197, label %198, label %200

198:                                              ; preds = %193
  %199 = load i32, i32* %10, align 4
  store i32 %199, i32* %3, align 4
  br label %201

200:                                              ; preds = %193
  store i32 0, i32* %3, align 4
  br label %201

201:                                              ; preds = %200, %198, %105, %70
  %202 = load i32, i32* %3, align 4
  ret i32 %202
}

declare dso_local i32 @ff_dca_set_channel_layout(%struct.TYPE_14__*, i32, i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @filter_frame_fixed(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @filter_frame_float(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @ff_side_data_update_matrix_encoding(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
