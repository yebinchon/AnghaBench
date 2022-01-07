; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_mb_b.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_mb_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i8**, i32, i32*, i32*, i32 }

@ff_cavs_dir_mv = common dso_local global i8* null, align 8
@MV_FWD_X0 = common dso_local global i64 0, align 8
@BLK_16X16 = common dso_local global i32 0, align 4
@MV_BWD_X0 = common dso_local global i64 0, align 8
@MV_FWD_C2 = common dso_local global i64 0, align 8
@MV_PRED_BSKIP = common dso_local global i32 0, align 4
@MV_BWD_C2 = common dso_local global i64 0, align 8
@mv_scan = common dso_local global i64* null, align 8
@MV_PRED_MEDIAN = common dso_local global i32 0, align 4
@MV_BWD_OFFS = common dso_local global i64 0, align 8
@BLK_8X8 = common dso_local global i32 0, align 4
@B_SUB_BWD = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid mb_type %d in B frame\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_cavs_partition_flags = common dso_local global i32* null, align 8
@FWD0 = common dso_local global i32 0, align 4
@MV_PRED_TOP = common dso_local global i32 0, align 4
@BLK_16X8 = common dso_local global i32 0, align 4
@SYM0 = common dso_local global i32 0, align 4
@FWD1 = common dso_local global i32 0, align 4
@MV_FWD_X2 = common dso_local global i64 0, align 8
@MV_FWD_A1 = common dso_local global i64 0, align 8
@MV_PRED_LEFT = common dso_local global i32 0, align 4
@SYM1 = common dso_local global i32 0, align 4
@BWD0 = common dso_local global i32 0, align 4
@BWD1 = common dso_local global i32 0, align 4
@MV_BWD_X2 = common dso_local global i64 0, align 8
@MV_BWD_A1 = common dso_local global i64 0, align 8
@MV_FWD_B3 = common dso_local global i64 0, align 8
@BLK_8X16 = common dso_local global i32 0, align 4
@MV_FWD_X1 = common dso_local global i64 0, align 8
@MV_PRED_TOPRIGHT = common dso_local global i32 0, align 4
@MV_BWD_B3 = common dso_local global i64 0, align 8
@MV_BWD_X1 = common dso_local global i64 0, align 8
@TMP_UNUSED_INX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32)* @decode_mb_b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_mb_b(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = call i32 @ff_cavs_init_mb(%struct.TYPE_11__* %9)
  %11 = load i8*, i8** @ff_cavs_dir_mv, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i8**, i8*** %13, align 8
  %15 = load i64, i64* @MV_FWD_X0, align 8
  %16 = getelementptr inbounds i8*, i8** %14, i64 %15
  store i8* %11, i8** %16, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i8**, i8*** %18, align 8
  %20 = load i64, i64* @MV_FWD_X0, align 8
  %21 = getelementptr inbounds i8*, i8** %19, i64 %20
  %22 = load i32, i32* @BLK_16X16, align 4
  %23 = call i32 @set_mvs(i8** %21, i32 %22)
  %24 = load i8*, i8** @ff_cavs_dir_mv, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = load i8**, i8*** %26, align 8
  %28 = load i64, i64* @MV_BWD_X0, align 8
  %29 = getelementptr inbounds i8*, i8** %27, i64 %28
  store i8* %24, i8** %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load i8**, i8*** %31, align 8
  %33 = load i64, i64* @MV_BWD_X0, align 8
  %34 = getelementptr inbounds i8*, i8** %32, i64 %33
  %35 = load i32, i32* @BLK_16X16, align 4
  %36 = call i32 @set_mvs(i8** %34, i32 %35)
  %37 = load i32, i32* %5, align 4
  switch i32 %37, label %414 [
    i32 132, label %38
    i32 134, label %38
    i32 133, label %93
    i32 128, label %100
    i32 135, label %115
    i32 136, label %122
  ]

38:                                               ; preds = %2, %2
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %61, label %48

48:                                               ; preds = %38
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %50 = load i64, i64* @MV_FWD_X0, align 8
  %51 = load i64, i64* @MV_FWD_C2, align 8
  %52 = load i32, i32* @MV_PRED_BSKIP, align 4
  %53 = load i32, i32* @BLK_16X16, align 4
  %54 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %49, i64 %50, i64 %51, i32 %52, i32 %53, i32 1)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %56 = load i64, i64* @MV_BWD_X0, align 8
  %57 = load i64, i64* @MV_BWD_C2, align 8
  %58 = load i32, i32* @MV_PRED_BSKIP, align 4
  %59 = load i32, i32* @BLK_16X16, align 4
  %60 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %55, i64 %56, i64 %57, i32 %58, i32 %59, i32 0)
  br label %92

61:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %62

62:                                               ; preds = %88, %61
  %63 = load i32, i32* %6, align 4
  %64 = icmp slt i32 %63, 4
  br i1 %64, label %65, label %91

65:                                               ; preds = %62
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64*, i64** @mv_scan, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i8*, i8** %69, i64 %74
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = mul i64 %81, 4
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = add i64 %82, %84
  %86 = getelementptr inbounds i32, i32* %78, i64 %85
  %87 = call i32 @mv_pred_direct(%struct.TYPE_11__* %66, i8** %75, i32* %86)
  br label %88

88:                                               ; preds = %65
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %62

91:                                               ; preds = %62
  br label %92

92:                                               ; preds = %91, %48
  br label %593

93:                                               ; preds = %2
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %95 = load i64, i64* @MV_FWD_X0, align 8
  %96 = load i64, i64* @MV_FWD_C2, align 8
  %97 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %98 = load i32, i32* @BLK_16X16, align 4
  %99 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %94, i64 %95, i64 %96, i32 %97, i32 %98, i32 1)
  br label %593

100:                                              ; preds = %2
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = load i64, i64* @MV_FWD_X0, align 8
  %103 = load i64, i64* @MV_FWD_C2, align 8
  %104 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %105 = load i32, i32* @BLK_16X16, align 4
  %106 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %101, i64 %102, i64 %103, i32 %104, i32 %105, i32 1)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = load i64, i64* @MV_FWD_X0, align 8
  %112 = getelementptr inbounds i8*, i8** %110, i64 %111
  %113 = load i32, i32* @BLK_16X16, align 4
  %114 = call i32 @mv_pred_sym(%struct.TYPE_11__* %107, i8** %112, i32 %113)
  br label %593

115:                                              ; preds = %2
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = load i64, i64* @MV_BWD_X0, align 8
  %118 = load i64, i64* @MV_BWD_C2, align 8
  %119 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %120 = load i32, i32* @BLK_16X16, align 4
  %121 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %116, i64 %117, i64 %118, i32 %119, i32 %120, i32 0)
  br label %593

122:                                              ; preds = %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %133, %122
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 4
  br i1 %125, label %126, label %136

126:                                              ; preds = %123
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 5
  %129 = call i32 @get_bits(i32* %128, i32 2)
  %130 = load i32, i32* %6, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %131
  store i32 %129, i32* %132, align 4
  br label %133

133:                                              ; preds = %126
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %6, align 4
  br label %123

136:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %375, %136
  %138 = load i32, i32* %6, align 4
  %139 = icmp slt i32 %138, 4
  br i1 %139, label %140, label %378

140:                                              ; preds = %137
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  switch i32 %144, label %374 [
    i32 131, label %145
    i32 130, label %330
    i32 129, label %346
  ]

145:                                              ; preds = %140
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 4
  %148 = load i32*, i32** %147, align 8
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %306, label %155

155:                                              ; preds = %145
  %156 = load i32, i32* %8, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %268

158:                                              ; preds = %155
  %159 = load i32, i32* %6, align 4
  %160 = icmp sgt i32 %159, 0
  br i1 %160, label %161, label %186

