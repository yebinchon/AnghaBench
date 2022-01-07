; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1dec.c_read_extra_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ffv1dec.c_read_extra_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32***, i32, i32, i8*, i8*, %struct.TYPE_11__*, i32*, i64, i64, i64, i64*, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i64* }

@CONTEXT_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid version in global header\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AC_RANGE_CUSTOM_TAB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"chroma shift parameters %d %d are invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"slice count invalid\0A\00", align 1
@MAX_QUANT_TABLES = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"quant table count %d is invalid\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"read_quant_table error\0A\00", align 1
@AV_CRC_32_IEEE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"CRC mismatch %X!\0A\00", align 1
@FF_DEBUG_PICT_INFO = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [127 x i8] c"global: ver:%d.%d, coder:%d, colorspace: %d bpr:%d chroma:%d(%d:%d), alpha:%d slices:%dx%d qtabs:%d ec:%d intra:%d CRC:0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @read_extra_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_extra_header(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 21
  store %struct.TYPE_12__* %17, %struct.TYPE_12__** %4, align 8
  %18 = load i32, i32* @CONTEXT_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @CONTEXT_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = mul nuw i64 32, %23
  %25 = alloca i32, i64 %24, align 16
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %26 = mul nuw i64 32, %23
  %27 = mul nuw i64 4, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @memset(i32* %25, i32 128, i32 %28)
  %30 = mul nuw i64 4, %19
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i32* %21, i32 128, i32 %31)
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 15
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 15
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ff_init_range_decoder(%struct.TYPE_12__* %33, i32 %38, i32 %43)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = call i32 @ff_build_rac_states(%struct.TYPE_12__* %45, double 0x41A999999999999A, i32 248)
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %48 = call i32 @get_symbol(%struct.TYPE_12__* %47, i32* %21, i32 0)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %62

55:                                               ; preds = %1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 15
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %57, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %58, i32 %59, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %527

62:                                               ; preds = %1
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 2
  br i1 %66, label %67, label %83

67:                                               ; preds = %62
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 4
  store i32 %71, i32* %69, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = call i32 @get_symbol(%struct.TYPE_12__* %72, i32* %21, i32 0)
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %527

82:                                               ; preds = %67
  br label %83

83:                                               ; preds = %82, %62
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = call i32 @get_symbol(%struct.TYPE_12__* %84, i32* %21, i32 0)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @AC_RANGE_CUSTOM_TAB, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %119

93:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  br label %94

94:                                               ; preds = %115, %93
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 256
  br i1 %96, label %97, label %118

97:                                               ; preds = %94
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %99 = call i32 @get_symbol(%struct.TYPE_12__* %98, i32* %21, i32 1)
  %100 = sext i32 %99 to i64
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %100, %107
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 20
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  store i64 %108, i64* %114, align 8
  br label %115

115:                                              ; preds = %97
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %94

118:                                              ; preds = %94
  br label %119

119:                                              ; preds = %118, %83
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %121 = call i32 @get_symbol(%struct.TYPE_12__* %120, i32* %21, i32 0)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %125 = call i32 @get_symbol(%struct.TYPE_12__* %124, i32* %21, i32 0)
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 15
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %131 = call i8* @get_rac(%struct.TYPE_12__* %130, i32* %21)
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 14
  store i8* %131, i8** %133, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %135 = call i32 @get_symbol(%struct.TYPE_12__* %134, i32* %21, i32 0)
  %136 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %139 = call i32 @get_symbol(%struct.TYPE_12__* %138, i32* %21, i32 0)
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %143 = call i8* @get_rac(%struct.TYPE_12__* %142, i32* %21)
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 13
  store i8* %143, i8** %145, align 8
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 14
  %148 = load i8*, i8** %147, align 8
  %149 = icmp ne i8* %148, null
  br i1 %149, label %155, label %150

150:                                              ; preds = %119
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %153, 4
  br label %155

155:                                              ; preds = %150, %119
  %156 = phi i1 [ true, %119 ], [ %154, %150 ]
  %157 = zext i1 %156 to i32
  %158 = add nsw i32 1, %157
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 13
  %161 = load i8*, i8** %160, align 8
  %162 = sext i32 %158 to i64
  %163 = getelementptr i8, i8* %161, i64 %162
  %164 = ptrtoint i8* %163 to i64
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 19
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %168 = call i32 @get_symbol(%struct.TYPE_12__* %167, i32* %21, i32 0)
  %169 = add nsw i32 1, %168
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 6
  store i32 %169, i32* %171, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %173 = call i32 @get_symbol(%struct.TYPE_12__* %172, i32* %21, i32 0)
  %174 = add nsw i32 1, %173
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 4
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 8
  %180 = icmp ugt i32 %179, 4
  br i1 %180, label %186, label %181

