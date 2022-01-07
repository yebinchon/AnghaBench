; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_premultiply.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_20__*, i64, %struct.TYPE_24__**, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)* }
%struct.TYPE_21__ = type { %struct.TYPE_23__*, %struct.TYPE_23__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.TYPE_22__ = type { i32*, i8**, i64 }
%struct.TYPE_23__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AVCOL_RANGE_JPEG = common dso_local global i64 0, align 8
@AVCOL_RANGE_MPEG = common dso_local global i64 0, align 8
@unpremultiply8 = common dso_local global i8* null, align 8
@unpremultiply8offset = common dso_local global i8* null, align 8
@unpremultiply8yuv = common dso_local global i8* null, align 8
@unpremultiply16 = common dso_local global i8* null, align 8
@unpremultiply16offset = common dso_local global i8* null, align 8
@unpremultiply16yuv = common dso_local global i8* null, align 8
@premultiply8 = common dso_local global i8* null, align 8
@premultiply8offset = common dso_local global i8* null, align 8
@premultiply8yuv = common dso_local global i8* null, align 8
@premultiply16 = common dso_local global i8* null, align 8
@premultiply16offset = common dso_local global i8* null, align 8
@premultiply16yuv = common dso_local global i8* null, align 8
@premultiply_slice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_23__**, %struct.TYPE_23__*, %struct.TYPE_23__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_25__* %0, %struct.TYPE_23__** %1, %struct.TYPE_23__* %2, %struct.TYPE_23__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca %struct.TYPE_23__**, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_21__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %6, align 8
  store %struct.TYPE_23__** %1, %struct.TYPE_23__*** %7, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %9, align 8
  %15 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  store %struct.TYPE_22__* %17, %struct.TYPE_22__** %10, align 8
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %20, i64 0
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %21, align 8
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %11, align 8
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %4
  %28 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %29 = call %struct.TYPE_23__* @av_frame_clone(%struct.TYPE_23__* %28)
  %30 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  store %struct.TYPE_23__* %29, %struct.TYPE_23__** %30, align 8
  %31 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %31, align 8
  %33 = icmp ne %struct.TYPE_23__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %364

37:                                               ; preds = %27
  br label %363

38:                                               ; preds = %4
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__* %39, i32 %42, i32 %45)
  %47 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %47, align 8
  %48 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = icmp ne %struct.TYPE_23__* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %38
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %5, align 4
  br label %364

54:                                               ; preds = %38
  %55 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  %57 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %58 = call i32 @av_frame_copy_props(%struct.TYPE_23__* %56, %struct.TYPE_23__* %57)
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AVCOL_RANGE_JPEG, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AVCOL_RANGE_MPEG, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %207

75:                                               ; preds = %54
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %206 [
    i32 138, label %79
    i32 132, label %79
    i32 128, label %101
    i32 150, label %116
    i32 154, label %116
    i32 133, label %137
    i32 129, label %137
    i32 137, label %137
    i32 131, label %137
    i32 136, label %137
    i32 135, label %137
    i32 134, label %137
    i32 130, label %137
    i32 145, label %159
    i32 149, label %159
    i32 153, label %159
    i32 148, label %159
    i32 152, label %159
    i32 147, label %159
    i32 146, label %159
    i32 151, label %159
    i32 140, label %180
    i32 139, label %193
    i32 144, label %193
    i32 143, label %193
    i32 142, label %193
    i32 141, label %193
  ]

79:                                               ; preds = %75, %75
  %80 = load i32, i32* %13, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i8*, i8** @unpremultiply8, align 8
  br label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** @unpremultiply8offset, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i8* [ %83, %82 ], [ %85, %84 ]
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 1
  %90 = load i8**, i8*** %89, align 8
  %91 = getelementptr inbounds i8*, i8** %90, i64 0
  store i8* %87, i8** %91, align 8
  %92 = load i8*, i8** @unpremultiply8yuv, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 2
  store i8* %92, i8** %96, align 8
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  store i8* %92, i8** %100, align 8
  br label %206

