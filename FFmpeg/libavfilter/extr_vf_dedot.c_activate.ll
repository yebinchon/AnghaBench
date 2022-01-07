; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dedot.c_activate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_dedot.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_20__*, i32, %struct.TYPE_22__*, i32**, i32** }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_23__*, i32, %struct.TYPE_21__*, i32*, i32)* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_21__* }
%struct.TYPE_22__ = type { i32, i32, i32, %struct.TYPE_21__**, i32*, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@FFERROR_NOT_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @activate(%struct.TYPE_23__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_21__, align 8
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %3, align 8
  %14 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %14, i32 0, i32 4
  %16 = load i32**, i32*** %15, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %4, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 3
  %21 = load i32**, i32*** %20, align 8
  %22 = getelementptr inbounds i32*, i32** %21, i64 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %5, align 8
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  store %struct.TYPE_22__* %26, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  store i32 0, i32* %10, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @FF_FILTER_FORWARD_STATUS_BACK(i32* %27, i32* %28)
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @ff_inlink_consume_frame(i32* %35, %struct.TYPE_21__** %7)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %2, align 4
  br label %382

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %44 = icmp ne %struct.TYPE_21__* %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %302

50:                                               ; preds = %45, %42
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %11, align 8
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %52 = icmp ne %struct.TYPE_21__* %51, null
  br i1 %52, label %53, label %82

53:                                               ; preds = %50
  store i32 2, i32* %12, align 4
  br label %54

54:                                               ; preds = %77, %53
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 5
  br i1 %56, label %57, label %80

57:                                               ; preds = %54
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  %60 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %60, i64 %62
  %64 = load %struct.TYPE_21__*, %struct.TYPE_21__** %63, align 8
  %65 = icmp ne %struct.TYPE_21__* %64, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %57
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %68 = call i8* @av_frame_clone(%struct.TYPE_21__* %67)
  %69 = bitcast i8* %68 to %struct.TYPE_21__*
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %72, i64 %74
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %75, align 8
  br label %76

76:                                               ; preds = %66, %57
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %54

80:                                               ; preds = %54
  %81 = call i32 @av_frame_free(%struct.TYPE_21__** %7)
  br label %106

82:                                               ; preds = %50
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 3
  %85 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %85, i64 3
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %86, align 8
  %88 = icmp ne %struct.TYPE_21__* %87, null
  br i1 %88, label %89, label %105

89:                                               ; preds = %82
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %96, i64 3
  %98 = load %struct.TYPE_21__*, %struct.TYPE_21__** %97, align 8
  %99 = call i8* @av_frame_clone(%struct.TYPE_21__* %98)
  %100 = bitcast i8* %99 to %struct.TYPE_21__*
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 3
  %103 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %103, i64 4
  store %struct.TYPE_21__* %100, %struct.TYPE_21__** %104, align 8
  br label %105

105:                                              ; preds = %89, %82
  br label %106

106:                                              ; preds = %105, %80
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %109, i64 0
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %110, align 8
  %112 = icmp ne %struct.TYPE_21__* %111, null
  br i1 %112, label %113, label %244

113:                                              ; preds = %106
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 3
  %116 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %116, i64 1
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %117, align 8
  %119 = icmp ne %struct.TYPE_21__* %118, null
  br i1 %119, label %120, label %244

120:                                              ; preds = %113
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 3
  %123 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %123, i64 2
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %124, align 8
  %126 = icmp ne %struct.TYPE_21__* %125, null
  br i1 %126, label %127, label %244

127:                                              ; preds = %120
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %130, i64 3
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %131, align 8
  %133 = icmp ne %struct.TYPE_21__* %132, null
  br i1 %133, label %134, label %244

134:                                              ; preds = %127
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %137, i64 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %138, align 8
  %140 = icmp ne %struct.TYPE_21__* %139, null
  br i1 %140, label %141, label %244

141:                                              ; preds = %134
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 3
  %144 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %144, i64 2
  %146 = load %struct.TYPE_21__*, %struct.TYPE_21__** %145, align 8
  %147 = call i8* @av_frame_clone(%struct.TYPE_21__* %146)
  %148 = bitcast i8* %147 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %148, %struct.TYPE_21__** %11, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %150 = icmp ne %struct.TYPE_21__* %149, null
  br i1 %150, label %151, label %236

151:                                              ; preds = %141
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %236, label %156

156:                                              ; preds = %151
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %158 = call i32 @av_frame_make_writable(%struct.TYPE_21__* %157)
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %10, align 4
  %160 = icmp sge i32 %159, 0
  br i1 %160, label %161, label %235

161:                                              ; preds = %156
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, 1
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %161
  %168 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 0
  %172 = load i32 (%struct.TYPE_23__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_21__*, i32*, i32)** %171, align 8
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %184 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_23__* %183)
  %185 = call i32 @FFMIN(i32 %182, i32 %184)
  %186 = call i32 %172(%struct.TYPE_23__* %173, i32 %176, %struct.TYPE_21__* %177, i32* null, i32 %185)
  br label %187

187:                                              ; preds = %167, %161
  %188 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, 2
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %234

193:                                              ; preds = %187
  %194 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 2
  store %struct.TYPE_21__* %194, %struct.TYPE_21__** %195, align 8
  %196 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store i32 1, i32* %196, align 8
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 0
  %201 = load i32 (%struct.TYPE_23__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_21__*, i32*, i32)** %200, align 8
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %212 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_23__* %211)
  %213 = call i32 @FFMIN(i32 %210, i32 %212)
  %214 = call i32 %201(%struct.TYPE_23__* %202, i32 %205, %struct.TYPE_21__* %13, i32* null, i32 %213)
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 0
  store i32 2, i32* %215, align 8
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 0
  %220 = load i32 (%struct.TYPE_23__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_23__*, i32, %struct.TYPE_21__*, i32*, i32)** %219, align 8
  %221 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %222, i32 0, i32 5
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 4
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %231 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_23__* %230)
  %232 = call i32 @FFMIN(i32 %229, i32 %231)
  %233 = call i32 %220(%struct.TYPE_23__* %221, i32 %224, %struct.TYPE_21__* %13, i32* null, i32 %232)
  br label %234