181:                                              ; preds = %155
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 4
  %185 = icmp ugt i32 %184, 4
  br i1 %185, label %186, label %199

186:                                              ; preds = %181, %155
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 15
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = load i32, i32* @AV_LOG_ERROR, align 4
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %189, i32 %190, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %193, i32 %196)
  %198 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %198, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %527

199:                                              ; preds = %181
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %203, i32 0, i32 18
  %205 = load i64, i64* %204, align 8
  %206 = trunc i64 %205 to i32
  %207 = icmp ugt i32 %202, %206
  br i1 %207, label %227, label %208

208:                                              ; preds = %199
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 6
  %211 = load i32, i32* %210, align 8
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 7
  %216 = load i32, i32* %215, align 4
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 17
  %219 = load i64, i64* %218, align 8
  %220 = trunc i64 %219 to i32
  %221 = icmp ugt i32 %216, %220
  br i1 %221, label %227, label %222

222:                                              ; preds = %213
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 7
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %234, label %227

227:                                              ; preds = %222, %213, %208, %199
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 15
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = load i32, i32* @AV_LOG_ERROR, align 4
  %232 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %230, i32 %231, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %233 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %233, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %527

234:                                              ; preds = %222
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %236 = call i32 @get_symbol(%struct.TYPE_12__* %235, i32* %21, i32 0)
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 8
  store i32 %236, i32* %238, align 8
  %239 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 8
  %242 = load i64, i64* @MAX_QUANT_TABLES, align 8
  %243 = trunc i64 %242 to i32
  %244 = icmp ugt i32 %241, %243
  br i1 %244, label %250, label %245

245:                                              ; preds = %234
  %246 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %247 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %246, i32 0, i32 8
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %262, label %250

250:                                              ; preds = %245, %234
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 15
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %252, align 8
  %254 = load i32, i32* @AV_LOG_ERROR, align 4
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 8
  %257 = load i32, i32* %256, align 8
  %258 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %253, i32 %254, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %257)
  %259 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %259, i32 0, i32 8
  store i32 0, i32* %260, align 8
  %261 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %261, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %527

262:                                              ; preds = %245
  store i32 0, i32* %7, align 4
  br label %263

263:                                              ; preds = %301, %262
  %264 = load i32, i32* %7, align 4
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 8
  %267 = load i32, i32* %266, align 8
  %268 = icmp slt i32 %264, %267
  br i1 %268, label %269, label %304

269:                                              ; preds = %263
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 16
  %273 = load i32*, i32** %272, align 8
  %274 = load i32, i32* %7, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %273, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @read_quant_tables(%struct.TYPE_12__* %270, i32 %277)
  %279 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 9
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %7, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  store i32 %278, i32* %284, align 4
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 9
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %7, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32, i32* %287, i64 %289
  %291 = load i32, i32* %290, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %300

293:                                              ; preds = %269
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 15
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %295, align 8
  %297 = load i32, i32* @AV_LOG_ERROR, align 4
  %298 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %296, i32 %297, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %299 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %299, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %527

300:                                              ; preds = %269
  br label %301

301:                                              ; preds = %300
  %302 = load i32, i32* %7, align 4
  %303 = add nsw i32 %302, 1
  store i32 %303, i32* %7, align 4
  br label %263

304:                                              ; preds = %263
  %305 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %306 = call i32 @ff_ffv1_allocate_initial_states(%struct.TYPE_13__* %305)
  store i32 %306, i32* %10, align 4
  %307 = icmp slt i32 %306, 0
  br i1 %307, label %308, label %310

308:                                              ; preds = %304
  %309 = load i32, i32* %10, align 4
  store i32 %309, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %527

310:                                              ; preds = %304
  store i32 0, i32* %7, align 4
  br label %311

311:                                              ; preds = %392, %310
  %312 = load i32, i32* %7, align 4
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 8
  %315 = load i32, i32* %314, align 8
  %316 = icmp slt i32 %312, %315
  br i1 %316, label %317, label %395