161:                                              ; preds = %158
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i8**, i8*** %163, align 8
  %165 = load i64, i64* @MV_FWD_X0, align 8
  %166 = getelementptr inbounds i8*, i8** %164, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = load i8**, i8*** %169, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 7
  store i8* %167, i8** %171, align 8
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i8**, i8*** %173, align 8
  %175 = load i64, i64* @MV_FWD_X0, align 8
  %176 = load i64, i64* @MV_BWD_OFFS, align 8
  %177 = add i64 %175, %176
  %178 = getelementptr inbounds i8*, i8** %174, i64 %177
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i8**, i8*** %181, align 8
  %183 = load i64, i64* @MV_BWD_OFFS, align 8
  %184 = add i64 7, %183
  %185 = getelementptr inbounds i8*, i8** %182, i64 %184
  store i8* %179, i8** %185, align 8
  br label %186

186:                                              ; preds = %161, %158
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %188 = load i64, i64* @MV_FWD_X0, align 8
  %189 = load i64, i64* @MV_FWD_C2, align 8
  %190 = load i32, i32* @MV_PRED_BSKIP, align 4
  %191 = load i32, i32* @BLK_8X8, align 4
  %192 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %187, i64 %188, i64 %189, i32 %190, i32 %191, i32 1)
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %194 = load i64, i64* @MV_FWD_X0, align 8
  %195 = load i64, i64* @MV_BWD_OFFS, align 8
  %196 = add i64 %194, %195
  %197 = load i64, i64* @MV_FWD_C2, align 8
  %198 = load i64, i64* @MV_BWD_OFFS, align 8
  %199 = add i64 %197, %198
  %200 = load i32, i32* @MV_PRED_BSKIP, align 4
  %201 = load i32, i32* @BLK_8X8, align 4
  %202 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %193, i64 %196, i64 %199, i32 %200, i32 %201, i32 0)
  %203 = load i32, i32* %6, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %264

205:                                              ; preds = %186
  %206 = load i64*, i64** @mv_scan, align 8
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i64, i64* %206, i64 %208
  %210 = load i64, i64* %209, align 8
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %8, align 4
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load i8**, i8*** %213, align 8
  %215 = load i64, i64* @MV_FWD_X0, align 8
  %216 = getelementptr inbounds i8*, i8** %214, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i8**, i8*** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8*, i8** %220, i64 %222
  store i8* %217, i8** %223, align 8
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = load i8**, i8*** %225, align 8
  %227 = load i64, i64* @MV_FWD_X0, align 8
  %228 = load i64, i64* @MV_BWD_OFFS, align 8
  %229 = add i64 %227, %228
  %230 = getelementptr inbounds i8*, i8** %226, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  %234 = load i8**, i8*** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* @MV_BWD_OFFS, align 8
  %238 = add i64 %236, %237
  %239 = getelementptr inbounds i8*, i8** %234, i64 %238
  store i8* %231, i8** %239, align 8
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 1
  %242 = load i8**, i8*** %241, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 7
  %244 = load i8*, i8** %243, align 8
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 1
  %247 = load i8**, i8*** %246, align 8
  %248 = load i64, i64* @MV_FWD_X0, align 8
  %249 = getelementptr inbounds i8*, i8** %247, i64 %248
  store i8* %244, i8** %249, align 8
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 1
  %252 = load i8**, i8*** %251, align 8
  %253 = load i64, i64* @MV_BWD_OFFS, align 8
  %254 = add i64 7, %253
  %255 = getelementptr inbounds i8*, i8** %252, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 1
  %259 = load i8**, i8*** %258, align 8
  %260 = load i64, i64* @MV_FWD_X0, align 8
  %261 = load i64, i64* @MV_BWD_OFFS, align 8
  %262 = add i64 %260, %261
  %263 = getelementptr inbounds i8*, i8** %259, i64 %262
  store i8* %256, i8** %263, align 8
  br label %267

264:                                              ; preds = %186
  %265 = load i64, i64* @MV_FWD_X0, align 8
  %266 = trunc i64 %265 to i32
  store i32 %266, i32* %8, align 4
  br label %267

267:                                              ; preds = %264, %205
  br label %305