234:                                              ; preds = %193, %187
  br label %235

235:                                              ; preds = %234, %156
  br label %243

236:                                              ; preds = %151, %141
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %238 = icmp ne %struct.TYPE_21__* %237, null
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* @ENOMEM, align 4
  %241 = call i32 @AVERROR(i32 %240)
  store i32 %241, i32* %10, align 4
  br label %242

242:                                              ; preds = %239, %236
  br label %243

243:                                              ; preds = %242, %235
  br label %244

244:                                              ; preds = %243, %134, %127, %120, %113, %106
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %247, i64 0
  %249 = call i32 @av_frame_free(%struct.TYPE_21__** %248)
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %250, i32 0, i32 3
  %252 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %252, i64 1
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %253, align 8
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 3
  %257 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %257, i64 0
  store %struct.TYPE_21__* %254, %struct.TYPE_21__** %258, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 3
  %261 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %261, i64 2
  %263 = load %struct.TYPE_21__*, %struct.TYPE_21__** %262, align 8
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %266, i64 1
  store %struct.TYPE_21__* %263, %struct.TYPE_21__** %267, align 8
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 3
  %270 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %270, i64 3
  %272 = load %struct.TYPE_21__*, %struct.TYPE_21__** %271, align 8
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 3
  %275 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %275, i64 2
  store %struct.TYPE_21__* %272, %struct.TYPE_21__** %276, align 8
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 3
  %279 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %279, i64 4
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %280, align 8
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %284, i64 3
  store %struct.TYPE_21__* %281, %struct.TYPE_21__** %285, align 8
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 3
  %288 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %288, i64 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %289, align 8
  %290 = load i32, i32* %10, align 4
  %291 = icmp slt i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %244
  %293 = load i32, i32* %10, align 4
  store i32 %293, i32* %2, align 4
  br label %382

294:                                              ; preds = %244
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %296 = icmp ne %struct.TYPE_21__* %295, null
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = load i32*, i32** %5, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %300 = call i32 @ff_filter_frame(i32* %298, %struct.TYPE_21__* %299)
  store i32 %300, i32* %2, align 4
  br label %382

301:                                              ; preds = %294
  br label %302

