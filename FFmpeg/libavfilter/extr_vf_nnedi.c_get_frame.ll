; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_get_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_nnedi.c_get_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_22__**, %struct.TYPE_19__* }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32*, i32*, i32, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32)*, %struct.TYPE_18__*, %struct.TYPE_20__, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i32*, i32*, i64 }
%struct.TYPE_20__ = type { i32*, i32*, i32*, i8*, i8*, i32*, i32*, i32*, i64*, i32* }
%struct.TYPE_21__ = type { i32, i32*, i32*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32)* @get_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_frame(%struct.TYPE_23__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_19__* %20, %struct.TYPE_19__** %6, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_22__**, %struct.TYPE_22__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__*, %struct.TYPE_22__** %23, i64 0
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %24, align 8
  store %struct.TYPE_22__* %25, %struct.TYPE_22__** %7, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 10
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  store %struct.TYPE_21__* %28, %struct.TYPE_21__** %8, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* %10, align 4
  %36 = sub nsw i32 %35, 2
  store i32 %36, i32* %10, align 4
  br label %44

37:                                               ; preds = %2
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 2
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %37
  br label %44

44:                                               ; preds = %43, %34
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %44
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %82

60:                                               ; preds = %54, %49, %44
  %61 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 1, i32* %10, align 4
  br label %81

76:                                               ; preds = %70, %65, %60
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %76, %75
  br label %82

82:                                               ; preds = %81, %59
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %92, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, -2
  br i1 %91, label %92, label %104

92:                                               ; preds = %87, %82
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 0
  %98 = zext i1 %97 to i32
  store i32 %98, i32* %12, align 4
  br label %103

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 1
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %12, align 4
  br label %103

103:                                              ; preds = %99, %95
  br label %106

104:                                              ; preds = %87
  %105 = load i32, i32* %10, align 4
  store i32 %105, i32* %12, align 4
  br label %106

106:                                              ; preds = %104, %103
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_22__* %107, i32 %110, i32 %113)
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 8
  store %struct.TYPE_18__* %114, %struct.TYPE_18__** %116, align 8
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 8
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = icmp ne %struct.TYPE_18__* %119, null
  br i1 %120, label %124, label %121

121:                                              ; preds = %106
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = call i32 @AVERROR(i32 %122)
  store i32 %123, i32* %3, align 4
  br label %433

124:                                              ; preds = %106
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 8
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %126, align 8
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %129 = call i32 @av_frame_copy_props(%struct.TYPE_18__* %127, %struct.TYPE_21__* %128)
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 2
  store i64 0, i64* %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 9
  store %struct.TYPE_20__* %135, %struct.TYPE_20__** %9, align 8
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %368, %124
  %137 = load i32, i32* %13, align 4
  %138 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %371

142:                                              ; preds = %136
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %13, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %14, align 4
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %152, i64 %154
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %15, align 4
  store i32 16, i32* %16, align 4
  store i32 10, i32* %17, align 4
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %13, align 4
  %161 = shl i32 1, %160
  %162 = and i32 %159, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %212, label %164

164:                                              ; preds = %142
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %13, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %13, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i32 0, i32 2
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %185, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %13, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %13, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @av_image_copy_plane(i32 %173, i32 %182, i32 %189, i32 %196, i32 %203, i32 %210)
  br label %368

212:                                              ; preds = %142
  %213 = load i32, i32* %15, align 4
  %214 = add nsw i32 %213, 64
  %215 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  store i32 %214, i32* %220, align 4
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, 12
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %13, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  store i32 %222, i32* %228, align 4
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %13, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, 10
  %237 = call i32 @modnpf(i32 %236, i32 16)
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 9
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32 %237, i32* %243, align 4
  %244 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 8
  %246 = load i64*, i64** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64, i64* %246, i64 %248
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %286, label %252

252:                                              ; preds = %212
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 9
  %255 = load i32*, i32** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %255, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %260, i32 0, i32 1
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* %13, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %262, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = call i64 @av_malloc_array(i32 %259, i32 %266)
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 8
  %270 = load i64*, i64** %269, align 8
  %271 = load i32, i32* %13, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i64, i64* %270, i64 %272
  store i64 %267, i64* %273, align 8
  %274 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %274, i32 0, i32 8
  %276 = load i64*, i64** %275, align 8
  %277 = load i32, i32* %13, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64, i64* %276, i64 %278
  %280 = load i64, i64* %279, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %285, label %282

282:                                              ; preds = %252
  %283 = load i32, i32* @ENOMEM, align 4
  %284 = call i32 @AVERROR(i32 %283)
  store i32 %284, i32* %3, align 4
  br label %433

285:                                              ; preds = %252
  br label %286

286:                                              ; preds = %285, %212
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %287, i32 0, i32 8
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 1
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %13, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 7
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  store i32 %295, i32* %301, align 4
  %302 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %302, i32 0, i32 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 0
  %306 = load i32*, i32** %305, align 8
  %307 = load i32, i32* %13, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %306, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %312 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %311, i32 0, i32 6
  %313 = load i32*, i32** %312, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i32, i32* %313, i64 %315
  store i32 %310, i32* %316, align 4
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 5
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %13, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %346, label %325