268:                                              ; preds = %155
  %269 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = load i8**, i8*** %270, align 8
  %272 = load i32, i32* %8, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %271, i64 %273
  %275 = load i8*, i8** %274, align 8
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 1
  %278 = load i8**, i8*** %277, align 8
  %279 = load i64*, i64** @mv_scan, align 8
  %280 = load i32, i32* %6, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i64, i64* %279, i64 %281
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i8*, i8** %278, i64 %283
  store i8* %275, i8** %284, align 8
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 1
  %287 = load i8**, i8*** %286, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = load i64, i64* @MV_BWD_OFFS, align 8
  %291 = add i64 %289, %290
  %292 = getelementptr inbounds i8*, i8** %287, i64 %291
  %293 = load i8*, i8** %292, align 8
  %294 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %294, i32 0, i32 1
  %296 = load i8**, i8*** %295, align 8
  %297 = load i64*, i64** @mv_scan, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i64, i64* %297, i64 %299
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @MV_BWD_OFFS, align 8
  %303 = add i64 %301, %302
  %304 = getelementptr inbounds i8*, i8** %296, i64 %303
  store i8* %293, i8** %304, align 8
  br label %305

305:                                              ; preds = %268, %267
  br label %329

306:                                              ; preds = %145
  %307 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 1
  %310 = load i8**, i8*** %309, align 8
  %311 = load i64*, i64** @mv_scan, align 8
  %312 = load i32, i32* %6, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i64, i64* %311, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = getelementptr inbounds i8*, i8** %310, i64 %315
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %318 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i32 0, i32 3
  %319 = load i32*, i32** %318, align 8
  %320 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = mul i64 %322, 4
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = add i64 %323, %325
  %327 = getelementptr inbounds i32, i32* %319, i64 %326
  %328 = call i32 @mv_pred_direct(%struct.TYPE_11__* %307, i8** %316, i32* %327)
  br label %329

329:                                              ; preds = %306, %305
  br label %374

330:                                              ; preds = %140
  %331 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %332 = load i64*, i64** @mv_scan, align 8
  %333 = load i32, i32* %6, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i64, i64* %332, i64 %334
  %336 = load i64, i64* %335, align 8
  %337 = load i64*, i64** @mv_scan, align 8
  %338 = load i32, i32* %6, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = sub i64 %341, 3
  %343 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %344 = load i32, i32* @BLK_8X8, align 4
  %345 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %331, i64 %336, i64 %342, i32 %343, i32 %344, i32 1)
  br label %374

346:                                              ; preds = %140
  %347 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %348 = load i64*, i64** @mv_scan, align 8
  %349 = load i32, i32* %6, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i64, i64* %348, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = load i64*, i64** @mv_scan, align 8
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i64, i64* %353, i64 %355
  %357 = load i64, i64* %356, align 8
  %358 = sub i64 %357, 3
  %359 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %360 = load i32, i32* @BLK_8X8, align 4
  %361 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %347, i64 %352, i64 %358, i32 %359, i32 %360, i32 1)
  %362 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 1
  %365 = load i8**, i8*** %364, align 8
  %366 = load i64*, i64** @mv_scan, align 8
  %367 = load i32, i32* %6, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds i64, i64* %366, i64 %368
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds i8*, i8** %365, i64 %370
  %372 = load i32, i32* @BLK_8X8, align 4
  %373 = call i32 @mv_pred_sym(%struct.TYPE_11__* %362, i8** %371, i32 %372)
  br label %374

374:                                              ; preds = %140, %346, %330, %329
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %6, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %6, align 4
  br label %137

378:                                              ; preds = %137
  store i32 0, i32* %6, align 4
  br label %379

379:                                              ; preds = %410, %378
  %380 = load i32, i32* %6, align 4
  %381 = icmp slt i32 %380, 4
  br i1 %381, label %382, label %413

382:                                              ; preds = %379
  %383 = load i32, i32* %6, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = load i32, i32* @B_SUB_BWD, align 4
  %388 = icmp eq i32 %386, %387
  br i1 %388, label %389, label %409

