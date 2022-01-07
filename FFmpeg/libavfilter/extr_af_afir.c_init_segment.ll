; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_init_segment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_afir.c_init_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__**, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8**, i8**, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@DFT_R2C = common dso_local global i32 0, align 4
@IDFT_C2R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_7__*, i32, i32, i32)* @init_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_segment(%struct.TYPE_9__* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %12, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %19, i64 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @av_calloc(i32 %23, i32 8)
  %25 = bitcast i8* %24 to i8**
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 14
  store i8** %25, i8*** %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %30, i64 0
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @av_calloc(i32 %34, i32 8)
  %36 = bitcast i8* %35 to i8**
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 13
  store i8** %36, i8*** %38, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 14
  %41 = load i8**, i8*** %40, align 8
  %42 = icmp ne i8** %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %5
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 13
  %46 = load i8**, i8*** %45, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43, %5
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = call i32 @AVERROR(i32 %49)
  store i32 %50, i32* %6, align 4
  br label %287

51:                                               ; preds = %43
  %52 = load i32, i32* %11, align 4
  %53 = mul nsw i32 %52, 2
  %54 = add nsw i32 %53, 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i8* @FFALIGN(i32 %62, i32 32)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i8* @FFALIGN(i32 %70, i32 32)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %90, i64 0
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @av_calloc(i32 %94, i32 1)
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 16
  store i8* %95, i8** %97, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %100, i64 0
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i8* @av_calloc(i32 %104, i32 1)
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 15
  store i8* %105, i8** %107, align 8
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 16
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %51
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 15
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %120, label %117

117:                                              ; preds = %112, %51
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = call i32 @AVERROR(i32 %118)
  store i32 %119, i32* %6, align 4
  br label %287

120:                                              ; preds = %112
  store i32 0, i32* %13, align 4
  br label %121

121:                                              ; preds = %175, %120
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %125, i64 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %122, %129
  br i1 %130, label %131, label %178

131:                                              ; preds = %121
  %132 = load i32, i32* %11, align 4
  %133 = mul nsw i32 2, %132
  %134 = call i32 @av_log2(i32 %133)
  %135 = load i32, i32* @DFT_R2C, align 4
  %136 = call i8* @av_rdft_init(i32 %134, i32 %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 14
  %139 = load i8**, i8*** %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %139, i64 %141
  store i8* %136, i8** %142, align 8
  %143 = load i32, i32* %11, align 4
  %144 = mul nsw i32 2, %143
  %145 = call i32 @av_log2(i32 %144)
  %146 = load i32, i32* @IDFT_C2R, align 4
  %147 = call i8* @av_rdft_init(i32 %145, i32 %146)
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 13
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %13, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  store i8* %147, i8** %153, align 8
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 14
  %156 = load i8**, i8*** %155, align 8
  %157 = load i32, i32* %13, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8*, i8** %156, i64 %158
  %160 = load i8*, i8** %159, align 8
  %161 = icmp ne i8* %160, null
  br i1 %161, label %162, label %171

162:                                              ; preds = %131
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 13
  %165 = load i8**, i8*** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8*, i8** %165, i64 %167
  %169 = load i8*, i8** %168, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %174, label %171

171:                                              ; preds = %162, %131
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = call i32 @AVERROR(i32 %172)
  store i32 %173, i32* %6, align 4
  br label %287

174:                                              ; preds = %162
  br label %175

175:                                              ; preds = %174
  %176 = load i32, i32* %13, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %13, align 4
  br label %121

178:                                              ; preds = %121
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %181, i64 0
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %182, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %183, i32 %186)
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 11
  store i8* %187, i8** %189, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 0
  %192 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %192, i64 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = mul nsw i32 %197, %200
  %202 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %194, i32 %201)
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 10
  store i8* %202, i8** %204, align 8
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %207, i64 0
  %209 = load %struct.TYPE_10__*, %struct.TYPE_10__** %208, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %209, i32 %212)
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 12
  store i8* %213, i8** %215, align 8
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %218, i64 1
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** %219, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 4
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = mul nsw i32 %223, %226
  %228 = mul nsw i32 %227, 2
  %229 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %220, i32 %228)
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 9
  store i8* %229, i8** %231, align 8
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %234, i64 0
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 5
  %239 = load i32, i32* %238, align 4
  %240 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %236, i32 %239)
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 8
  store i8* %240, i8** %242, align 8
  %243 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %245, i64 0
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = call i8* @ff_get_audio_buffer(%struct.TYPE_10__* %247, i32 %250)
  %252 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 7
  store i8* %251, i8** %253, align 8
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 12
  %256 = load i8*, i8** %255, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %283

258:                                              ; preds = %178
  %259 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 11
  %261 = load i8*, i8** %260, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %283

263:                                              ; preds = %258
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 10
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %283

268:                                              ; preds = %263
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 9
  %271 = load i8*, i8** %270, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %283

273:                                              ; preds = %268
  %274 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %275 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %274, i32 0, i32 8
  %276 = load i8*, i8** %275, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 7
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %286, label %283

283:                                              ; preds = %278, %273, %268, %263, %258, %178
  %284 = load i32, i32* @ENOMEM, align 4
  %285 = call i32 @AVERROR(i32 %284)
  store i32 %285, i32* %6, align 4
  br label %287

286:                                              ; preds = %278
  store i32 0, i32* %6, align 4
  br label %287

287:                                              ; preds = %286, %283, %171, %117, %48
  %288 = load i32, i32* %6, align 4
  ret i32 %288
}

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i8* @av_rdft_init(i32, i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i8* @ff_get_audio_buffer(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