101:                                              ; preds = %75
  %102 = load i8*, i8** @unpremultiply8, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 1
  %105 = load i8**, i8*** %104, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 0
  store i8* %102, i8** %106, align 8
  %107 = load i8*, i8** @unpremultiply8yuv, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load i8**, i8*** %109, align 8
  %111 = getelementptr inbounds i8*, i8** %110, i64 2
  store i8* %107, i8** %111, align 8
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  store i8* %107, i8** %115, align 8
  br label %206

116:                                              ; preds = %75, %75
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %116
  %120 = load i8*, i8** @unpremultiply8offset, align 8
  br label %123

121:                                              ; preds = %116
  %122 = load i8*, i8** @unpremultiply8, align 8
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i8* [ %120, %119 ], [ %122, %121 ]
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 1
  %127 = load i8**, i8*** %126, align 8
  %128 = getelementptr inbounds i8*, i8** %127, i64 2
  store i8* %124, i8** %128, align 8
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 1
  %131 = load i8**, i8*** %130, align 8
  %132 = getelementptr inbounds i8*, i8** %131, i64 1
  store i8* %124, i8** %132, align 8
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 1
  %135 = load i8**, i8*** %134, align 8
  %136 = getelementptr inbounds i8*, i8** %135, i64 0
  store i8* %124, i8** %136, align 8
  br label %206

137:                                              ; preds = %75, %75, %75, %75, %75, %75, %75, %75
  %138 = load i32, i32* %13, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = load i8*, i8** @unpremultiply16, align 8
  br label %144

142:                                              ; preds = %137
  %143 = load i8*, i8** @unpremultiply16offset, align 8
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i8* [ %141, %140 ], [ %143, %142 ]
  %146 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %146, i32 0, i32 1
  %148 = load i8**, i8*** %147, align 8
  %149 = getelementptr inbounds i8*, i8** %148, i64 0
  store i8* %145, i8** %149, align 8
  %150 = load i8*, i8** @unpremultiply16yuv, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 1
  %153 = load i8**, i8*** %152, align 8
  %154 = getelementptr inbounds i8*, i8** %153, i64 2
  store i8* %150, i8** %154, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 1
  %157 = load i8**, i8*** %156, align 8
  %158 = getelementptr inbounds i8*, i8** %157, i64 1
  store i8* %150, i8** %158, align 8
  br label %206

159:                                              ; preds = %75, %75, %75, %75, %75, %75, %75, %75
  %160 = load i32, i32* %14, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i8*, i8** @unpremultiply16offset, align 8
  br label %166

164:                                              ; preds = %159
  %165 = load i8*, i8** @unpremultiply16, align 8
  br label %166

166:                                              ; preds = %164, %162
  %167 = phi i8* [ %163, %162 ], [ %165, %164 ]
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = load i8**, i8*** %169, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 2
  store i8* %167, i8** %171, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 1
  store i8* %167, i8** %175, align 8
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 1
  %178 = load i8**, i8*** %177, align 8
  %179 = getelementptr inbounds i8*, i8** %178, i64 0
  store i8* %167, i8** %179, align 8
  br label %206

180:                                              ; preds = %75
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i8*, i8** @unpremultiply8offset, align 8
  br label %187

185:                                              ; preds = %180
  %186 = load i8*, i8** @unpremultiply8, align 8
  br label %187

187:                                              ; preds = %185, %183
  %188 = phi i8* [ %184, %183 ], [ %186, %185 ]
  %189 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %189, i32 0, i32 1
  %191 = load i8**, i8*** %190, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 0
  store i8* %188, i8** %192, align 8
  br label %206

193:                                              ; preds = %75, %75, %75, %75, %75
  %194 = load i32, i32* %14, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = load i8*, i8** @unpremultiply16offset, align 8
  br label %200

198:                                              ; preds = %193
  %199 = load i8*, i8** @unpremultiply16, align 8
  br label %200

200:                                              ; preds = %198, %196
  %201 = phi i8* [ %197, %196 ], [ %199, %198 ]
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 1
  %204 = load i8**, i8*** %203, align 8
  %205 = getelementptr inbounds i8*, i8** %204, i64 0
  store i8* %201, i8** %205, align 8
  br label %206

206:                                              ; preds = %75, %200, %187, %166, %144, %123, %101, %86
  br label %339