389:                                              ; preds = %382
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %391 = load i64*, i64** @mv_scan, align 8
  %392 = load i32, i32* %6, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i64, i64* %391, i64 %393
  %395 = load i64, i64* %394, align 8
  %396 = load i64, i64* @MV_BWD_OFFS, align 8
  %397 = add i64 %395, %396
  %398 = load i64*, i64** @mv_scan, align 8
  %399 = load i32, i32* %6, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i64, i64* %398, i64 %400
  %402 = load i64, i64* %401, align 8
  %403 = load i64, i64* @MV_BWD_OFFS, align 8
  %404 = add i64 %402, %403
  %405 = sub i64 %404, 3
  %406 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %407 = load i32, i32* @BLK_8X8, align 4
  %408 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %390, i64 %397, i64 %405, i32 %406, i32 %407, i32 0)
  br label %409

409:                                              ; preds = %389, %382
  br label %410

410:                                              ; preds = %409
  %411 = load i32, i32* %6, align 4
  %412 = add nsw i32 %411, 1
  store i32 %412, i32* %6, align 4
  br label %379

413:                                              ; preds = %379
  br label %593

414:                                              ; preds = %2
  %415 = load i32, i32* %5, align 4
  %416 = icmp ule i32 %415, 128
  br i1 %416, label %417, label %425

417:                                              ; preds = %414
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = load i32, i32* @AV_LOG_ERROR, align 4
  %422 = load i32, i32* %5, align 4
  %423 = call i32 @av_log(i32 %420, i32 %421, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %422)
  %424 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %424, i32* %3, align 4
  br label %608

425:                                              ; preds = %414
  %426 = load i32, i32* %5, align 4
  %427 = icmp ult i32 %426, 136
  %428 = zext i1 %427 to i32
  %429 = call i32 @av_assert2(i32 %428)
  %430 = load i32*, i32** @ff_cavs_partition_flags, align 8
  %431 = load i32, i32* %5, align 4
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds i32, i32* %430, i64 %432
  %434 = load i32, i32* %433, align 4
  store i32 %434, i32* %8, align 4
  %435 = load i32, i32* %5, align 4
  %436 = and i32 %435, 1
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %515

438:                                              ; preds = %425
  %439 = load i32, i32* %8, align 4
  %440 = load i32, i32* @FWD0, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %450

443:                                              ; preds = %438
  %444 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %445 = load i64, i64* @MV_FWD_X0, align 8
  %446 = load i64, i64* @MV_FWD_C2, align 8
  %447 = load i32, i32* @MV_PRED_TOP, align 4
  %448 = load i32, i32* @BLK_16X8, align 4
  %449 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %444, i64 %445, i64 %446, i32 %447, i32 %448, i32 1)
  br label %450

450:                                              ; preds = %443, %438
  %451 = load i32, i32* %8, align 4
  %452 = load i32, i32* @SYM0, align 4
  %453 = and i32 %451, %452
  %454 = icmp ne i32 %453, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %450
  %456 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %457 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %458 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %457, i32 0, i32 1
  %459 = load i8**, i8*** %458, align 8
  %460 = load i64, i64* @MV_FWD_X0, align 8
  %461 = getelementptr inbounds i8*, i8** %459, i64 %460
  %462 = load i32, i32* @BLK_16X8, align 4
  %463 = call i32 @mv_pred_sym(%struct.TYPE_11__* %456, i8** %461, i32 %462)
  br label %464

464:                                              ; preds = %455, %450
  %465 = load i32, i32* %8, align 4
  %466 = load i32, i32* @FWD1, align 4
  %467 = and i32 %465, %466
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %476

469:                                              ; preds = %464
  %470 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %471 = load i64, i64* @MV_FWD_X2, align 8
  %472 = load i64, i64* @MV_FWD_A1, align 8
  %473 = load i32, i32* @MV_PRED_LEFT, align 4
  %474 = load i32, i32* @BLK_16X8, align 4
  %475 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %470, i64 %471, i64 %472, i32 %473, i32 %474, i32 1)
  br label %476

