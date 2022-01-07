; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_config_input.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_bm3d.c_config_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i8*, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i8**, i8**, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@MAX_NB_THREADS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DCT_II = common dso_local global i32 0, align 4
@DCT_III = common dso_local global i32 0, align 4
@FINAL = common dso_local global i64 0, align 8
@do_output = common dso_local global i32 0, align 4
@do_block_ssd = common dso_local global i32 0, align 4
@get_block_row = common dso_local global i32 0, align 4
@do_output16 = common dso_local global i32 0, align 4
@do_block_ssd16 = common dso_local global i32 0, align 4
@get_block_row16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @config_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_13__* @av_pix_fmt_desc_get(i32 %12)
  store %struct.TYPE_13__* %13, %struct.TYPE_13__** %4, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %5, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %6, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %21 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_15__* %20)
  %22 = load i32, i32* @MAX_NB_THREADS, align 4
  %23 = call i32 @FFMIN(i32 %21, i32 %22)
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @av_pix_fmt_count_planes(i32 %28)
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 16
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i8* @AV_CEIL_RSHIFT(i8* %49, i32 %52)
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 13
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 2
  store i8* %53, i8** %57, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 13
  %60 = load i8**, i8*** %59, align 8
  %61 = getelementptr inbounds i8*, i8** %60, i64 1
  store i8* %53, i8** %61, align 8
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 13
  %67 = load i8**, i8*** %66, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i64 3
  store i8* %64, i8** %68, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 13
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  store i8* %64, i8** %72, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @AV_CEIL_RSHIFT(i8* %75, i32 %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 14
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 2
  store i8* %79, i8** %83, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 14
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 1
  store i8* %79, i8** %87, align 8
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 14
  %93 = load i8**, i8*** %92, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i64 3
  store i8* %90, i8** %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 14
  %97 = load i8**, i8*** %96, align 8
  %98 = getelementptr inbounds i8*, i8** %97, i64 0
  store i8* %90, i8** %98, align 8
  store i32 4, i32* %8, align 4
  br label %99

99:                                               ; preds = %107, %1
  %100 = load i32, i32* %8, align 4
  %101 = shl i32 1, %100
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %99

110:                                              ; preds = %99
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* %8, align 4
  %115 = shl i32 1, %114
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %420, %110
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %423

124:                                              ; preds = %118
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 15
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = load i32, i32* %7, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 %129
  store %struct.TYPE_11__* %130, %struct.TYPE_11__** %9, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 14
  %133 = load i8**, i8*** %132, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @FFALIGN(i8* %135, i32 %138)
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 13
  %142 = load i8**, i8*** %141, align 8
  %143 = getelementptr inbounds i8*, i8** %142, i64 0
  %144 = load i8*, i8** %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @FFALIGN(i8* %144, i32 %147)
  %149 = mul nsw i32 %139, %148
  %150 = call i8* @av_calloc(i32 %149, i32 4)
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 14
  store i8* %150, i8** %152, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 14
  %155 = load i8**, i8*** %154, align 8
  %156 = getelementptr inbounds i8*, i8** %155, i64 0
  %157 = load i8*, i8** %156, align 8
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @FFALIGN(i8* %157, i32 %160)
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 13
  %164 = load i8**, i8*** %163, align 8
  %165 = getelementptr inbounds i8*, i8** %164, i64 0
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 6
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @FFALIGN(i8* %166, i32 %169)
  %171 = mul nsw i32 %161, %170
  %172 = call i8* @av_calloc(i32 %171, i32 4)
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 13
  store i8* %172, i8** %174, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 14
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %179, label %184

179:                                              ; preds = %124
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 13
  %182 = load i8*, i8** %181, align 8
  %183 = icmp ne i8* %182, null
  br i1 %183, label %187, label %184

184:                                              ; preds = %179, %124
  %185 = load i32, i32* @ENOMEM, align 4
  %186 = call i32 @AVERROR(i32 %185)
  store i32 %186, i32* %2, align 4
  br label %448

187:                                              ; preds = %179
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @av_log2(i32 %190)
  %192 = load i32, i32* @DCT_II, align 4
  %193 = call i8* @av_dct_init(i32 %191, i32 %192)
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 12
  store i8* %193, i8** %195, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @av_log2(i32 %198)
  %200 = load i32, i32* @DCT_III, align 4
  %201 = call i8* @av_dct_init(i32 %199, i32 %200)
  %202 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %203 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %202, i32 0, i32 11
  store i8* %201, i8** %203, align 8
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 12
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %208, label %213

208:                                              ; preds = %187
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 11
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %216, label %213

213:                                              ; preds = %208, %187
  %214 = load i32, i32* @ENOMEM, align 4
  %215 = call i32 @AVERROR(i32 %214)
  store i32 %215, i32* %2, align 4
  br label %448

216:                                              ; preds = %208
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 8
  %220 = icmp sgt i32 %219, 1
  br i1 %220, label %221, label %249

221:                                              ; preds = %216
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @DCT_II, align 4
  %226 = call i8* @av_dct_init(i32 %224, i32 %225)
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 10
  store i8* %226, i8** %228, align 8
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @DCT_III, align 4
  %233 = call i8* @av_dct_init(i32 %231, i32 %232)
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 9
  store i8* %233, i8** %235, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 10
  %238 = load i8*, i8** %237, align 8
  %239 = icmp ne i8* %238, null
  br i1 %239, label %240, label %245

240:                                              ; preds = %221
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 9
  %243 = load i8*, i8** %242, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %248, label %245

245:                                              ; preds = %240, %221
  %246 = load i32, i32* @ENOMEM, align 4
  %247 = call i32 @AVERROR(i32 %246)
  store i32 %247, i32* %2, align 4
  br label %448

248:                                              ; preds = %240
  br label %249

249:                                              ; preds = %248, %216
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 6
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = mul nsw i32 %252, %255
  %257 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 %256, %259
  %261 = call i8* @av_calloc(i32 %260, i32 1)
  %262 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 6
  store i8* %261, i8** %263, align 8
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 8
  %270 = mul nsw i32 %266, %269
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 5
  %273 = load i32, i32* %272, align 4
  %274 = mul nsw i32 %270, %273
  %275 = call i8* @av_calloc(i32 %274, i32 1)
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 5
  store i8* %275, i8** %277, align 8
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = mul nsw i32 %280, %283
  %285 = call i8* @av_calloc(i32 %284, i32 1)
  %286 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %287 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i32 0, i32 8
  store i8* %285, i8** %287, align 8
  %288 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 8
  %294 = mul nsw i32 %290, %293
  %295 = call i8* @av_calloc(i32 %294, i32 1)
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 7
  store i8* %295, i8** %297, align 8
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 8
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %317

302:                                              ; preds = %249
  %303 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %304 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %303, i32 0, i32 7
  %305 = load i8*, i8** %304, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %317

307:                                              ; preds = %302
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 6
  %310 = load i8*, i8** %309, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %312, label %317

312:                                              ; preds = %307
  %313 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 5
  %315 = load i8*, i8** %314, align 8
  %316 = icmp ne i8* %315, null
  br i1 %316, label %320, label %317

317:                                              ; preds = %312, %307, %302, %249
  %318 = load i32, i32* @ENOMEM, align 4
  %319 = call i32 @AVERROR(i32 %318)
  store i32 %319, i32* %2, align 4
  br label %448

320:                                              ; preds = %312
  %321 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %321, i32 0, i32 7
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @FINAL, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %398

326:                                              ; preds = %320
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 6
  %329 = load i32, i32* %328, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 6
  %332 = load i32, i32* %331, align 8
  %333 = mul nsw i32 %329, %332
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 4
  %337 = mul nsw i32 %333, %336
  %338 = call i8* @av_calloc(i32 %337, i32 1)
  %339 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %339, i32 0, i32 2
  store i8* %338, i8** %340, align 8
  %341 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %341, i32 0, i32 6
  %343 = load i32, i32* %342, align 8
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 6
  %346 = load i32, i32* %345, align 8
  %347 = mul nsw i32 %343, %346
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 5
  %350 = load i32, i32* %349, align 4
  %351 = mul nsw i32 %347, %350
  %352 = call i8* @av_calloc(i32 %351, i32 1)
  %353 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %354 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %353, i32 0, i32 1
  store i8* %352, i8** %354, align 8
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 6
  %360 = load i32, i32* %359, align 8
  %361 = mul nsw i32 %357, %360
  %362 = call i8* @av_calloc(i32 %361, i32 1)
  %363 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %364 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %363, i32 0, i32 4
  store i8* %362, i8** %364, align 8
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 6
  %367 = load i32, i32* %366, align 8
  %368 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %368, i32 0, i32 6
  %370 = load i32, i32* %369, align 8
  %371 = mul nsw i32 %367, %370
  %372 = call i8* @av_calloc(i32 %371, i32 1)
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %374 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i32 0, i32 3
  store i8* %372, i8** %374, align 8
  %375 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 4
  %377 = load i8*, i8** %376, align 8
  %378 = icmp ne i8* %377, null
  br i1 %378, label %379, label %394

379:                                              ; preds = %326
  %380 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %380, i32 0, i32 3
  %382 = load i8*, i8** %381, align 8
  %383 = icmp ne i8* %382, null
  br i1 %383, label %384, label %394

384:                                              ; preds = %379
  %385 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 2
  %387 = load i8*, i8** %386, align 8
  %388 = icmp ne i8* %387, null
  br i1 %388, label %389, label %394

389:                                              ; preds = %384
  %390 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %391 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %390, i32 0, i32 1
  %392 = load i8*, i8** %391, align 8
  %393 = icmp ne i8* %392, null
  br i1 %393, label %397, label %394

394:                                              ; preds = %389, %384, %379, %326
  %395 = load i32, i32* @ENOMEM, align 4
  %396 = call i32 @AVERROR(i32 %395)
  store i32 %396, i32* %2, align 4
  br label %448

397:                                              ; preds = %389
  br label %398

398:                                              ; preds = %397, %320
  %399 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 8
  %401 = load i32, i32* %400, align 8
  %402 = mul nsw i32 2, %401
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 9
  %405 = load i32, i32* %404, align 4
  %406 = sdiv i32 %402, %405
  %407 = add nsw i32 %406, 1
  %408 = call i32 @SQR(i32 %407)
  %409 = call i8* @av_calloc(i32 %408, i32 1)
  %410 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 0
  store i8* %409, i8** %411, align 8
  %412 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 0
  %414 = load i8*, i8** %413, align 8
  %415 = icmp ne i8* %414, null
  br i1 %415, label %419, label %416

416:                                              ; preds = %398
  %417 = load i32, i32* @ENOMEM, align 4
  %418 = call i32 @AVERROR(i32 %417)
  store i32 %418, i32* %2, align 4
  br label %448

419:                                              ; preds = %398
  br label %420

420:                                              ; preds = %419
  %421 = load i32, i32* %7, align 4
  %422 = add nsw i32 %421, 1
  store i32 %422, i32* %7, align 4
  br label %118

423:                                              ; preds = %118
  %424 = load i32, i32* @do_output, align 4
  %425 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %425, i32 0, i32 12
  store i32 %424, i32* %426, align 8
  %427 = load i32, i32* @do_block_ssd, align 4
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 11
  store i32 %427, i32* %429, align 4
  %430 = load i32, i32* @get_block_row, align 4
  %431 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %431, i32 0, i32 10
  store i32 %430, i32* %432, align 8
  %433 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = icmp sgt i32 %435, 8
  br i1 %436, label %437, label %447

437:                                              ; preds = %423
  %438 = load i32, i32* @do_output16, align 4
  %439 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %439, i32 0, i32 12
  store i32 %438, i32* %440, align 8
  %441 = load i32, i32* @do_block_ssd16, align 4
  %442 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %443 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %442, i32 0, i32 11
  store i32 %441, i32* %443, align 4
  %444 = load i32, i32* @get_block_row16, align 4
  %445 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %446 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %445, i32 0, i32 10
  store i32 %444, i32* %446, align 8
  br label %447

447:                                              ; preds = %437, %423
  store i32 0, i32* %2, align 4
  br label %448

448:                                              ; preds = %447, %416, %394, %317, %245, %213, %184
  %449 = load i32, i32* %2, align 4
  ret i32 %449
}

declare dso_local %struct.TYPE_13__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_15__*) #1

declare dso_local i32 @av_pix_fmt_count_planes(i32) #1

declare dso_local i8* @AV_CEIL_RSHIFT(i8*, i32) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @FFALIGN(i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @av_dct_init(i32, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @SQR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