207:                                              ; preds = %54
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  switch i32 %210, label %338 [
    i32 138, label %211
    i32 132, label %211
    i32 128, label %233
    i32 150, label %248
    i32 154, label %248
    i32 133, label %269
    i32 129, label %269
    i32 137, label %269
    i32 131, label %269
    i32 136, label %269
    i32 135, label %269
    i32 134, label %269
    i32 130, label %269
    i32 145, label %291
    i32 149, label %291
    i32 153, label %291
    i32 148, label %291
    i32 152, label %291
    i32 147, label %291
    i32 146, label %291
    i32 151, label %291
    i32 140, label %312
    i32 139, label %325
    i32 144, label %325
    i32 143, label %325
    i32 142, label %325
    i32 141, label %325
  ]

211:                                              ; preds = %207, %207
  %212 = load i32, i32* %13, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %211
  %215 = load i8*, i8** @premultiply8, align 8
  br label %218

216:                                              ; preds = %211
  %217 = load i8*, i8** @premultiply8offset, align 8
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i8* [ %215, %214 ], [ %217, %216 ]
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 1
  %222 = load i8**, i8*** %221, align 8
  %223 = getelementptr inbounds i8*, i8** %222, i64 0
  store i8* %219, i8** %223, align 8
  %224 = load i8*, i8** @premultiply8yuv, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %225, i32 0, i32 1
  %227 = load i8**, i8*** %226, align 8
  %228 = getelementptr inbounds i8*, i8** %227, i64 2
  store i8* %224, i8** %228, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 1
  %231 = load i8**, i8*** %230, align 8
  %232 = getelementptr inbounds i8*, i8** %231, i64 1
  store i8* %224, i8** %232, align 8
  br label %338

233:                                              ; preds = %207
  %234 = load i8*, i8** @premultiply8, align 8
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 1
  %237 = load i8**, i8*** %236, align 8
  %238 = getelementptr inbounds i8*, i8** %237, i64 0
  store i8* %234, i8** %238, align 8
  %239 = load i8*, i8** @premultiply8yuv, align 8
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %240, i32 0, i32 1
  %242 = load i8**, i8*** %241, align 8
  %243 = getelementptr inbounds i8*, i8** %242, i64 2
  store i8* %239, i8** %243, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %245 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %244, i32 0, i32 1
  %246 = load i8**, i8*** %245, align 8
  %247 = getelementptr inbounds i8*, i8** %246, i64 1
  store i8* %239, i8** %247, align 8
  br label %338

248:                                              ; preds = %207, %207
  %249 = load i32, i32* %14, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = load i8*, i8** @premultiply8offset, align 8
  br label %255

253:                                              ; preds = %248
  %254 = load i8*, i8** @premultiply8, align 8
  br label %255

255:                                              ; preds = %253, %251
  %256 = phi i8* [ %252, %251 ], [ %254, %253 ]
  %257 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %257, i32 0, i32 1
  %259 = load i8**, i8*** %258, align 8
  %260 = getelementptr inbounds i8*, i8** %259, i64 2
  store i8* %256, i8** %260, align 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %261, i32 0, i32 1
  %263 = load i8**, i8*** %262, align 8
  %264 = getelementptr inbounds i8*, i8** %263, i64 1
  store i8* %256, i8** %264, align 8
  %265 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %266 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %265, i32 0, i32 1
  %267 = load i8**, i8*** %266, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 0
  store i8* %256, i8** %268, align 8
  br label %338

269:                                              ; preds = %207, %207, %207, %207, %207, %207, %207, %207
  %270 = load i32, i32* %13, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = load i8*, i8** @premultiply16, align 8
  br label %276

274:                                              ; preds = %269
  %275 = load i8*, i8** @premultiply16offset, align 8
  br label %276

276:                                              ; preds = %274, %272
  %277 = phi i8* [ %273, %272 ], [ %275, %274 ]
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %278, i32 0, i32 1
  %280 = load i8**, i8*** %279, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 0
  store i8* %277, i8** %281, align 8
  %282 = load i8*, i8** @premultiply16yuv, align 8
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 1
  %285 = load i8**, i8*** %284, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 2
  store i8* %282, i8** %286, align 8
  %287 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %288 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %287, i32 0, i32 1
  %289 = load i8**, i8*** %288, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 1
  store i8* %282, i8** %290, align 8
  br label %338

