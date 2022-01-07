; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_decvobsub.c_CropSubtitle.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_decvobsub.c_CropSubtitle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_15__*, %struct.TYPE_17__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i64, i32, i32, i32 }

@__const.CropSubtitle.crop = private unnamed_addr constant [4 x i32] [i32 -1, i32 -1, i32 -1, i32 -1], align 16
@AV_PIX_FMT_YUVA420P = common dso_local global i32 0, align 4
@HB_FRAME_SUBTITLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_19__* (%struct.TYPE_18__*, i32*)* @CropSubtitle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_19__* @CropSubtitle(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %6, align 8
  %21 = bitcast [4 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([4 x i32]* @__const.CropSubtitle.crop to i8*), i64 16, i1 false)
  %22 = load i32*, i32** %5, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = mul nsw i32 %25, %28
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %22, i64 %30
  store i32* %31, i32** %9, align 8
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %54, %2
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %57

38:                                               ; preds = %32
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %41, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %40, i64 %46
  %48 = call i32 @LineIsTransparent(%struct.TYPE_18__* %39, i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %7, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %51, i32* %52, align 16
  br label %57

53:                                               ; preds = %38
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %32

57:                                               ; preds = %50, %32
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %3, align 8
  br label %385

62:                                               ; preds = %57
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %86, %62
  %68 = load i32, i32* %7, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %89

70:                                               ; preds = %67
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %73, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %72, i64 %78
  %80 = call i32 @LineIsTransparent(%struct.TYPE_18__* %71, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %7, align 4
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %83, i32* %84, align 4
  br label %89

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %7, align 4
  br label %67

89:                                               ; preds = %82, %67
  store i32 0, i32* %7, align 4
  br label %90

90:                                               ; preds = %108, %89
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %90
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @ColumnIsTransparent(%struct.TYPE_18__* %97, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = load i32, i32* %7, align 4
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %105, i32* %106, align 8
  br label %111

107:                                              ; preds = %96
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %90

111:                                              ; preds = %104, %90
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sub nsw i32 %114, 1
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %131, %111
  %117 = load i32, i32* %7, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %116
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = call i32 @ColumnIsTransparent(%struct.TYPE_18__* %120, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %119
  %128 = load i32, i32* %7, align 4
  %129 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %128, i32* %129, align 4
  br label %134

130:                                              ; preds = %119
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %7, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %7, align 4
  br label %116

134:                                              ; preds = %127, %116
  %135 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %136, %138
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %144 = load i32, i32* %143, align 16
  %145 = sub nsw i32 %142, %144
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* @AV_PIX_FMT_YUVA420P, align 4
  %148 = load i32, i32* %10, align 4
  %149 = load i32, i32* %11, align 4
  %150 = call %struct.TYPE_19__* @hb_frame_buffer_init(i32 %147, i32 %148, i32 %149)
  store %struct.TYPE_19__* %150, %struct.TYPE_19__** %12, align 8
  %151 = load i32, i32* @HB_FRAME_SUBTITLE, align 4
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 3
  store i32 %151, i32* %154, align 4
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 2
  store i32 %157, i32* %160, align 8
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  store i32 %169, i32* %172, align 8
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = add nsw i64 %175, %178
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 3
  store i64 %179, i64* %182, align 8
  %183 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %187 = load i32, i32* %186, align 16
  %188 = sext i32 %187 to i64
  %189 = add nsw i64 %185, %188
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 2
  store i64 %189, i64* %192, align 8
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  store i32 %197, i32* %200, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  store i32 %205, i32* %208, align 8
  %209 = load i32*, i32** %5, align 8
  %210 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %211 = load i32, i32* %210, align 16
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = mul nsw i32 %211, %214
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %209, i64 %216
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %217, i64 %220
  store i32* %221, i32** %13, align 8
  %222 = load i32*, i32** %13, align 8
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %225, %228
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %222, i64 %230
  store i32* %231, i32** %14, align 8
  %232 = load i32*, i32** %14, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = mul nsw i32 %235, %238
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %232, i64 %240
  store i32* %241, i32** %15, align 8
  %242 = load i32*, i32** %15, align 8
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = mul nsw i32 %245, %248
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %242, i64 %250
  store i32* %251, i32** %16, align 8
  store i32 0, i32* %7, align 4
  br label %252

252:                                              ; preds = %380, %134
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* %11, align 4
  %255 = icmp slt i32 %253, %254
  br i1 %255, label %256, label %383

256:                                              ; preds = %252
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i64 0
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %264 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %263, i32 0, i32 0
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i64 0
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %7, align 4
  %270 = mul nsw i32 %268, %269
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32, i32* %262, i64 %271
  store i32* %272, i32** %17, align 8
  %273 = load i32*, i32** %17, align 8
  %274 = load i32*, i32** %13, align 8
  %275 = load i32, i32* %10, align 4
  %276 = call i32 @memcpy(i32* %273, i32* %274, i32 %275)
  %277 = load i32, i32* %7, align 4
  %278 = and i32 %277, 1
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %335

280:                                              ; preds = %256
  %281 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %281, i32 0, i32 0
  %283 = load %struct.TYPE_16__*, %struct.TYPE_16__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i64 1
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i64 1
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = ashr i32 %293, 1
  %295 = mul nsw i32 %292, %294
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i32, i32* %286, i64 %296
  store i32* %297, i32** %17, align 8
  %298 = load i32*, i32** %17, align 8
  %299 = load i32*, i32** %15, align 8
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_16__*, %struct.TYPE_16__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i64 1
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = load i32, i32* %10, align 4
  %307 = call i32 @resample(i32* %298, i32* %299, i32 %305, i32 %306)
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i32 0, i32 0
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %309, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i64 2
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 1
  %313 = load i32*, i32** %312, align 8
  %314 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %315 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_16__*, %struct.TYPE_16__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %316, i64 2
  %318 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load i32, i32* %7, align 4
  %321 = ashr i32 %320, 1
  %322 = mul nsw i32 %319, %321
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %313, i64 %323
  store i32* %324, i32** %17, align 8
  %325 = load i32*, i32** %17, align 8
  %326 = load i32*, i32** %16, align 8
  %327 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_16__*, %struct.TYPE_16__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %329, i64 2
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 2
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = call i32 @resample(i32* %325, i32* %326, i32 %332, i32 %333)
  br label %335

335:                                              ; preds = %280, %256
  %336 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %336, i32 0, i32 0
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i64 3
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i32 0, i32 1
  %341 = load i32*, i32** %340, align 8
  %342 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i64 3
  %346 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* %7, align 4
  %349 = mul nsw i32 %347, %348
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %341, i64 %350
  store i32* %351, i32** %17, align 8
  %352 = load i32*, i32** %17, align 8
  %353 = load i32*, i32** %14, align 8
  %354 = load i32, i32* %10, align 4
  %355 = call i32 @memcpy(i32* %352, i32* %353, i32 %354)
  %356 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32*, i32** %13, align 8
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds i32, i32* %359, i64 %360
  store i32* %361, i32** %13, align 8
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32*, i32** %14, align 8
  %366 = sext i32 %364 to i64
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  store i32* %367, i32** %14, align 8
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = load i32*, i32** %15, align 8
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  store i32* %373, i32** %15, align 8
  %374 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 8
  %377 = load i32*, i32** %16, align 8
  %378 = sext i32 %376 to i64
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  store i32* %379, i32** %16, align 8
  br label %380

380:                                              ; preds = %335
  %381 = load i32, i32* %7, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %7, align 4
  br label %252

383:                                              ; preds = %252
  %384 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %384, %struct.TYPE_19__** %3, align 8
  br label %385

385:                                              ; preds = %383, %61
  %386 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  ret %struct.TYPE_19__* %386
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @LineIsTransparent(%struct.TYPE_18__*, i32*) #2

declare dso_local i32 @ColumnIsTransparent(%struct.TYPE_18__*, i32*) #2

declare dso_local %struct.TYPE_19__* @hb_frame_buffer_init(i32, i32, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @resample(i32*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