317:                                              ; preds = %311
  %318 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %319 = call i8* @get_rac(%struct.TYPE_12__* %318, i32* %21)
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %391

321:                                              ; preds = %317
  store i32 0, i32* %8, align 4
  br label %322

322:                                              ; preds = %387, %321
  %323 = load i32, i32* %8, align 4
  %324 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %324, i32 0, i32 9
  %326 = load i32*, i32** %325, align 8
  %327 = load i32, i32* %7, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i32, i32* %326, i64 %328
  %330 = load i32, i32* %329, align 4
  %331 = icmp slt i32 %323, %330
  br i1 %331, label %332, label %390

332:                                              ; preds = %322
  store i32 0, i32* %9, align 4
  br label %333

333:                                              ; preds = %383, %332
  %334 = load i32, i32* %9, align 4
  %335 = load i32, i32* @CONTEXT_SIZE, align 4
  %336 = icmp slt i32 %334, %335
  br i1 %336, label %337, label %386

337:                                              ; preds = %333
  %338 = load i32, i32* %8, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %357

340:                                              ; preds = %337
  %341 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %341, i32 0, i32 10
  %343 = load i32***, i32**** %342, align 8
  %344 = load i32, i32* %7, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32**, i32*** %343, i64 %345
  %347 = load i32**, i32*** %346, align 8
  %348 = load i32, i32* %8, align 4
  %349 = sub nsw i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32*, i32** %347, i64 %350
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %9, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  %356 = load i32, i32* %355, align 4
  br label %358

357:                                              ; preds = %337
  br label %358

358:                                              ; preds = %357, %340
  %359 = phi i32 [ %356, %340 ], [ 128, %357 ]
  store i32 %359, i32* %14, align 4
  %360 = load i32, i32* %14, align 4
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %362 = load i32, i32* %9, align 4
  %363 = sext i32 %362 to i64
  %364 = mul nsw i64 %363, %23
  %365 = getelementptr inbounds i32, i32* %25, i64 %364
  %366 = call i32 @get_symbol(%struct.TYPE_12__* %361, i32* %365, i32 1)
  %367 = add nsw i32 %360, %366
  %368 = and i32 %367, 255
  %369 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 10
  %371 = load i32***, i32**** %370, align 8
  %372 = load i32, i32* %7, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32**, i32*** %371, i64 %373
  %375 = load i32**, i32*** %374, align 8
  %376 = load i32, i32* %8, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32*, i32** %375, i64 %377
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %9, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  store i32 %368, i32* %382, align 4
  br label %383

383:                                              ; preds = %358
  %384 = load i32, i32* %9, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %9, align 4
  br label %333

386:                                              ; preds = %333
  br label %387

387:                                              ; preds = %386
  %388 = load i32, i32* %8, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %8, align 4
  br label %322

390:                                              ; preds = %322
  br label %391

391:                                              ; preds = %390, %317
  br label %392

392:                                              ; preds = %391
  %393 = load i32, i32* %7, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %7, align 4
  br label %311

395:                                              ; preds = %311
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = icmp sgt i32 %398, 2
  br i1 %399, label %400, label %415

400:                                              ; preds = %395
  %401 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %402 = call i32 @get_symbol(%struct.TYPE_12__* %401, i32* %21, i32 0)
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %404 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %403, i32 0, i32 11
  store i32 %402, i32* %404, align 8
  %405 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = icmp sgt i32 %407, 2
  br i1 %408, label %409, label %414

409:                                              ; preds = %400
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %411 = call i32 @get_symbol(%struct.TYPE_12__* %410, i32* %21, i32 0)
  %412 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %412, i32 0, i32 12
  store i32 %411, i32* %413, align 4
  br label %414

414:                                              ; preds = %409, %400
  br label %415

415:                                              ; preds = %414, %395
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = icmp sgt i32 %418, 2
  br i1 %419, label %420, label %466

420:                                              ; preds = %415
  %421 = load i32, i32* @AV_CRC_32_IEEE, align 4
  %422 = call i32 @av_crc_get_table(i32 %421)
  %423 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %423, i32 0, i32 15
  %425 = load %struct.TYPE_11__*, %struct.TYPE_11__** %424, align 8
  %426 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %425, i32 0, i32 3
  %427 = load i32, i32* %426, align 4
  %428 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 15
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 0
  %432 = load i32, i32* %431, align 4
  %433 = call i32 @av_crc(i32 %422, i32 0, i32 %427, i32 %432)
  store i32 %433, i32* %15, align 4
  %434 = load i32, i32* %15, align 4
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %443, label %436