302:                                              ; preds = %301, %45
  %303 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %327

307:                                              ; preds = %302
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = icmp sle i32 %310, 0
  br i1 %311, label %312, label %323

312:                                              ; preds = %307
  %313 = load i32*, i32** %5, align 8
  %314 = load i32, i32* @AVERROR_EOF, align 4
  %315 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %317, i64 2
  %319 = load %struct.TYPE_21__*, %struct.TYPE_21__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = call i32 @ff_outlink_set_status(i32* %313, i32 %314, i32 %321)
  br label %326

323:                                              ; preds = %307
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %325 = call i32 @ff_filter_set_ready(%struct.TYPE_23__* %324, i32 10)
  br label %326

326:                                              ; preds = %323, %312
  store i32 0, i32* %2, align 4
  br label %382

327:                                              ; preds = %302
  %328 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %329 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %377, label %332

332:                                              ; preds = %327
  %333 = load i32*, i32** %4, align 8
  %334 = call i64 @ff_inlink_acknowledge_status(i32* %333, i32* %9, i32* %8)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %377

336:                                              ; preds = %332
  %337 = load i32, i32* %9, align 4
  %338 = load i32, i32* @AVERROR_EOF, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %376

340:                                              ; preds = %336
  %341 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %342 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %341, i32 0, i32 0
  store i32 1, i32* %342, align 8
  %343 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 3
  %345 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %345, i64 0
  %347 = load %struct.TYPE_21__*, %struct.TYPE_21__** %346, align 8
  %348 = icmp ne %struct.TYPE_21__* %347, null
  %349 = xor i1 %348, true
  %350 = xor i1 %349, true
  %351 = zext i1 %350 to i32
  %352 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 3
  %354 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %353, align 8
  %355 = getelementptr inbounds %struct.TYPE_21__*, %struct.TYPE_21__** %354, i64 1
  %356 = load %struct.TYPE_21__*, %struct.TYPE_21__** %355, align 8
  %357 = icmp ne %struct.TYPE_21__* %356, null
  %358 = xor i1 %357, true
  %359 = xor i1 %358, true
  %360 = zext i1 %359 to i32
  %361 = add nsw i32 %351, %360
  %362 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %363 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %362, i32 0, i32 1
  store i32 %361, i32* %363, align 4
  %364 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = icmp sle i32 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %340
  %369 = load i32*, i32** %5, align 8
  %370 = load i32, i32* @AVERROR_EOF, align 4
  %371 = load i32, i32* %8, align 4
  %372 = call i32 @ff_outlink_set_status(i32* %369, i32 %370, i32 %371)
  store i32 0, i32* %2, align 4
  br label %382

373:                                              ; preds = %340
  %374 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %375 = call i32 @ff_filter_set_ready(%struct.TYPE_23__* %374, i32 10)
  store i32 0, i32* %2, align 4
  br label %382

376:                                              ; preds = %336
  br label %377

377:                                              ; preds = %376, %332, %327
  %378 = load i32*, i32** %5, align 8
  %379 = load i32*, i32** %4, align 8
  %380 = call i32 @FF_FILTER_FORWARD_WANTED(i32* %378, i32* %379)
  %381 = load i32, i32* @FFERROR_NOT_READY, align 4
  store i32 %381, i32* %2, align 4
  br label %382

382:                                              ; preds = %377, %373, %368, %326, %297, %292, %39
  %383 = load i32, i32* %2, align 4
  ret i32 %383
}

declare dso_local i32 @FF_FILTER_FORWARD_STATUS_BACK(i32*, i32*) #1

declare dso_local i32 @ff_inlink_consume_frame(i32*, %struct.TYPE_21__**) #1

declare dso_local i8* @av_frame_clone(%struct.TYPE_21__*) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_21__**) #1

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_21__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_23__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_filter_frame(i32*, %struct.TYPE_21__*) #1

declare dso_local i32 @ff_outlink_set_status(i32*, i32, i32) #1

declare dso_local i32 @ff_filter_set_ready(%struct.TYPE_23__*, i32) #1

declare dso_local i64 @ff_inlink_acknowledge_status(i32*, i32*, i32*) #1

declare dso_local i32 @FF_FILTER_FORWARD_WANTED(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
