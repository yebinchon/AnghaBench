; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_coding_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_coding_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32, i32, i32, i32, i32*, i32*, i64*, i32*, i64*, i64*, i64*, i64**, i32, i64, i32, i32**, i64*, i32, i32, i32, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_dca_channels = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Invalid number of primary audio channels (%d) for audio channel arrangement (%d)\0A\00", align 1
@DCA_CHANNELS = common dso_local global i32 0, align 4
@audio_mode_ch_mask = common dso_local global i32* null, align 8
@DCA_SPEAKER_MASK_LFE1 = common dso_local global i32 0, align 4
@DCA_SPEAKER_MASK_Cs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid XXCH channel set header checksum\0A\00", align 1
@DCA_XXCH_CHANNELS_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"%d XXCH channels\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@DCA_SPEAKER_Cs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"Invalid XXCH speaker layout mask (%#x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"XXCH speaker layout mask (%#x) overlaps with core (%#x)\0A\00", align 1
@FF_DCA_DMIXTABLE_OFFSET = common dso_local global i32 0, align 4
@FF_DCA_INV_DMIXTABLE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Invalid XXCH downmix scale index (%d)\0A\00", align 1
@ff_dca_inv_dmixtable = common dso_local global i32* null, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"Invalid XXCH downmix channel mapping mask (%#x)\0A\00", align 1
@FF_DCA_DMIXTABLE_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [45 x i8] c"Invalid XXCH downmix coefficient index (%d)\0A\00", align 1
@ff_dca_dmixtable = common dso_local global i32* null, align 8
@DCA_SUBBANDS = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [32 x i8] c"Invalid subband activity count\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Invalid joint intensity coding index\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Invalid scale factor code book\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Invalid bit allocation quantizer select\0A\00", align 1
@DCA_CODE_BOOKS = common dso_local global i32 0, align 4
@ff_dca_quant_index_sel_nbits = common dso_local global i32* null, align 8
@ff_dca_quant_index_group_size = common dso_local global i64* null, align 8
@ff_dca_scale_factor_adj = common dso_local global i32* null, align 8
@.str.12 = private unnamed_addr constant [42 x i8] c"Read past end of XXCH channel set header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32)* @parse_coding_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_coding_header(%struct.TYPE_3__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 14
  %20 = call i32 @get_bits_count(i32* %19)
  store i32 %20, i32* %12, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 14
  %23 = call i64 @get_bits_left(i32* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %26, i32* %4, align 4
  br label %728

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  switch i32 %28, label %400 [
    i32 130, label %29
    i32 129, label %95
    i32 128, label %118
  ]

29:                                               ; preds = %27
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 14
  %32 = call i64 @get_bits(i32* %31, i32 4)
  %33 = add i64 %32, 1
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 23
  store i32 %34, i32* %36, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 14
  %39 = call i64 @get_bits(i32* %38, i32 3)
  %40 = add i64 %39, 1
  %41 = trunc i64 %40 to i32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** @ff_dca_channels, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %46, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %29
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 16
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @AV_LOG_ERROR, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32, i32, i8*, ...) @av_log(i32 %57, i32 %58, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %64)
  %66 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %66, i32* %4, align 4
  br label %728

67:                                               ; preds = %29
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @DCA_CHANNELS, align 4
  %72 = sub nsw i32 %71, 2
  %73 = icmp sle i32 %70, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @av_assert1(i32 %74)
  %76 = load i32*, i32** @audio_mode_ch_mask, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds i32, i32* %76, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 22
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %67
  %89 = load i32, i32* @DCA_SPEAKER_MASK_LFE1, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %88, %67
  br label %400

95:                                               ; preds = %27
  %96 = load i32*, i32** @ff_dca_channels, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @DCA_CHANNELS, align 4
  %109 = sub nsw i32 %108, 1
  %110 = icmp sle i32 %107, %109
  %111 = zext i1 %110 to i32
  %112 = call i32 @av_assert1(i32 %111)
  %113 = load i32, i32* @DCA_SPEAKER_MASK_Cs, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %400

118:                                              ; preds = %27
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 14
  %121 = call i64 @get_bits(i32* %120, i32 7)
  %122 = add i64 %121, 1
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %11, align 4
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 21
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %118
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 16
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 14
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %136, 8
  %138 = add nsw i32 %135, %137
  %139 = call i32 @ff_dca_check_crc(i32 %131, i32* %133, i32 %134, i32 %138)
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %128
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 16
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @AV_LOG_ERROR, align 4
  %146 = call i32 (i32, i32, i8*, ...) @av_log(i32 %144, i32 %145, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %147 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %147, i32* %4, align 4
  br label %728

148:                                              ; preds = %128, %118
  %149 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 14
  %151 = call i64 @get_bits(i32* %150, i32 3)
  %152 = add i64 %151, 1
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @DCA_XXCH_CHANNELS_MAX, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %148
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 16
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 @avpriv_request_sample(i32 %160, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %161)
  %163 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %163, i32* %4, align 4
  br label %728

164:                                              ; preds = %148
  %165 = load i32*, i32** @ff_dca_channels, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %170, %171
  %173 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @DCA_CHANNELS, align 4
  %179 = icmp sle i32 %177, %178
  %180 = zext i1 %179 to i32
  %181 = call i32 @av_assert1(i32 %180)
  %182 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %182, i32 0, i32 14
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @DCA_SPEAKER_Cs, align 4
  %188 = sub i32 %186, %187
  %189 = call i32 @get_bits_long(i32* %183, i32 %188)
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load i32, i32* @DCA_SPEAKER_Cs, align 4
  %192 = shl i32 %190, %191
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 4
  store i32 %192, i32* %194, align 8
  %195 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @av_popcount(i32 %197)
  %199 = load i32, i32* %10, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %211

201:                                              ; preds = %164
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 16
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @AV_LOG_ERROR, align 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = call i32 (i32, i32, i8*, ...) @av_log(i32 %204, i32 %205, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %208)
  %210 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %210, i32* %4, align 4
  br label %728

211:                                              ; preds = %164
  %212 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 4
  %217 = load i32, i32* %216, align 8
  %218 = and i32 %214, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %233

220:                                              ; preds = %211
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 16
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @AV_LOG_ERROR, align 4
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = call i32 (i32, i32, i8*, ...) @av_log(i32 %223, i32 %224, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %227, i32 %230)
  %232 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %232, i32* %4, align 4
  br label %728

233:                                              ; preds = %211
  %234 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 5
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %236, %239
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 2
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i32 0, i32 14
  %245 = call i32 @get_bits1(i32* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %396

247:                                              ; preds = %233
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 6
  %250 = load i32*, i32** %249, align 8
  store i32* %250, i32** %15, align 8
  %251 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 14
  %253 = call i32 @get_bits1(i32* %252)
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 19
  store i32 %253, i32* %255, align 8
  %256 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 14
  %258 = call i64 @get_bits(i32* %257, i32 6)
  %259 = mul i64 %258, 4
  %260 = load i32, i32* @FF_DCA_DMIXTABLE_OFFSET, align 4
  %261 = sext i32 %260 to i64
  %262 = sub i64 %259, %261
  %263 = sub i64 %262, 3
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %14, align 4
  %265 = load i32, i32* %14, align 4
  %266 = load i32, i32* @FF_DCA_INV_DMIXTABLE_SIZE, align 4
  %267 = icmp uge i32 %265, %266
  br i1 %267, label %268, label %276

268:                                              ; preds = %247
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %269, i32 0, i32 16
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @AV_LOG_ERROR, align 4
  %273 = load i32, i32* %14, align 4
  %274 = call i32 (i32, i32, i8*, ...) @av_log(i32 %271, i32 %272, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %275, i32* %4, align 4
  br label %728

276:                                              ; preds = %247
  %277 = load i32*, i32** @ff_dca_inv_dmixtable, align 8
  %278 = load i32, i32* %14, align 4
  %279 = zext i32 %278 to i64
  %280 = getelementptr inbounds i32, i32* %277, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 20
  store i32 %281, i32* %283, align 4
  store i32 0, i32* %9, align 4
  br label %284

284:                                              ; preds = %318, %276
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %10, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %321

288:                                              ; preds = %284
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %290 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i32 0, i32 14
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @get_bits_long(i32* %290, i32 %293)
  store i32 %294, i32* %13, align 4
  %295 = load i32, i32* %13, align 4
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i32 0, i32 5
  %298 = load i32, i32* %297, align 4
  %299 = and i32 %295, %298
  %300 = load i32, i32* %13, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %310

302:                                              ; preds = %288
  %303 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 16
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* @AV_LOG_ERROR, align 4
  %307 = load i32, i32* %13, align 4
  %308 = call i32 (i32, i32, i8*, ...) @av_log(i32 %305, i32 %306, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i64 0, i64 0), i32 %307)
  %309 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %309, i32* %4, align 4
  br label %728

310:                                              ; preds = %288
  %311 = load i32, i32* %13, align 4
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 7
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %9, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  store i32 %311, i32* %317, align 4
  br label %318

318:                                              ; preds = %310
  %319 = load i32, i32* %9, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %9, align 4
  br label %284

321:                                              ; preds = %284
  store i32 0, i32* %9, align 4
  br label %322

322:                                              ; preds = %392, %321
  %323 = load i32, i32* %9, align 4
  %324 = load i32, i32* %10, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %395

326:                                              ; preds = %322
  store i32 0, i32* %8, align 4
  br label %327

327:                                              ; preds = %388, %326
  %328 = load i32, i32* %8, align 4
  %329 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %330 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %329, i32 0, i32 3
  %331 = load i32, i32* %330, align 4
  %332 = icmp ult i32 %328, %331
  br i1 %332, label %333, label %391

333:                                              ; preds = %327
  %334 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 7
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %9, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* %8, align 4
  %342 = shl i32 1, %341
  %343 = and i32 %340, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %387

345:                                              ; preds = %333
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 14
  %348 = call i64 @get_bits(i32* %347, i32 7)
  %349 = trunc i64 %348 to i32
  store i32 %349, i32* %16, align 4
  %350 = load i32, i32* %16, align 4
  %351 = ashr i32 %350, 6
  %352 = sub nsw i32 %351, 1
  store i32 %352, i32* %17, align 4
  %353 = load i32, i32* %16, align 4
  %354 = and i32 %353, 63
  store i32 %354, i32* %16, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %383

356:                                              ; preds = %345
  %357 = load i32, i32* %16, align 4
  %358 = mul nsw i32 %357, 4
  %359 = sub nsw i32 %358, 3
  store i32 %359, i32* %14, align 4
  %360 = load i32, i32* %14, align 4
  %361 = load i32, i32* @FF_DCA_DMIXTABLE_SIZE, align 4
  %362 = icmp uge i32 %360, %361
  br i1 %362, label %363, label %371

363:                                              ; preds = %356
  %364 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 16
  %366 = load i32, i32* %365, align 8
  %367 = load i32, i32* @AV_LOG_ERROR, align 4
  %368 = load i32, i32* %14, align 4
  %369 = call i32 (i32, i32, i8*, ...) @av_log(i32 %366, i32 %367, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i32 %368)
  %370 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %370, i32* %4, align 4
  br label %728

371:                                              ; preds = %356
  %372 = load i32*, i32** @ff_dca_dmixtable, align 8
  %373 = load i32, i32* %14, align 4
  %374 = zext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %17, align 4
  %378 = xor i32 %376, %377
  %379 = load i32, i32* %17, align 4
  %380 = sub nsw i32 %378, %379
  %381 = load i32*, i32** %15, align 8
  %382 = getelementptr inbounds i32, i32* %381, i32 1
  store i32* %382, i32** %15, align 8
  store i32 %380, i32* %381, align 4
  br label %386

383:                                              ; preds = %345
  %384 = load i32*, i32** %15, align 8
  %385 = getelementptr inbounds i32, i32* %384, i32 1
  store i32* %385, i32** %15, align 8
  store i32 0, i32* %384, align 4
  br label %386

386:                                              ; preds = %383, %371
  br label %387

387:                                              ; preds = %386, %333
  br label %388

388:                                              ; preds = %387
  %389 = load i32, i32* %8, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %8, align 4
  br label %327

391:                                              ; preds = %327
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %9, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %9, align 4
  br label %322

395:                                              ; preds = %322
  br label %399

396:                                              ; preds = %233
  %397 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %398 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %397, i32 0, i32 19
  store i32 0, i32* %398, align 8
  br label %399

399:                                              ; preds = %396, %395
  br label %400

400:                                              ; preds = %27, %399, %95, %94
  %401 = load i32, i32* %7, align 4
  store i32 %401, i32* %9, align 4
  br label %402

402:                                              ; preds = %436, %400
  %403 = load i32, i32* %9, align 4
  %404 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %405 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = icmp slt i32 %403, %406
  br i1 %407, label %408, label %439

408:                                              ; preds = %402
  %409 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %410 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %409, i32 0, i32 14
  %411 = call i64 @get_bits(i32* %410, i32 5)
  %412 = add i64 %411, 2
  %413 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %413, i32 0, i32 8
  %415 = load i64*, i64** %414, align 8
  %416 = load i32, i32* %9, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i64, i64* %415, i64 %417
  store i64 %412, i64* %418, align 8
  %419 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %419, i32 0, i32 8
  %421 = load i64*, i64** %420, align 8
  %422 = load i32, i32* %9, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i64, i64* %421, i64 %423
  %425 = load i64, i64* %424, align 8
  %426 = load i64, i64* @DCA_SUBBANDS, align 8
  %427 = icmp sgt i64 %425, %426
  br i1 %427, label %428, label %435

428:                                              ; preds = %408
  %429 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %430 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %429, i32 0, i32 16
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @AV_LOG_ERROR, align 4
  %433 = call i32 (i32, i32, i8*, ...) @av_log(i32 %431, i32 %432, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %434 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %434, i32* %4, align 4
  br label %728

435:                                              ; preds = %408
  br label %436

436:                                              ; preds = %435
  %437 = load i32, i32* %9, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %9, align 4
  br label %402

439:                                              ; preds = %402
  %440 = load i32, i32* %7, align 4
  store i32 %440, i32* %9, align 4
  br label %441

441:                                              ; preds = %458, %439
  %442 = load i32, i32* %9, align 4
  %443 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %444 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = icmp slt i32 %442, %445
  br i1 %446, label %447, label %461

447:                                              ; preds = %441
  %448 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %449 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %448, i32 0, i32 14
  %450 = call i64 @get_bits(i32* %449, i32 5)
  %451 = add i64 %450, 1
  %452 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %453 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %452, i32 0, i32 18
  %454 = load i64*, i64** %453, align 8
  %455 = load i32, i32* %9, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i64, i64* %454, i64 %456
  store i64 %451, i64* %457, align 8
  br label %458

458:                                              ; preds = %447
  %459 = load i32, i32* %9, align 4
  %460 = add nsw i32 %459, 1
  store i32 %460, i32* %9, align 4
  br label %441

461:                                              ; preds = %441
  %462 = load i32, i32* %7, align 4
  store i32 %462, i32* %9, align 4
  br label %463

463:                                              ; preds = %504, %461
  %464 = load i32, i32* %9, align 4
  %465 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 8
  %468 = icmp slt i32 %464, %467
  br i1 %468, label %469, label %507

469:                                              ; preds = %463
  %470 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %471 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %470, i32 0, i32 14
  %472 = call i64 @get_bits(i32* %471, i32 3)
  %473 = trunc i64 %472 to i32
  store i32 %473, i32* %8, align 4
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %483

475:                                              ; preds = %469
  %476 = load i32, i32* %6, align 4
  %477 = icmp eq i32 %476, 128
  br i1 %477, label %478, label %483

478:                                              ; preds = %475
  %479 = load i32, i32* %7, align 4
  %480 = sub nsw i32 %479, 1
  %481 = load i32, i32* %8, align 4
  %482 = add nsw i32 %481, %480
  store i32 %482, i32* %8, align 4
  br label %483

483:                                              ; preds = %478, %475, %469
  %484 = load i32, i32* %8, align 4
  %485 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %486 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = icmp sgt i32 %484, %487
  br i1 %488, label %489, label %496

489:                                              ; preds = %483
  %490 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %491 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %490, i32 0, i32 16
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* @AV_LOG_ERROR, align 4
  %494 = call i32 (i32, i32, i8*, ...) @av_log(i32 %492, i32 %493, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %495 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %495, i32* %4, align 4
  br label %728

496:                                              ; preds = %483
  %497 = load i32, i32* %8, align 4
  %498 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %499 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %498, i32 0, i32 9
  %500 = load i32*, i32** %499, align 8
  %501 = load i32, i32* %9, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  store i32 %497, i32* %503, align 4
  br label %504

504:                                              ; preds = %496
  %505 = load i32, i32* %9, align 4
  %506 = add nsw i32 %505, 1
  store i32 %506, i32* %9, align 4
  br label %463

507:                                              ; preds = %463
  %508 = load i32, i32* %7, align 4
  store i32 %508, i32* %9, align 4
  br label %509

509:                                              ; preds = %525, %507
  %510 = load i32, i32* %9, align 4
  %511 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %512 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = icmp slt i32 %510, %513
  br i1 %514, label %515, label %528

515:                                              ; preds = %509
  %516 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %517 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %516, i32 0, i32 14
  %518 = call i64 @get_bits(i32* %517, i32 2)
  %519 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %520 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %519, i32 0, i32 10
  %521 = load i64*, i64** %520, align 8
  %522 = load i32, i32* %9, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i64, i64* %521, i64 %523
  store i64 %518, i64* %524, align 8
  br label %525

525:                                              ; preds = %515
  %526 = load i32, i32* %9, align 4
  %527 = add nsw i32 %526, 1
  store i32 %527, i32* %9, align 4
  br label %509

528:                                              ; preds = %509
  %529 = load i32, i32* %7, align 4
  store i32 %529, i32* %9, align 4
  br label %530

530:                                              ; preds = %562, %528
  %531 = load i32, i32* %9, align 4
  %532 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = icmp slt i32 %531, %534
  br i1 %535, label %536, label %565

536:                                              ; preds = %530
  %537 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %538 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %537, i32 0, i32 14
  %539 = call i64 @get_bits(i32* %538, i32 3)
  %540 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %540, i32 0, i32 11
  %542 = load i64*, i64** %541, align 8
  %543 = load i32, i32* %9, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i64, i64* %542, i64 %544
  store i64 %539, i64* %545, align 8
  %546 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %547 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %546, i32 0, i32 11
  %548 = load i64*, i64** %547, align 8
  %549 = load i32, i32* %9, align 4
  %550 = sext i32 %549 to i64
  %551 = getelementptr inbounds i64, i64* %548, i64 %550
  %552 = load i64, i64* %551, align 8
  %553 = icmp eq i64 %552, 7
  br i1 %553, label %554, label %561

554:                                              ; preds = %536
  %555 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %556 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %555, i32 0, i32 16
  %557 = load i32, i32* %556, align 8
  %558 = load i32, i32* @AV_LOG_ERROR, align 4
  %559 = call i32 (i32, i32, i8*, ...) @av_log(i32 %557, i32 %558, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %560 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %560, i32* %4, align 4
  br label %728

561:                                              ; preds = %536
  br label %562

562:                                              ; preds = %561
  %563 = load i32, i32* %9, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %9, align 4
  br label %530

565:                                              ; preds = %530
  %566 = load i32, i32* %7, align 4
  store i32 %566, i32* %9, align 4
  br label %567

567:                                              ; preds = %599, %565
  %568 = load i32, i32* %9, align 4
  %569 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %570 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %569, i32 0, i32 0
  %571 = load i32, i32* %570, align 8
  %572 = icmp slt i32 %568, %571
  br i1 %572, label %573, label %602

573:                                              ; preds = %567
  %574 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %575 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %574, i32 0, i32 14
  %576 = call i64 @get_bits(i32* %575, i32 3)
  %577 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %578 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %577, i32 0, i32 12
  %579 = load i64*, i64** %578, align 8
  %580 = load i32, i32* %9, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds i64, i64* %579, i64 %581
  store i64 %576, i64* %582, align 8
  %583 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %584 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %583, i32 0, i32 12
  %585 = load i64*, i64** %584, align 8
  %586 = load i32, i32* %9, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i64, i64* %585, i64 %587
  %589 = load i64, i64* %588, align 8
  %590 = icmp eq i64 %589, 7
  br i1 %590, label %591, label %598

591:                                              ; preds = %573
  %592 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %593 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %592, i32 0, i32 16
  %594 = load i32, i32* %593, align 8
  %595 = load i32, i32* @AV_LOG_ERROR, align 4
  %596 = call i32 (i32, i32, i8*, ...) @av_log(i32 %594, i32 %595, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %597 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %597, i32* %4, align 4
  br label %728

598:                                              ; preds = %573
  br label %599

599:                                              ; preds = %598
  %600 = load i32, i32* %9, align 4
  %601 = add nsw i32 %600, 1
  store i32 %601, i32* %9, align 4
  br label %567

602:                                              ; preds = %567
  store i32 0, i32* %8, align 4
  br label %603

603:                                              ; preds = %638, %602
  %604 = load i32, i32* %8, align 4
  %605 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %606 = icmp slt i32 %604, %605
  br i1 %606, label %607, label %641

607:                                              ; preds = %603
  %608 = load i32, i32* %7, align 4
  store i32 %608, i32* %9, align 4
  br label %609

609:                                              ; preds = %634, %607
  %610 = load i32, i32* %9, align 4
  %611 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %612 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = icmp slt i32 %610, %613
  br i1 %614, label %615, label %637

615:                                              ; preds = %609
  %616 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %617 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %616, i32 0, i32 14
  %618 = load i32*, i32** @ff_dca_quant_index_sel_nbits, align 8
  %619 = load i32, i32* %8, align 4
  %620 = sext i32 %619 to i64
  %621 = getelementptr inbounds i32, i32* %618, i64 %620
  %622 = load i32, i32* %621, align 4
  %623 = call i64 @get_bits(i32* %617, i32 %622)
  %624 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %625 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %624, i32 0, i32 13
  %626 = load i64**, i64*** %625, align 8
  %627 = load i32, i32* %9, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i64*, i64** %626, i64 %628
  %630 = load i64*, i64** %629, align 8
  %631 = load i32, i32* %8, align 4
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i64, i64* %630, i64 %632
  store i64 %623, i64* %633, align 8
  br label %634

634:                                              ; preds = %615
  %635 = load i32, i32* %9, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %9, align 4
  br label %609

637:                                              ; preds = %609
  br label %638

638:                                              ; preds = %637
  %639 = load i32, i32* %8, align 4
  %640 = add nsw i32 %639, 1
  store i32 %640, i32* %8, align 4
  br label %603

641:                                              ; preds = %603
  store i32 0, i32* %8, align 4
  br label %642

642:                                              ; preds = %694, %641
  %643 = load i32, i32* %8, align 4
  %644 = load i32, i32* @DCA_CODE_BOOKS, align 4
  %645 = icmp slt i32 %643, %644
  br i1 %645, label %646, label %697

646:                                              ; preds = %642
  %647 = load i32, i32* %7, align 4
  store i32 %647, i32* %9, align 4
  br label %648

648:                                              ; preds = %690, %646
  %649 = load i32, i32* %9, align 4
  %650 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %651 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %650, i32 0, i32 0
  %652 = load i32, i32* %651, align 8
  %653 = icmp slt i32 %649, %652
  br i1 %653, label %654, label %693

654:                                              ; preds = %648
  %655 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %656 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %655, i32 0, i32 13
  %657 = load i64**, i64*** %656, align 8
  %658 = load i32, i32* %9, align 4
  %659 = sext i32 %658 to i64
  %660 = getelementptr inbounds i64*, i64** %657, i64 %659
  %661 = load i64*, i64** %660, align 8
  %662 = load i32, i32* %8, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i64, i64* %661, i64 %663
  %665 = load i64, i64* %664, align 8
  %666 = load i64*, i64** @ff_dca_quant_index_group_size, align 8
  %667 = load i32, i32* %8, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i64, i64* %666, i64 %668
  %670 = load i64, i64* %669, align 8
  %671 = icmp ult i64 %665, %670
  br i1 %671, label %672, label %689

672:                                              ; preds = %654
  %673 = load i32*, i32** @ff_dca_scale_factor_adj, align 8
  %674 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %675 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %674, i32 0, i32 14
  %676 = call i64 @get_bits(i32* %675, i32 2)
  %677 = getelementptr inbounds i32, i32* %673, i64 %676
  %678 = load i32, i32* %677, align 4
  %679 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %680 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %679, i32 0, i32 17
  %681 = load i32**, i32*** %680, align 8
  %682 = load i32, i32* %9, align 4
  %683 = sext i32 %682 to i64
  %684 = getelementptr inbounds i32*, i32** %681, i64 %683
  %685 = load i32*, i32** %684, align 8
  %686 = load i32, i32* %8, align 4
  %687 = sext i32 %686 to i64
  %688 = getelementptr inbounds i32, i32* %685, i64 %687
  store i32 %678, i32* %688, align 4
  br label %689

689:                                              ; preds = %672, %654
  br label %690

690:                                              ; preds = %689
  %691 = load i32, i32* %9, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, i32* %9, align 4
  br label %648

693:                                              ; preds = %648
  br label %694

694:                                              ; preds = %693
  %695 = load i32, i32* %8, align 4
  %696 = add nsw i32 %695, 1
  store i32 %696, i32* %8, align 4
  br label %642

697:                                              ; preds = %642
  %698 = load i32, i32* %6, align 4
  %699 = icmp eq i32 %698, 128
  br i1 %699, label %700, label %717

700:                                              ; preds = %697
  %701 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %702 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %701, i32 0, i32 14
  %703 = load i32, i32* %12, align 4
  %704 = load i32, i32* %11, align 4
  %705 = mul nsw i32 %704, 8
  %706 = add nsw i32 %703, %705
  %707 = call i64 @ff_dca_seek_bits(i32* %702, i32 %706)
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %709, label %716

709:                                              ; preds = %700
  %710 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %711 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %710, i32 0, i32 16
  %712 = load i32, i32* %711, align 8
  %713 = load i32, i32* @AV_LOG_ERROR, align 4
  %714 = call i32 (i32, i32, i8*, ...) @av_log(i32 %712, i32 %713, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  %715 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %715, i32* %4, align 4
  br label %728

716:                                              ; preds = %700
  br label %727

717:                                              ; preds = %697
  %718 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %719 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %718, i32 0, i32 15
  %720 = load i64, i64* %719, align 8
  %721 = icmp ne i64 %720, 0
  br i1 %721, label %722, label %726

722:                                              ; preds = %717
  %723 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %724 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %723, i32 0, i32 14
  %725 = call i32 @skip_bits(i32* %724, i32 16)
  br label %726

726:                                              ; preds = %722, %717
  br label %727

727:                                              ; preds = %726, %716
  store i32 0, i32* %4, align 4
  br label %728

728:                                              ; preds = %727, %709, %591, %554, %489, %428, %363, %302, %268, %220, %201, %157, %141, %54, %25
  %729 = load i32, i32* %4, align 4
  ret i32 %729
}

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i64 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @ff_dca_check_crc(i32, i32*, i32, i32) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*, i32) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_popcount(i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i64 @ff_dca_seek_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