325:                                              ; preds = %286
  %326 = load i32, i32* %14, align 4
  %327 = call i32 @av_calloc(i32 %326, i32 64)
  %328 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %328, i32 0, i32 5
  %330 = load i32*, i32** %329, align 8
  %331 = load i32, i32* %13, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32, i32* %330, i64 %332
  store i32 %327, i32* %333, align 4
  %334 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %335 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %334, i32 0, i32 5
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %345, label %342

342:                                              ; preds = %325
  %343 = load i32, i32* @ENOMEM, align 4
  %344 = call i32 @AVERROR(i32 %343)
  store i32 %344, i32* %3, align 4
  br label %433

345:                                              ; preds = %325
  br label %360

346:                                              ; preds = %286
  %347 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %348 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %347, i32 0, i32 5
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* %14, align 4
  %355 = sext i32 %354 to i64
  %356 = mul i64 %355, 4
  %357 = mul i64 %356, 16
  %358 = trunc i64 %357 to i32
  %359 = call i32 @memset(i32 %353, i32 0, i32 %358)
  br label %360

360:                                              ; preds = %346, %345
  %361 = load i32, i32* %12, align 4
  %362 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %362, i32 0, i32 2
  %364 = load i32*, i32** %363, align 8
  %365 = load i32, i32* %13, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i32, i32* %364, i64 %366
  store i32 %361, i32* %367, align 4
  br label %368

368:                                              ; preds = %360, %164
  %369 = load i32, i32* %13, align 4
  %370 = add nsw i32 %369, 1
  store i32 %370, i32* %13, align 4
  br label %136

371:                                              ; preds = %136
  %372 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %373 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %372, i32 0, i32 4
  %374 = load i8*, i8** %373, align 8
  %375 = icmp ne i8* %374, null
  br i1 %375, label %388, label %376

376:                                              ; preds = %371
  %377 = call i8* @av_malloc(i64 2048)
  %378 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %379 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %378, i32 0, i32 4
  store i8* %377, i8** %379, align 8
  %380 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %381 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %380, i32 0, i32 4
  %382 = load i8*, i8** %381, align 8
  %383 = icmp ne i8* %382, null
  br i1 %383, label %387, label %384

384:                                              ; preds = %376
  %385 = load i32, i32* @ENOMEM, align 4
  %386 = call i32 @AVERROR(i32 %385)
  store i32 %386, i32* %3, align 4
  br label %433

387:                                              ; preds = %376
  br label %388

388:                                              ; preds = %387, %371
  %389 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %390 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %389, i32 0, i32 3
  %391 = load i8*, i8** %390, align 8
  %392 = icmp ne i8* %391, null
  br i1 %392, label %412, label %393

393:                                              ; preds = %388
  %394 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %395 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %394, i32 0, i32 0
  %396 = load i32*, i32** %395, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 0
  %398 = load i32, i32* %397, align 4
  %399 = call i64 @FFMAX(i32 %398, i32 2048)
  store i64 %399, i64* %11, align 8
  %400 = load i64, i64* %11, align 8
  %401 = call i8* @av_malloc(i64 %400)
  %402 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %403 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %402, i32 0, i32 3
  store i8* %401, i8** %403, align 8
  %404 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %405 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %404, i32 0, i32 3
  %406 = load i8*, i8** %405, align 8
  %407 = icmp ne i8* %406, null
  br i1 %407, label %411, label %408

408:                                              ; preds = %393
  %409 = load i32, i32* @ENOMEM, align 4
  %410 = call i32 @AVERROR(i32 %409)
  store i32 %410, i32* %3, align 4
  br label %433

411:                                              ; preds = %393
  br label %412

412:                                              ; preds = %411, %388
  %413 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %413, i32 0, i32 7
  %415 = load i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_21__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32)** %414, align 8
  %416 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %417 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %418 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %419 = load i32, i32* %12, align 4
  %420 = call i32 %415(%struct.TYPE_21__* %416, %struct.TYPE_20__* %417, %struct.TYPE_19__* %418, i32 %419)
  %421 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %422 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %421, i32 0, i32 6
  %423 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)** %422, align 8
  %424 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %425 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %426 = call i32 %423(%struct.TYPE_19__* %424, %struct.TYPE_20__* %425)
  %427 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %427, i32 0, i32 5
  %429 = load i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)*, i32 (%struct.TYPE_19__*, %struct.TYPE_20__*)** %428, align 8
  %430 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %431 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %432 = call i32 %429(%struct.TYPE_19__* %430, %struct.TYPE_20__* %431)
  store i32 0, i32* %3, align 4
  br label %433

433:                                              ; preds = %412, %408, %384, %342, %282, %121
  %434 = load i32, i32* %3, align 4
  ret i32 %434
}

declare dso_local %struct.TYPE_18__* @ff_get_video_buffer(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_18__*, %struct.TYPE_21__*) #1

declare dso_local i32 @av_image_copy_plane(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @modnpf(i32, i32) #1

declare dso_local i64 @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_calloc(i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i64 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
