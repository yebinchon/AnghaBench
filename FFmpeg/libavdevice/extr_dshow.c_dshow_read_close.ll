; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_read_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_dshow.c_dshow_read_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.dshow_ctx* }
%struct.dshow_ctx = type { %struct.TYPE_5__*, i64*, i64, i32*, i32*, i32**, i64*, i64*, i64*, i64, i64, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_5__* }

@S_OK = common dso_local global i32 0, align 4
@VideoDevice = common dso_local global i64 0, align 8
@AudioDevice = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @dshow_read_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dshow_read_close(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.dshow_ctx*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.dshow_ctx*, %struct.dshow_ctx** %10, align 8
  store %struct.dshow_ctx* %11, %struct.dshow_ctx** %3, align 8
  %12 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %12, i32 0, i32 11
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %18 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %17, i32 0, i32 11
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @IMediaControl_Stop(i64 %19)
  %21 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %21, i32 0, i32 11
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @IMediaControl_Release(i64 %23)
  br label %25

25:                                               ; preds = %16, %1
  %26 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %26, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @IMediaEvent_Release(i64 %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %78

40:                                               ; preds = %35
  %41 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @IGraphBuilder_EnumFilters(i64 %43, i32** %5)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @S_OK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %40
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @IEnumFilters_Reset(i32* %49)
  br label %51

51:                                               ; preds = %67, %48
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @IEnumFilters_Next(i32* %52, i32 1, i32** %7, i32* null)
  %54 = load i32, i32* @S_OK, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %58 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %57, i32 0, i32 9
  %59 = load i64, i64* %58, align 8
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @IGraphBuilder_RemoveFilter(i64 %59, i32* %60)
  %62 = load i32, i32* @S_OK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @IEnumFilters_Reset(i32* %65)
  br label %67

67:                                               ; preds = %64, %56
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @IBaseFilter_Release(i32* %68)
  br label %51

70:                                               ; preds = %51
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @IEnumFilters_Release(i32* %71)
  br label %73

73:                                               ; preds = %70, %40
  %74 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %75 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @IGraphBuilder_Release(i64 %76)
  br label %78

78:                                               ; preds = %73, %35
  %79 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %80 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %79, i32 0, i32 8
  %81 = load i64*, i64** %80, align 8
  %82 = load i64, i64* @VideoDevice, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %87, i32 0, i32 8
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @VideoDevice, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @libAVPin_Release(i64 %92)
  br label %94

94:                                               ; preds = %86, %78
  %95 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %96 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %95, i32 0, i32 8
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @AudioDevice, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %103, i32 0, i32 8
  %105 = load i64*, i64** %104, align 8
  %106 = load i64, i64* @AudioDevice, align 8
  %107 = getelementptr inbounds i64, i64* %105, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @libAVPin_Release(i64 %108)
  br label %110

110:                                              ; preds = %102, %94
  %111 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %112 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %111, i32 0, i32 7
  %113 = load i64*, i64** %112, align 8
  %114 = load i64, i64* @VideoDevice, align 8
  %115 = getelementptr inbounds i64, i64* %113, i64 %114
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %120 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %119, i32 0, i32 7
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* @VideoDevice, align 8
  %123 = getelementptr inbounds i64, i64* %121, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @libAVFilter_Release(i64 %124)
  br label %126

126:                                              ; preds = %118, %110
  %127 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %128 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %127, i32 0, i32 7
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* @AudioDevice, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %126
  %135 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %136 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %135, i32 0, i32 7
  %137 = load i64*, i64** %136, align 8
  %138 = load i64, i64* @AudioDevice, align 8
  %139 = getelementptr inbounds i64, i64* %137, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @libAVFilter_Release(i64 %140)
  br label %142

142:                                              ; preds = %134, %126
  %143 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %143, i32 0, i32 6
  %145 = load i64*, i64** %144, align 8
  %146 = load i64, i64* @VideoDevice, align 8
  %147 = getelementptr inbounds i64, i64* %145, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %142
  %151 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %152 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %151, i32 0, i32 6
  %153 = load i64*, i64** %152, align 8
  %154 = load i64, i64* @VideoDevice, align 8
  %155 = getelementptr inbounds i64, i64* %153, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @IPin_Release(i64 %156)
  br label %158

158:                                              ; preds = %150, %142
  %159 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %160 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %159, i32 0, i32 6
  %161 = load i64*, i64** %160, align 8
  %162 = load i64, i64* @AudioDevice, align 8
  %163 = getelementptr inbounds i64, i64* %161, i64 %162
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %158
  %167 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %168 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %167, i32 0, i32 6
  %169 = load i64*, i64** %168, align 8
  %170 = load i64, i64* @AudioDevice, align 8
  %171 = getelementptr inbounds i64, i64* %169, i64 %170
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @IPin_Release(i64 %172)
  br label %174

174:                                              ; preds = %166, %158
  %175 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %176 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %175, i32 0, i32 5
  %177 = load i32**, i32*** %176, align 8
  %178 = load i64, i64* @VideoDevice, align 8
  %179 = getelementptr inbounds i32*, i32** %177, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %190

182:                                              ; preds = %174
  %183 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %184 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %183, i32 0, i32 5
  %185 = load i32**, i32*** %184, align 8
  %186 = load i64, i64* @VideoDevice, align 8
  %187 = getelementptr inbounds i32*, i32** %185, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @IBaseFilter_Release(i32* %188)
  br label %190

190:                                              ; preds = %182, %174
  %191 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %192 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %191, i32 0, i32 5
  %193 = load i32**, i32*** %192, align 8
  %194 = load i64, i64* @AudioDevice, align 8
  %195 = getelementptr inbounds i32*, i32** %193, i64 %194
  %196 = load i32*, i32** %195, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %206

198:                                              ; preds = %190
  %199 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %200 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %199, i32 0, i32 5
  %201 = load i32**, i32*** %200, align 8
  %202 = load i64, i64* @AudioDevice, align 8
  %203 = getelementptr inbounds i32*, i32** %201, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = call i32 @IBaseFilter_Release(i32* %204)
  br label %206

206:                                              ; preds = %198, %190
  %207 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %208 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %207, i32 0, i32 4
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = call i32 @av_freep(i32* %210)
  %212 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %213 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %212, i32 0, i32 4
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 1
  %216 = call i32 @av_freep(i32* %215)
  %217 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %218 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %217, i32 0, i32 3
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = call i32 @av_freep(i32* %220)
  %222 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %223 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %222, i32 0, i32 3
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = call i32 @av_freep(i32* %225)
  %227 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %228 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %206
  %232 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %233 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @CloseHandle(i64 %234)
  br label %236

236:                                              ; preds = %231, %206
  %237 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %238 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %237, i32 0, i32 1
  %239 = load i64*, i64** %238, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 0
  %241 = load i64, i64* %240, align 8
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %236
  %244 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %245 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %244, i32 0, i32 1
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 0
  %248 = load i64, i64* %247, align 8
  %249 = call i32 @CloseHandle(i64 %248)
  br label %250

250:                                              ; preds = %243, %236
  %251 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %252 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %251, i32 0, i32 1
  %253 = load i64*, i64** %252, align 8
  %254 = getelementptr inbounds i64, i64* %253, i64 1
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %264

257:                                              ; preds = %250
  %258 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %259 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %258, i32 0, i32 1
  %260 = load i64*, i64** %259, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 1
  %262 = load i64, i64* %261, align 8
  %263 = call i32 @CloseHandle(i64 %262)
  br label %264

264:                                              ; preds = %257, %250
  %265 = load %struct.dshow_ctx*, %struct.dshow_ctx** %3, align 8
  %266 = getelementptr inbounds %struct.dshow_ctx, %struct.dshow_ctx* %265, i32 0, i32 0
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  store %struct.TYPE_5__* %267, %struct.TYPE_5__** %4, align 8
  br label %268

268:                                              ; preds = %271, %264
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %270 = icmp ne %struct.TYPE_5__* %269, null
  br i1 %270, label %271, label %281

271:                                              ; preds = %268
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %273, align 8
  store %struct.TYPE_5__* %274, %struct.TYPE_5__** %8, align 8
  %275 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 0
  %277 = call i32 @av_packet_unref(i32* %276)
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %279 = call i32 @av_free(%struct.TYPE_5__* %278)
  %280 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  store %struct.TYPE_5__* %280, %struct.TYPE_5__** %4, align 8
  br label %268

281:                                              ; preds = %268
  %282 = call i32 (...) @CoUninitialize()
  ret i32 0
}

declare dso_local i32 @IMediaControl_Stop(i64) #1

declare dso_local i32 @IMediaControl_Release(i64) #1

declare dso_local i32 @IMediaEvent_Release(i64) #1

declare dso_local i32 @IGraphBuilder_EnumFilters(i64, i32**) #1

declare dso_local i32 @IEnumFilters_Reset(i32*) #1

declare dso_local i32 @IEnumFilters_Next(i32*, i32, i32**, i32*) #1

declare dso_local i32 @IGraphBuilder_RemoveFilter(i64, i32*) #1

declare dso_local i32 @IBaseFilter_Release(i32*) #1

declare dso_local i32 @IEnumFilters_Release(i32*) #1

declare dso_local i32 @IGraphBuilder_Release(i64) #1

declare dso_local i32 @libAVPin_Release(i64) #1

declare dso_local i32 @libAVFilter_Release(i64) #1

declare dso_local i32 @IPin_Release(i64) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @CloseHandle(i64) #1

declare dso_local i32 @av_packet_unref(i32*) #1

declare dso_local i32 @av_free(%struct.TYPE_5__*) #1

declare dso_local i32 @CoUninitialize(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