436:                                              ; preds = %420
  %437 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %437, i32 0, i32 15
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 4
  %442 = icmp slt i32 %441, 4
  br i1 %442, label %443, label %451

443:                                              ; preds = %436, %420
  %444 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %444, i32 0, i32 15
  %446 = load %struct.TYPE_11__*, %struct.TYPE_11__** %445, align 8
  %447 = load i32, i32* @AV_LOG_ERROR, align 4
  %448 = load i32, i32* %15, align 4
  %449 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %446, i32 %447, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %448)
  %450 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %450, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %527

451:                                              ; preds = %436
  %452 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %452, i32 0, i32 15
  %454 = load %struct.TYPE_11__*, %struct.TYPE_11__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %454, i32 0, i32 3
  %456 = load i32, i32* %455, align 4
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %458 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %457, i32 0, i32 15
  %459 = load %struct.TYPE_11__*, %struct.TYPE_11__** %458, align 8
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = add nsw i32 %456, %461
  %463 = sub nsw i32 %462, 4
  %464 = sext i32 %463 to i64
  %465 = call i32 @AV_RB32(i64 %464)
  store i32 %465, i32* %12, align 4
  br label %466

466:                                              ; preds = %451, %415
  %467 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %468 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %467, i32 0, i32 15
  %469 = load %struct.TYPE_11__*, %struct.TYPE_11__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* @FF_DEBUG_PICT_INFO, align 4
  %473 = and i32 %471, %472
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %475, label %526

475:                                              ; preds = %466
  %476 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %476, i32 0, i32 15
  %478 = load %struct.TYPE_11__*, %struct.TYPE_11__** %477, align 8
  %479 = load i32, i32* @AV_LOG_DEBUG, align 4
  %480 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %481 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %486, i32 0, i32 2
  %488 = load i32, i32* %487, align 8
  %489 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %490 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %489, i32 0, i32 3
  %491 = load i32, i32* %490, align 4
  %492 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %492, i32 0, i32 15
  %494 = load %struct.TYPE_11__*, %struct.TYPE_11__** %493, align 8
  %495 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %498 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %497, i32 0, i32 14
  %499 = load i8*, i8** %498, align 8
  %500 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %500, i32 0, i32 4
  %502 = load i32, i32* %501, align 8
  %503 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %504 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %503, i32 0, i32 5
  %505 = load i32, i32* %504, align 4
  %506 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %507 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %506, i32 0, i32 13
  %508 = load i8*, i8** %507, align 8
  %509 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %510 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %509, i32 0, i32 6
  %511 = load i32, i32* %510, align 8
  %512 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 7
  %514 = load i32, i32* %513, align 4
  %515 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %516 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %515, i32 0, i32 8
  %517 = load i32, i32* %516, align 8
  %518 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %519 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %518, i32 0, i32 11
  %520 = load i32, i32* %519, align 8
  %521 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %522 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %521, i32 0, i32 12
  %523 = load i32, i32* %522, align 4
  %524 = load i32, i32* %12, align 4
  %525 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @av_log(%struct.TYPE_11__* %478, i32 %479, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.6, i64 0, i64 0), i32 %482, i32 %485, i32 %488, i32 %491, i32 %496, i8* %499, i32 %502, i32 %505, i8* %508, i32 %511, i32 %514, i32 %517, i32 %520, i32 %523, i32 %524)
  br label %526

526:                                              ; preds = %475, %466
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %527

527:                                              ; preds = %526, %443, %308, %293, %250, %227, %186, %80, %55
  %528 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %528)
  %529 = load i32, i32* %2, align 4
  ret i32 %529
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @ff_init_range_decoder(%struct.TYPE_12__*, i32, i32) #2

declare dso_local i32 @ff_build_rac_states(%struct.TYPE_12__*, double, i32) #2

declare dso_local i32 @get_symbol(%struct.TYPE_12__*, i32*, i32) #2

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, ...) #2

declare dso_local i8* @get_rac(%struct.TYPE_12__*, i32*) #2

declare dso_local i32 @read_quant_tables(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @ff_ffv1_allocate_initial_states(%struct.TYPE_13__*) #2

declare dso_local i32 @av_crc(i32, i32, i32, i32) #2

declare dso_local i32 @av_crc_get_table(i32) #2

declare dso_local i32 @AV_RB32(i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