291:                                              ; preds = %207, %207, %207, %207, %207, %207, %207, %207
  %292 = load i32, i32* %14, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %291
  %295 = load i8*, i8** @premultiply16offset, align 8
  br label %298

296:                                              ; preds = %291
  %297 = load i8*, i8** @premultiply16, align 8
  br label %298

298:                                              ; preds = %296, %294
  %299 = phi i8* [ %295, %294 ], [ %297, %296 ]
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %300, i32 0, i32 1
  %302 = load i8**, i8*** %301, align 8
  %303 = getelementptr inbounds i8*, i8** %302, i64 2
  store i8* %299, i8** %303, align 8
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 1
  %306 = load i8**, i8*** %305, align 8
  %307 = getelementptr inbounds i8*, i8** %306, i64 1
  store i8* %299, i8** %307, align 8
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 1
  %310 = load i8**, i8*** %309, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i64 0
  store i8* %299, i8** %311, align 8
  br label %338

312:                                              ; preds = %207
  %313 = load i32, i32* %14, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %312
  %316 = load i8*, i8** @premultiply8offset, align 8
  br label %319

317:                                              ; preds = %312
  %318 = load i8*, i8** @premultiply8, align 8
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i8* [ %316, %315 ], [ %318, %317 ]
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %322 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %321, i32 0, i32 1
  %323 = load i8**, i8*** %322, align 8
  %324 = getelementptr inbounds i8*, i8** %323, i64 0
  store i8* %320, i8** %324, align 8
  br label %338

325:                                              ; preds = %207, %207, %207, %207, %207
  %326 = load i32, i32* %14, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %325
  %329 = load i8*, i8** @premultiply16offset, align 8
  br label %332

330:                                              ; preds = %325
  %331 = load i8*, i8** @premultiply16, align 8
  br label %332

332:                                              ; preds = %330, %328
  %333 = phi i8* [ %329, %328 ], [ %331, %330 ]
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 1
  %336 = load i8**, i8*** %335, align 8
  %337 = getelementptr inbounds i8*, i8** %336, i64 0
  store i8* %333, i8** %337, align 8
  br label %338

338:                                              ; preds = %207, %332, %319, %298, %276, %255, %233, %218
  br label %339

339:                                              ; preds = %338, %206
  %340 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %7, align 8
  %341 = load %struct.TYPE_23__*, %struct.TYPE_23__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 2
  store %struct.TYPE_23__* %341, %struct.TYPE_23__** %342, align 8
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %344 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 1
  store %struct.TYPE_23__* %343, %struct.TYPE_23__** %344, align 8
  %345 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %12, i32 0, i32 0
  store %struct.TYPE_23__* %345, %struct.TYPE_23__** %346, align 8
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 0
  %349 = load %struct.TYPE_20__*, %struct.TYPE_20__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %349, i32 0, i32 0
  %351 = load i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)*, i32 (%struct.TYPE_25__*, i32, %struct.TYPE_21__*, i32*, i32)** %350, align 8
  %352 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %353 = load i32, i32* @premultiply_slice, align 4
  %354 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %355 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %354, i32 0, i32 0
  %356 = load i32*, i32** %355, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 0
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %360 = call i32 @ff_filter_get_nb_threads(%struct.TYPE_25__* %359)
  %361 = call i32 @FFMIN(i32 %358, i32 %360)
  %362 = call i32 %351(%struct.TYPE_25__* %352, i32 %353, %struct.TYPE_21__* %12, i32* null, i32 %361)
  br label %363

363:                                              ; preds = %339, %37
  store i32 0, i32* %5, align 4
  br label %364

364:                                              ; preds = %363, %51, %34
  %365 = load i32, i32* %5, align 4
  ret i32 %365
}

declare dso_local %struct.TYPE_23__* @av_frame_clone(%struct.TYPE_23__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local %struct.TYPE_23__* @ff_get_video_buffer(%struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_frame_copy_props(%struct.TYPE_23__*, %struct.TYPE_23__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @ff_filter_get_nb_threads(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
