; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_sample_table.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/mp4/extr_mp4_reader.c_mp4_read_sample_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__*, i8* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32, i32)* @mp4_read_sample_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mp4_read_sample_table(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_12__* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 129
  br i1 %14, label %15, label %29

15:                                               ; preds = %5
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 11
  store i8* %23, i8** %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %6, align 8
  br label %279

29:                                               ; preds = %15, %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 132
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i64 134
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  store i32 134, i32* %10, align 4
  br label %41

41:                                               ; preds = %40, %32, %29
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @mp4_seek_sample_table(i32* %45, %struct.TYPE_11__* %46, %struct.TYPE_12__* %47, i32 %48)
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %44
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %6, align 8
  br label %279

61:                                               ; preds = %44
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32, i32* %10, align 4
  switch i32 %63, label %265 [
    i32 129, label %64
    i32 128, label %74
    i32 133, label %105
    i32 131, label %136
    i32 132, label %215
    i32 134, label %215
    i32 130, label %255
  ]

64:                                               ; preds = %62
  %65 = load i32*, i32** %7, align 8
  %66 = call i8* @_READ_U32(i32* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 11
  store i8* %66, i8** %68, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = call i8* @STREAM_STATUS(i32* %69)
  %71 = ptrtoint i8* %70 to i64
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  br label %266

74:                                               ; preds = %62
  %75 = load i32*, i32** %7, align 8
  %76 = call i8* @_READ_U32(i32* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 9
  store i8* %76, i8** %78, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i8* @_READ_U32(i32* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 10
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = call i8* @STREAM_STATUS(i32* %83)
  %85 = ptrtoint i8* %84 to i64
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %74
  br label %266

94:                                               ; preds = %74
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 9
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** @VC_CONTAINER_ERROR_CORRUPTED, align 8
  %101 = ptrtoint i8* %100 to i64
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %99, %94
  br label %266

105:                                              ; preds = %62
  %106 = load i32*, i32** %7, align 8
  %107 = call i8* @_READ_U32(i32* %106)
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 7
  store i8* %107, i8** %109, align 8
  %110 = load i32*, i32** %7, align 8
  %111 = call i8* @_READ_U32(i32* %110)
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 8
  store i8* %111, i8** %113, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i8* @STREAM_STATUS(i32* %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %105
  br label %266

125:                                              ; preds = %105
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 7
  %128 = load i8*, i8** %127, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** @VC_CONTAINER_ERROR_CORRUPTED, align 8
  %132 = ptrtoint i8* %131 to i64
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %130, %125
  br label %266

136:                                              ; preds = %62
  %137 = load i32*, i32** %7, align 8
  %138 = call i8* @_READ_U32(i32* %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 8
  %142 = load i32*, i32** %7, align 8
  %143 = call i8* @_READ_U32(i32* %142)
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 4
  store i8* %143, i8** %145, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @_SKIP_U32(i32* %146)
  %148 = load i32*, i32** %7, align 8
  %149 = call i8* @STREAM_STATUS(i32* %148)
  %150 = ptrtoint i8* %149 to i64
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %157 = icmp ne i64 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %136
  br label %266

159:                                              ; preds = %136
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = load i32, i32* %10, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 1
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 131
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %168, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %159
  %177 = load i32*, i32** %7, align 8
  %178 = call i8* @_READ_U32(i32* %177)
  %179 = ptrtoint i8* %178 to i32
  store i32 %179, i32* %12, align 4
  br label %181

180:                                              ; preds = %159
  store i32 -1, i32* %12, align 4
  br label %181

181:                                              ; preds = %180, %176
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %181
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 4
  %189 = load i8*, i8** %188, align 8
  %190 = icmp ne i8* %189, null
  br i1 %190, label %191, label %197

191:                                              ; preds = %186
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %12, align 4
  %196 = icmp sge i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %191, %186, %181
  %198 = load i8*, i8** @VC_CONTAINER_ERROR_CORRUPTED, align 8
  %199 = ptrtoint i8* %198 to i64
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  br label %266

202:                                              ; preds = %191
  %203 = load i32, i32* %12, align 4
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %203, %206
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  store i32 %207, i32* %209, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 4
  %212 = load i8*, i8** %211, align 8
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 5
  store i8* %212, i8** %214, align 8
  br label %266

215:                                              ; preds = %62, %62
  %216 = load i32, i32* %10, align 4
  %217 = icmp eq i32 %216, 132
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %7, align 8
  %220 = call i8* @_READ_U32(i32* %219)
  br label %224

221:                                              ; preds = %215
  %222 = load i32*, i32** %7, align 8
  %223 = call i8* @_READ_U64(i32* %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = phi i8* [ %220, %218 ], [ %223, %221 ]
  %226 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %227 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %226, i32 0, i32 6
  store i8* %225, i8** %227, align 8
  %228 = load i32*, i32** %7, align 8
  %229 = call i8* @STREAM_STATUS(i32* %228)
  %230 = ptrtoint i8* %229 to i64
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 0
  store i64 %230, i64* %232, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %237 = icmp ne i64 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %224
  br label %266

239:                                              ; preds = %224
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 6
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  %245 = load i8*, i8** @VC_CONTAINER_ERROR_CORRUPTED, align 8
  %246 = ptrtoint i8* %245 to i64
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 0
  store i64 %246, i64* %248, align 8
  br label %249

249:                                              ; preds = %244, %239
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 4
  %252 = load i8*, i8** %251, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 5
  store i8* %252, i8** %254, align 8
  br label %266

255:                                              ; preds = %62
  %256 = load i32*, i32** %7, align 8
  %257 = call i8* @_READ_U32(i32* %256)
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 3
  store i8* %257, i8** %259, align 8
  %260 = load i32*, i32** %7, align 8
  %261 = call i8* @STREAM_STATUS(i32* %260)
  %262 = ptrtoint i8* %261 to i64
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %263, i32 0, i32 0
  store i64 %262, i64* %264, align 8
  br label %266

265:                                              ; preds = %62
  br label %266

266:                                              ; preds = %265, %255, %249, %238, %202, %197, %158, %135, %124, %104, %93, %64
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_10__*, %struct.TYPE_10__** %268, align 8
  %270 = load i32, i32* %10, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %274, 1
  store i64 %275, i64* %273, align 8
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  store i64 %278, i64* %6, align 8
  br label %279

279:                                              ; preds = %266, %57, %20
  %280 = load i64, i64* %6, align 8
  ret i64 %280
}

declare dso_local i64 @mp4_seek_sample_table(i32*, %struct.TYPE_11__*, %struct.TYPE_12__*, i32) #1

declare dso_local i8* @_READ_U32(i32*) #1

declare dso_local i8* @STREAM_STATUS(i32*) #1

declare dso_local i32 @_SKIP_U32(i32*) #1

declare dso_local i8* @_READ_U64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