476:                                              ; preds = %469, %464
  %477 = load i32, i32* %8, align 4
  %478 = load i32, i32* @SYM1, align 4
  %479 = and i32 %477, %478
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %490

481:                                              ; preds = %476
  %482 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %483 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %484 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %483, i32 0, i32 1
  %485 = load i8**, i8*** %484, align 8
  %486 = load i64, i64* @MV_FWD_X2, align 8
  %487 = getelementptr inbounds i8*, i8** %485, i64 %486
  %488 = load i32, i32* @BLK_16X8, align 4
  %489 = call i32 @mv_pred_sym(%struct.TYPE_11__* %482, i8** %487, i32 %488)
  br label %490

490:                                              ; preds = %481, %476
  %491 = load i32, i32* %8, align 4
  %492 = load i32, i32* @BWD0, align 4
  %493 = and i32 %491, %492
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %502

495:                                              ; preds = %490
  %496 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %497 = load i64, i64* @MV_BWD_X0, align 8
  %498 = load i64, i64* @MV_BWD_C2, align 8
  %499 = load i32, i32* @MV_PRED_TOP, align 4
  %500 = load i32, i32* @BLK_16X8, align 4
  %501 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %496, i64 %497, i64 %498, i32 %499, i32 %500, i32 0)
  br label %502

502:                                              ; preds = %495, %490
  %503 = load i32, i32* %8, align 4
  %504 = load i32, i32* @BWD1, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %514

507:                                              ; preds = %502
  %508 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %509 = load i64, i64* @MV_BWD_X2, align 8
  %510 = load i64, i64* @MV_BWD_A1, align 8
  %511 = load i32, i32* @MV_PRED_LEFT, align 4
  %512 = load i32, i32* @BLK_16X8, align 4
  %513 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %508, i64 %509, i64 %510, i32 %511, i32 %512, i32 0)
  br label %514

514:                                              ; preds = %507, %502
  br label %592

515:                                              ; preds = %425
  %516 = load i32, i32* %8, align 4
  %517 = load i32, i32* @FWD0, align 4
  %518 = and i32 %516, %517
  %519 = icmp ne i32 %518, 0
  br i1 %519, label %520, label %527

520:                                              ; preds = %515
  %521 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %522 = load i64, i64* @MV_FWD_X0, align 8
  %523 = load i64, i64* @MV_FWD_B3, align 8
  %524 = load i32, i32* @MV_PRED_LEFT, align 4
  %525 = load i32, i32* @BLK_8X16, align 4
  %526 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %521, i64 %522, i64 %523, i32 %524, i32 %525, i32 1)
  br label %527

527:                                              ; preds = %520, %515
  %528 = load i32, i32* %8, align 4
  %529 = load i32, i32* @SYM0, align 4
  %530 = and i32 %528, %529
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %532, label %541

532:                                              ; preds = %527
  %533 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %534 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %535 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %534, i32 0, i32 1
  %536 = load i8**, i8*** %535, align 8
  %537 = load i64, i64* @MV_FWD_X0, align 8
  %538 = getelementptr inbounds i8*, i8** %536, i64 %537
  %539 = load i32, i32* @BLK_8X16, align 4
  %540 = call i32 @mv_pred_sym(%struct.TYPE_11__* %533, i8** %538, i32 %539)
  br label %541

541:                                              ; preds = %532, %527
  %542 = load i32, i32* %8, align 4
  %543 = load i32, i32* @FWD1, align 4
  %544 = and i32 %542, %543
  %545 = icmp ne i32 %544, 0
  br i1 %545, label %546, label %553

546:                                              ; preds = %541
  %547 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %548 = load i64, i64* @MV_FWD_X1, align 8
  %549 = load i64, i64* @MV_FWD_C2, align 8
  %550 = load i32, i32* @MV_PRED_TOPRIGHT, align 4
  %551 = load i32, i32* @BLK_8X16, align 4
  %552 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %547, i64 %548, i64 %549, i32 %550, i32 %551, i32 1)
  br label %553

