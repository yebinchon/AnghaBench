; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_ff_dca_xll_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_xll.c_ff_dca_xll_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32, i32, i32, i32, i32**, i32, i32, %struct.TYPE_33__*, i64, i64, %struct.TYPE_37__* }
%struct.TYPE_33__ = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, %struct.TYPE_31__*, i32 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_37__ = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, i32, %struct.TYPE_30__ }
%struct.TYPE_30__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64, i32 }
%struct.TYPE_36__ = type { i32, i64, i64* }

@AV_MATRIX_ENCODING_NONE = common dso_local global i32 0, align 4
@DCA_SPEAKER_COUNT = common dso_local global i32 0, align 4
@DCA_PACKET_RECOVERY = common dso_local global i32 0, align 4
@DCA_SPEAKER_MASK_Lss = common dso_local global i32 0, align 4
@DCA_SPEAKER_Lss = common dso_local global i64 0, align 8
@DCA_SPEAKER_Ls = common dso_local global i64 0, align 8
@DCA_SPEAKER_MASK_Ls = common dso_local global i32 0, align 4
@DCA_SPEAKER_MASK_Rss = common dso_local global i32 0, align 4
@DCA_SPEAKER_Rss = common dso_local global i64 0, align 8
@DCA_SPEAKER_Rs = common dso_local global i64 0, align 8
@DCA_SPEAKER_MASK_Rs = common dso_local global i32 0, align 4
@DCA_SPEAKER_LAYOUT_STEREO = common dso_local global i32 0, align 4
@DCA_DMIX_TYPE_LoRo = common dso_local global i64 0, align 8
@DCA_DMIX_TYPE_LtRt = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_S16P = common dso_local global i64 0, align 8
@AV_SAMPLE_FMT_S32P = common dso_local global i64 0, align 8
@FF_PROFILE_DTS_HD_MA = common dso_local global i32 0, align 4
@DCA_REPR_TYPE_LtRt = common dso_local global i64 0, align 8
@AV_MATRIX_ENCODING_DOLBY = common dso_local global i32 0, align 4
@DCA_REPR_TYPE_LhRh = common dso_local global i64 0, align 8
@AV_MATRIX_ENCODING_DOLBYHEADPHONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_dca_xll_filter_frame(%struct.TYPE_32__* %0, %struct.TYPE_36__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_36__*, align 8
  %6 = alloca %struct.TYPE_37__*, align 8
  %7 = alloca %struct.TYPE_35__*, align 8
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_33__*, align 8
  %10 = alloca %struct.TYPE_33__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_32__* %0, %struct.TYPE_32__** %4, align 8
  store %struct.TYPE_36__* %1, %struct.TYPE_36__** %5, align 8
  %25 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %25, i32 0, i32 10
  %27 = load %struct.TYPE_37__*, %struct.TYPE_37__** %26, align 8
  store %struct.TYPE_37__* %27, %struct.TYPE_37__** %6, align 8
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %28, i32 0, i32 6
  %30 = load %struct.TYPE_35__*, %struct.TYPE_35__** %29, align 8
  store %struct.TYPE_35__* %30, %struct.TYPE_35__** %7, align 8
  %31 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_34__*, %struct.TYPE_34__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %34, i64 0
  store %struct.TYPE_34__* %35, %struct.TYPE_34__** %8, align 8
  %36 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %36, i32 0, i32 7
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i64 0
  store %struct.TYPE_33__* %39, %struct.TYPE_33__** %9, align 8
  %40 = load i32, i32* @AV_MATRIX_ENCODING_NONE, align 4
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* @DCA_SPEAKER_COUNT, align 4
  %42 = zext i32 %41 to i64
  %43 = call i8* @llvm.stacksave()
  store i8* %43, i8** %19, align 8
  %44 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %20, align 8
  %45 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @DCA_PACKET_RECOVERY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %90

51:                                               ; preds = %2
  store i32 0, i32* %12, align 4
  %52 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %52, i32 0, i32 7
  %54 = load %struct.TYPE_33__*, %struct.TYPE_33__** %53, align 8
  store %struct.TYPE_33__* %54, %struct.TYPE_33__** %10, align 8
  br label %55

55:                                               ; preds = %80, %51
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %85

61:                                               ; preds = %55
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %69 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %70 = call i32 @force_lossy_output(%struct.TYPE_32__* %68, %struct.TYPE_33__* %69)
  br label %71

71:                                               ; preds = %67, %61
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 9
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %71
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  %83 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %83, i32 1
  store %struct.TYPE_33__* %84, %struct.TYPE_33__** %10, align 8
  br label %55

85:                                               ; preds = %55
  %86 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %86, i32 0, i32 8
  store i64 0, i64* %87, align 8
  %88 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %88, i32 0, i32 9
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %85, %2
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %91, i32 0, i32 2
  store i32 0, i32* %92, align 8
  store i32 0, i32* %12, align 4
  %93 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %93, i32 0, i32 7
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %94, align 8
  store %struct.TYPE_33__* %95, %struct.TYPE_33__** %10, align 8
  br label %96

96:                                               ; preds = %151, %90
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %156

102:                                              ; preds = %96
  %103 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %105 = call i32 @chs_filter_band_data(%struct.TYPE_32__* %103, %struct.TYPE_33__* %104, i32 0)
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 1, %111
  %113 = sub nsw i32 %112, 1
  %114 = icmp ne i32 %108, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %102
  %116 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %117 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %118 = call i32 @combine_residual_frame(%struct.TYPE_32__* %116, %struct.TYPE_33__* %117)
  store i32 %118, i32* %15, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %590

122:                                              ; preds = %115, %102
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 8
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %129 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %130 = call i32 @chs_assemble_msbs_lsbs(%struct.TYPE_32__* %128, %struct.TYPE_33__* %129, i32 0)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp sgt i32 %134, 1
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %138 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %139 = call i32 @chs_filter_band_data(%struct.TYPE_32__* %137, %struct.TYPE_33__* %138, i32 1)
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %142 = call i32 @chs_assemble_msbs_lsbs(%struct.TYPE_32__* %140, %struct.TYPE_33__* %141, i32 1)
  br label %143

143:                                              ; preds = %136, %131
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %143
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  %154 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %154, i32 1
  store %struct.TYPE_33__* %155, %struct.TYPE_33__** %10, align 8
  br label %96

156:                                              ; preds = %96
  store i32 1, i32* %12, align 4
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 7
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i64 1
  store %struct.TYPE_33__* %160, %struct.TYPE_33__** %10, align 8
  br label %161

161:                                              ; preds = %232, %156
  %162 = load i32, i32* %12, align 4
  %163 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %237

167:                                              ; preds = %161
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %169 = call i32 @is_hier_dmix_chset(%struct.TYPE_33__* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %172, label %171

171:                                              ; preds = %167
  br label %232

172:                                              ; preds = %167
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = icmp sge i32 %173, %176
  br i1 %177, label %178, label %205

178:                                              ; preds = %172
  store i32 0, i32* %13, align 4
  br label %179

179:                                              ; preds = %201, %178
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = icmp slt i32 %180, %183
  br i1 %184, label %185, label %204

185:                                              ; preds = %179
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 10
  %188 = load %struct.TYPE_31__*, %struct.TYPE_31__** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %185
  %196 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %197 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %198 = load i32, i32* %13, align 4
  %199 = call i32 @scale_down_mix(%struct.TYPE_32__* %196, %struct.TYPE_33__* %197, i32 %198)
  br label %200

200:                                              ; preds = %195, %185
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %13, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %179

204:                                              ; preds = %179
  br label %237

205:                                              ; preds = %172
  store i32 0, i32* %13, align 4
  br label %206

206:                                              ; preds = %228, %205
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp slt i32 %207, %210
  br i1 %211, label %212, label %231

212:                                              ; preds = %206
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %213, i32 0, i32 10
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %214, align 8
  %216 = load i32, i32* %13, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %227

222:                                              ; preds = %212
  %223 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %225 = load i32, i32* %13, align 4
  %226 = call i32 @undo_down_mix(%struct.TYPE_32__* %223, %struct.TYPE_33__* %224, i32 %225)
  br label %227

227:                                              ; preds = %222, %212
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %13, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %13, align 4
  br label %206

231:                                              ; preds = %206
  br label %232

232:                                              ; preds = %231, %171
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %235, i32 1
  store %struct.TYPE_33__* %236, %struct.TYPE_33__** %10, align 8
  br label %161

237:                                              ; preds = %204, %161
  %238 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %240, 1
  br i1 %241, label %242, label %266

242:                                              ; preds = %237
  store i32 0, i32* %12, align 4
  br label %243

243:                                              ; preds = %262, %242
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp slt i32 %244, %247
  br i1 %248, label %249, label %265

249:                                              ; preds = %243
  %250 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %251 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %251, i32 0, i32 7
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %252, align 8
  %254 = load i32, i32* %12, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i64 %255
  %257 = call i32 @chs_assemble_freq_bands(%struct.TYPE_32__* %250, %struct.TYPE_33__* %256)
  store i32 %257, i32* %15, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %249
  %260 = load i32, i32* %15, align 4
  store i32 %260, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %590

261:                                              ; preds = %249
  br label %262

262:                                              ; preds = %261
  %263 = load i32, i32* %12, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %12, align 4
  br label %243

265:                                              ; preds = %243
  br label %266

266:                                              ; preds = %265, %237
  %267 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %330

271:                                              ; preds = %266
  %272 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @DCA_SPEAKER_MASK_Lss, align 4
  %276 = and i32 %274, %275
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %300

278:                                              ; preds = %271
  %279 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %279, i32 0, i32 4
  %281 = load i32**, i32*** %280, align 8
  %282 = load i64, i64* @DCA_SPEAKER_Lss, align 8
  %283 = getelementptr inbounds i32*, i32** %281, i64 %282
  %284 = load i32*, i32** %283, align 8
  %285 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %285, i32 0, i32 4
  %287 = load i32**, i32*** %286, align 8
  %288 = load i64, i64* @DCA_SPEAKER_Ls, align 8
  %289 = getelementptr inbounds i32*, i32** %287, i64 %288
  store i32* %284, i32** %289, align 8
  %290 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @DCA_SPEAKER_MASK_Lss, align 4
  %294 = xor i32 %293, -1
  %295 = and i32 %292, %294
  %296 = load i32, i32* @DCA_SPEAKER_MASK_Ls, align 4
  %297 = or i32 %295, %296
  %298 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %298, i32 0, i32 2
  store i32 %297, i32* %299, align 8
  br label %300

300:                                              ; preds = %278, %271
  %301 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %302 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @DCA_SPEAKER_MASK_Rss, align 4
  %305 = and i32 %303, %304
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %329

307:                                              ; preds = %300
  %308 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %308, i32 0, i32 4
  %310 = load i32**, i32*** %309, align 8
  %311 = load i64, i64* @DCA_SPEAKER_Rss, align 8
  %312 = getelementptr inbounds i32*, i32** %310, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %314, i32 0, i32 4
  %316 = load i32**, i32*** %315, align 8
  %317 = load i64, i64* @DCA_SPEAKER_Rs, align 8
  %318 = getelementptr inbounds i32*, i32** %316, i64 %317
  store i32* %313, i32** %318, align 8
  %319 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @DCA_SPEAKER_MASK_Rss, align 4
  %323 = xor i32 %322, -1
  %324 = and i32 %321, %323
  %325 = load i32, i32* @DCA_SPEAKER_MASK_Rs, align 4
  %326 = or i32 %324, %325
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %327, i32 0, i32 2
  store i32 %326, i32* %328, align 8
  br label %329

329:                                              ; preds = %307, %300
  br label %330

330:                                              ; preds = %329, %266
  %331 = load %struct.TYPE_35__*, %struct.TYPE_35__** %7, align 8
  %332 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %331, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* @DCA_SPEAKER_LAYOUT_STEREO, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %361

336:                                              ; preds = %330
  %337 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %338 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = call i64 @DCA_HAS_STEREO(i32 %339)
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %361

342:                                              ; preds = %336
  %343 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %343, i32 0, i32 9
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %361

347:                                              ; preds = %342
  %348 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %348, i32 0, i32 4
  %350 = load i64, i64* %349, align 8
  %351 = load i64, i64* @DCA_DMIX_TYPE_LoRo, align 8
  %352 = icmp eq i64 %350, %351
  br i1 %352, label %359, label %353

353:                                              ; preds = %347
  %354 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %355 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %354, i32 0, i32 4
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @DCA_DMIX_TYPE_LtRt, align 8
  %358 = icmp eq i64 %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %353, %347
  %360 = load i32, i32* @DCA_SPEAKER_LAYOUT_STEREO, align 4
  store i32 %360, i32* %18, align 4
  br label %365

361:                                              ; preds = %353, %342, %336, %330
  %362 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %363 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  store i32 %364, i32* %18, align 4
  br label %365

365:                                              ; preds = %361, %359
  %366 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %367 = load i32, i32* %18, align 4
  %368 = call i32 @ff_dca_set_channel_layout(%struct.TYPE_37__* %366, i32* %44, i32 %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %373, label %370

370:                                              ; preds = %365
  %371 = load i32, i32* @EINVAL, align 4
  %372 = call i32 @AVERROR(i32 %371)
  store i32 %372, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %590

373:                                              ; preds = %365
  %374 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %374, i32 0, i32 5
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %378 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 4
  %380 = sub nsw i32 %379, 1
  %381 = shl i32 %376, %380
  %382 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %382, i32 0, i32 0
  store i32 %381, i32* %383, align 8
  %384 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %384, i32 0, i32 6
  %386 = load i32, i32* %385, align 4
  switch i32 %386, label %403 [
    i32 16, label %387
    i32 20, label %395
    i32 24, label %395
  ]

387:                                              ; preds = %373
  %388 = load i64, i64* @AV_SAMPLE_FMT_S16P, align 8
  %389 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %390 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %389, i32 0, i32 5
  store i64 %388, i64* %390, align 8
  %391 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %392 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %391, i32 0, i32 8
  %393 = load i32, i32* %392, align 4
  %394 = sub nsw i32 16, %393
  store i32 %394, i32* %16, align 4
  br label %406

395:                                              ; preds = %373, %373
  %396 = load i64, i64* @AV_SAMPLE_FMT_S32P, align 8
  %397 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %398 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %397, i32 0, i32 5
  store i64 %396, i64* %398, align 8
  %399 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %400 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %399, i32 0, i32 8
  %401 = load i32, i32* %400, align 4
  %402 = sub nsw i32 24, %401
  store i32 %402, i32* %16, align 4
  br label %406

403:                                              ; preds = %373
  %404 = load i32, i32* @EINVAL, align 4
  %405 = call i32 @AVERROR(i32 %404)
  store i32 %405, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %590

406:                                              ; preds = %395, %387
  %407 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %408 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %407, i32 0, i32 6
  %409 = load i32, i32* %408, align 4
  %410 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %411 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %410, i32 0, i32 1
  store i32 %409, i32* %411, align 4
  %412 = load i32, i32* @FF_PROFILE_DTS_HD_MA, align 4
  %413 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %413, i32 0, i32 4
  store i32 %412, i32* %414, align 8
  %415 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %415, i32 0, i32 3
  store i64 0, i64* %416, align 8
  %417 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %418 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %417, i32 0, i32 5
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %421 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %420, i32 0, i32 3
  %422 = load i32, i32* %421, align 4
  %423 = sub nsw i32 %422, 1
  %424 = shl i32 %419, %423
  store i32 %424, i32* %17, align 4
  %425 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %426 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %425, i32 0, i32 0
  store i32 %424, i32* %426, align 8
  %427 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %428 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %429 = call i32 @ff_get_buffer(%struct.TYPE_37__* %427, %struct.TYPE_36__* %428, i32 0)
  store i32 %429, i32* %15, align 4
  %430 = icmp slt i32 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %406
  %432 = load i32, i32* %15, align 4
  store i32 %432, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %590

433:                                              ; preds = %406
  %434 = load i32, i32* %18, align 4
  %435 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %436 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %435, i32 0, i32 2
  %437 = load i32, i32* %436, align 8
  %438 = icmp ne i32 %434, %437
  br i1 %438, label %439, label %454

439:                                              ; preds = %433
  %440 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %440, i32 0, i32 6
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %444 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %443, i32 0, i32 4
  %445 = load i32**, i32*** %444, align 8
  %446 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %447 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %446, i32 0, i32 7
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* %17, align 4
  %450 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %451 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = call i32 @ff_dca_downmix_to_stereo_fixed(i32 %442, i32** %445, i32 %448, i32 %449, i32 %452)
  br label %454

454:                                              ; preds = %439, %433
  store i32 0, i32* %12, align 4
  br label %455

455:                                              ; preds = %541, %454
  %456 = load i32, i32* %12, align 4
  %457 = load %struct.TYPE_37__*, %struct.TYPE_37__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = icmp slt i32 %456, %459
  br i1 %460, label %461, label %544

461:                                              ; preds = %455
  %462 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %463 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %462, i32 0, i32 4
  %464 = load i32**, i32*** %463, align 8
  %465 = load i32, i32* %12, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32, i32* %44, i64 %466
  %468 = load i32, i32* %467, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32*, i32** %464, i64 %469
  %471 = load i32*, i32** %470, align 8
  store i32* %471, i32** %22, align 8
  %472 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %473 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %472, i32 0, i32 1
  %474 = load i64, i64* %473, align 8
  %475 = load i64, i64* @AV_SAMPLE_FMT_S16P, align 8
  %476 = icmp eq i64 %474, %475
  br i1 %476, label %477, label %508

477:                                              ; preds = %461
  %478 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %479 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %478, i32 0, i32 2
  %480 = load i64*, i64** %479, align 8
  %481 = load i32, i32* %12, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i64, i64* %480, i64 %482
  %484 = load i64, i64* %483, align 8
  %485 = inttoptr i64 %484 to i32*
  store i32* %485, i32** %23, align 8
  store i32 0, i32* %14, align 4
  br label %486

486:                                              ; preds = %504, %477
  %487 = load i32, i32* %14, align 4
  %488 = load i32, i32* %17, align 4
  %489 = icmp slt i32 %487, %488
  br i1 %489, label %490, label %507

490:                                              ; preds = %486
  %491 = load i32*, i32** %22, align 8
  %492 = load i32, i32* %14, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %491, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = load i32, i32* %16, align 4
  %497 = shl i32 1, %496
  %498 = mul nsw i32 %495, %497
  %499 = call i32 @av_clip_int16(i32 %498)
  %500 = load i32*, i32** %23, align 8
  %501 = load i32, i32* %14, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  store i32 %499, i32* %503, align 4
  br label %504

504:                                              ; preds = %490
  %505 = load i32, i32* %14, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %14, align 4
  br label %486

507:                                              ; preds = %486
  br label %540

508:                                              ; preds = %461
  %509 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %510 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %509, i32 0, i32 2
  %511 = load i64*, i64** %510, align 8
  %512 = load i32, i32* %12, align 4
  %513 = sext i32 %512 to i64
  %514 = getelementptr inbounds i64, i64* %511, i64 %513
  %515 = load i64, i64* %514, align 8
  %516 = inttoptr i64 %515 to i32*
  store i32* %516, i32** %24, align 8
  store i32 0, i32* %14, align 4
  br label %517

517:                                              ; preds = %536, %508
  %518 = load i32, i32* %14, align 4
  %519 = load i32, i32* %17, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %539

521:                                              ; preds = %517
  %522 = load i32*, i32** %22, align 8
  %523 = load i32, i32* %14, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = load i32, i32* %16, align 4
  %528 = shl i32 1, %527
  %529 = mul nsw i32 %526, %528
  %530 = call i32 @clip23(i32 %529)
  %531 = mul nsw i32 %530, 256
  %532 = load i32*, i32** %24, align 8
  %533 = load i32, i32* %14, align 4
  %534 = sext i32 %533 to i64
  %535 = getelementptr inbounds i32, i32* %532, i64 %534
  store i32 %531, i32* %535, align 4
  br label %536

536:                                              ; preds = %521
  %537 = load i32, i32* %14, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %14, align 4
  br label %517

539:                                              ; preds = %517
  br label %540

540:                                              ; preds = %539, %507
  br label %541

541:                                              ; preds = %540
  %542 = load i32, i32* %12, align 4
  %543 = add nsw i32 %542, 1
  store i32 %543, i32* %12, align 4
  br label %455

544:                                              ; preds = %455
  %545 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %546 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %545, i32 0, i32 1
  %547 = load i32, i32* %546, align 8
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %567, label %549

549:                                              ; preds = %544
  %550 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %551 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %550, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = load i64, i64* @DCA_REPR_TYPE_LtRt, align 8
  %554 = icmp eq i64 %552, %553
  br i1 %554, label %555, label %557

555:                                              ; preds = %549
  %556 = load i32, i32* @AV_MATRIX_ENCODING_DOLBY, align 4
  store i32 %556, i32* %11, align 4
  br label %566

557:                                              ; preds = %549
  %558 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %559 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %558, i32 0, i32 0
  %560 = load i64, i64* %559, align 8
  %561 = load i64, i64* @DCA_REPR_TYPE_LhRh, align 8
  %562 = icmp eq i64 %560, %561
  br i1 %562, label %563, label %565

563:                                              ; preds = %557
  %564 = load i32, i32* @AV_MATRIX_ENCODING_DOLBYHEADPHONE, align 4
  store i32 %564, i32* %11, align 4
  br label %565

565:                                              ; preds = %563, %557
  br label %566

566:                                              ; preds = %565, %555
  br label %582

567:                                              ; preds = %544
  %568 = load i32, i32* %18, align 4
  %569 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %570 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %569, i32 0, i32 2
  %571 = load i32, i32* %570, align 8
  %572 = icmp ne i32 %568, %571
  br i1 %572, label %573, label %581

573:                                              ; preds = %567
  %574 = load %struct.TYPE_33__*, %struct.TYPE_33__** %9, align 8
  %575 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %574, i32 0, i32 4
  %576 = load i64, i64* %575, align 8
  %577 = load i64, i64* @DCA_DMIX_TYPE_LtRt, align 8
  %578 = icmp eq i64 %576, %577
  br i1 %578, label %579, label %581

579:                                              ; preds = %573
  %580 = load i32, i32* @AV_MATRIX_ENCODING_DOLBY, align 4
  store i32 %580, i32* %11, align 4
  br label %581

581:                                              ; preds = %579, %573, %567
  br label %582

582:                                              ; preds = %581, %566
  %583 = load %struct.TYPE_36__*, %struct.TYPE_36__** %5, align 8
  %584 = load i32, i32* %11, align 4
  %585 = call i32 @ff_side_data_update_matrix_encoding(%struct.TYPE_36__* %583, i32 %584)
  store i32 %585, i32* %15, align 4
  %586 = icmp slt i32 %585, 0
  br i1 %586, label %587, label %589

587:                                              ; preds = %582
  %588 = load i32, i32* %15, align 4
  store i32 %588, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %590

589:                                              ; preds = %582
  store i32 0, i32* %3, align 4
  store i32 1, i32* %21, align 4
  br label %590

590:                                              ; preds = %589, %587, %431, %403, %370, %259, %120
  %591 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %591)
  %592 = load i32, i32* %3, align 4
  ret i32 %592
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @force_lossy_output(%struct.TYPE_32__*, %struct.TYPE_33__*) #2

declare dso_local i32 @chs_filter_band_data(%struct.TYPE_32__*, %struct.TYPE_33__*, i32) #2

declare dso_local i32 @combine_residual_frame(%struct.TYPE_32__*, %struct.TYPE_33__*) #2

declare dso_local i32 @chs_assemble_msbs_lsbs(%struct.TYPE_32__*, %struct.TYPE_33__*, i32) #2

declare dso_local i32 @is_hier_dmix_chset(%struct.TYPE_33__*) #2

declare dso_local i32 @scale_down_mix(%struct.TYPE_32__*, %struct.TYPE_33__*, i32) #2

declare dso_local i32 @undo_down_mix(%struct.TYPE_32__*, %struct.TYPE_33__*, i32) #2

declare dso_local i32 @chs_assemble_freq_bands(%struct.TYPE_32__*, %struct.TYPE_33__*) #2

declare dso_local i64 @DCA_HAS_STEREO(i32) #2

declare dso_local i32 @ff_dca_set_channel_layout(%struct.TYPE_37__*, i32*, i32) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @ff_get_buffer(%struct.TYPE_37__*, %struct.TYPE_36__*, i32) #2

declare dso_local i32 @ff_dca_downmix_to_stereo_fixed(i32, i32**, i32, i32, i32) #2

declare dso_local i32 @av_clip_int16(i32) #2

declare dso_local i32 @clip23(i32) #2

declare dso_local i32 @ff_side_data_update_matrix_encoding(%struct.TYPE_36__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