553:                                              ; preds = %546, %541
  %554 = load i32, i32* %8, align 4
  %555 = load i32, i32* @SYM1, align 4
  %556 = and i32 %554, %555
  %557 = icmp ne i32 %556, 0
  br i1 %557, label %558, label %567

558:                                              ; preds = %553
  %559 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %560 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %561 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %560, i32 0, i32 1
  %562 = load i8**, i8*** %561, align 8
  %563 = load i64, i64* @MV_FWD_X1, align 8
  %564 = getelementptr inbounds i8*, i8** %562, i64 %563
  %565 = load i32, i32* @BLK_8X16, align 4
  %566 = call i32 @mv_pred_sym(%struct.TYPE_11__* %559, i8** %564, i32 %565)
  br label %567

567:                                              ; preds = %558, %553
  %568 = load i32, i32* %8, align 4
  %569 = load i32, i32* @BWD0, align 4
  %570 = and i32 %568, %569
  %571 = icmp ne i32 %570, 0
  br i1 %571, label %572, label %579

572:                                              ; preds = %567
  %573 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %574 = load i64, i64* @MV_BWD_X0, align 8
  %575 = load i64, i64* @MV_BWD_B3, align 8
  %576 = load i32, i32* @MV_PRED_LEFT, align 4
  %577 = load i32, i32* @BLK_8X16, align 4
  %578 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %573, i64 %574, i64 %575, i32 %576, i32 %577, i32 0)
  br label %579

579:                                              ; preds = %572, %567
  %580 = load i32, i32* %8, align 4
  %581 = load i32, i32* @BWD1, align 4
  %582 = and i32 %580, %581
  %583 = icmp ne i32 %582, 0
  br i1 %583, label %584, label %591

584:                                              ; preds = %579
  %585 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %586 = load i64, i64* @MV_BWD_X1, align 8
  %587 = load i64, i64* @MV_BWD_C2, align 8
  %588 = load i32, i32* @MV_PRED_TOPRIGHT, align 4
  %589 = load i32, i32* @BLK_8X16, align 4
  %590 = call i32 @ff_cavs_mv(%struct.TYPE_11__* %585, i64 %586, i64 %587, i32 %588, i32 %589, i32 0)
  br label %591

591:                                              ; preds = %584, %579
  br label %592

592:                                              ; preds = %591, %514
  br label %593

593:                                              ; preds = %592, %413, %115, %100, %93, %92
  %594 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %595 = load i32, i32* %5, align 4
  %596 = call i32 @ff_cavs_inter(%struct.TYPE_11__* %594, i32 %595)
  %597 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %598 = call i32 @set_intra_mode_default(%struct.TYPE_11__* %597)
  %599 = load i32, i32* %5, align 4
  %600 = icmp ne i32 %599, 132
  br i1 %600, label %601, label %604

601:                                              ; preds = %593
  %602 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %603 = call i32 @decode_residual_inter(%struct.TYPE_11__* %602)
  br label %604

604:                                              ; preds = %601, %593
  %605 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %606 = load i32, i32* %5, align 4
  %607 = call i32 @ff_cavs_filter(%struct.TYPE_11__* %605, i32 %606)
  store i32 0, i32* %3, align 4
  br label %608

608:                                              ; preds = %604, %417
  %609 = load i32, i32* %3, align 4
  ret i32 %609
}

declare dso_local i32 @ff_cavs_init_mb(%struct.TYPE_11__*) #1

declare dso_local i32 @set_mvs(i8**, i32) #1

declare dso_local i32 @ff_cavs_mv(%struct.TYPE_11__*, i64, i64, i32, i32, i32) #1

declare dso_local i32 @mv_pred_direct(%struct.TYPE_11__*, i8**, i32*) #1

declare dso_local i32 @mv_pred_sym(%struct.TYPE_11__*, i8**, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @av_assert2(i32) #1

declare dso_local i32 @ff_cavs_inter(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @set_intra_mode_default(%struct.TYPE_11__*) #1

declare dso_local i32 @decode_residual_inter(%struct.TYPE_11__*) #1

declare dso_local i32 @ff_cavs_filter(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
