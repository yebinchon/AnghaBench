; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_tiger/extr_main.c_PS_construct.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_tiger/extr_main.c_PS_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { float, float, i32, i8*, i8*, i32, i32, i64, i8* }

@VG_NON_ZERO = common dso_local global i8* null, align 8
@VG_FILL_PATH = common dso_local global i32 0, align 4
@VG_EVEN_ODD = common dso_local global i8* null, align 8
@VG_STROKE_PATH = common dso_local global i32 0, align 4
@VG_CAP_BUTT = common dso_local global i32 0, align 4
@VG_CAP_ROUND = common dso_local global i32 0, align 4
@VG_CAP_SQUARE = common dso_local global i32 0, align 4
@VG_JOIN_MITER = common dso_local global i32 0, align 4
@VG_JOIN_ROUND = common dso_local global i32 0, align 4
@VG_JOIN_BEVEL = common dso_local global i32 0, align 4
@VG_PAINT_TYPE = common dso_local global i32 0, align 4
@VG_PAINT_TYPE_COLOR = common dso_local global i32 0, align 4
@VG_PAINT_COLOR = common dso_local global i32 0, align 4
@VG_MOVE_TO = common dso_local global i8 0, align 1
@VG_ABSOLUTE = common dso_local global i8 0, align 1
@VG_LINE_TO = common dso_local global i8 0, align 1
@VG_CUBIC_TO = common dso_local global i8 0, align 1
@VG_CLOSE_PATH = common dso_local global i8 0, align 1
@VG_PATH_FORMAT_STANDARD = common dso_local global i32 0, align 4
@VG_PATH_DATATYPE_F = common dso_local global i32 0, align 4
@VG_PATH_CAPABILITY_ALL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @PS_construct(i8* %0, i32 %1, float* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [4 x float], align 16
  %22 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = call i64 @malloc(i32 16)
  %24 = inttoptr i64 %23 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @UNREF(i32 %25)
  br label %27

27:                                               ; preds = %82, %4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %85

31:                                               ; preds = %27
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 8
  store i32 %35, i32* %10, align 4
  %36 = load float*, float** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = sext i32 %37 to i64
  %40 = getelementptr inbounds float, float* %36, i64 %39
  %41 = load float, float* %40, align 4
  %42 = fptosi float %41 to i32
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp sgt i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %31
  %51 = load i32, i32* %16, align 4
  store i32 %51, i32* %14, align 4
  br label %52

52:                                               ; preds = %50, %31
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %79, %52
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %74 [
    i32 77, label %64
    i32 76, label %67
    i32 67, label %70
    i32 69, label %73
  ]

64:                                               ; preds = %57
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %10, align 4
  br label %76

67:                                               ; preds = %57
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 2
  store i32 %69, i32* %10, align 4
  br label %76

70:                                               ; preds = %57
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 6
  store i32 %72, i32* %10, align 4
  br label %76

73:                                               ; preds = %57
  br label %76

74:                                               ; preds = %57
  %75 = call i32 @assert(i32 0)
  br label %76

76:                                               ; preds = %74, %73, %70, %67, %64
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %17, align 4
  br label %53

82:                                               ; preds = %53
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %27

85:                                               ; preds = %27
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 56
  %92 = trunc i64 %91 to i32
  %93 = call i64 @malloc(i32 %92)
  %94 = inttoptr i64 %93 to %struct.TYPE_4__*
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %96, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i64 @malloc(i32 %97)
  %99 = inttoptr i64 %98 to i8*
  store i8* %99, i8** %15, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %100

100:                                              ; preds = %456, %85
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %486

104:                                              ; preds = %100
  store i32 0, i32* %22, align 4
  %105 = load i8*, i8** @VG_NON_ZERO, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 8
  store i8* %105, i8** %112, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  switch i32 %118, label %144 [
    i32 78, label %119
    i32 70, label %120
    i32 69, label %132
  ]

119:                                              ; preds = %104
  br label %146

120:                                              ; preds = %104
  %121 = load i8*, i8** @VG_NON_ZERO, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 8
  store i8* %121, i8** %128, align 8
  %129 = load i32, i32* @VG_FILL_PATH, align 4
  %130 = load i32, i32* %22, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %22, align 4
  br label %146

132:                                              ; preds = %104
  %133 = load i8*, i8** @VG_EVEN_ODD, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 8
  store i8* %133, i8** %140, align 8
  %141 = load i32, i32* @VG_FILL_PATH, align 4
  %142 = load i32, i32* %22, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %22, align 4
  br label %146

144:                                              ; preds = %104
  %145 = call i32 @assert(i32 0)
  br label %146

146:                                              ; preds = %144, %132, %120, %119
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  switch i32 %154, label %160 [
    i32 78, label %155
    i32 83, label %156
  ]

155:                                              ; preds = %146
  br label %162

156:                                              ; preds = %146
  %157 = load i32, i32* @VG_STROKE_PATH, align 4
  %158 = load i32, i32* %22, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %22, align 4
  br label %162

160:                                              ; preds = %146
  %161 = call i32 @assert(i32 0)
  br label %162

162:                                              ; preds = %160, %156, %155
  %163 = load i32, i32* %22, align 4
  %164 = sext i32 %163 to i64
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 7
  store i64 %164, i64* %171, align 8
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %11, align 4
  %174 = load i8*, i8** %5, align 8
  %175 = load i32, i32* %11, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8, i8* %174, i64 %176
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  switch i32 %179, label %207 [
    i32 66, label %180
    i32 82, label %189
    i32 83, label %198
  ]

180:                                              ; preds = %162
  %181 = load i32, i32* @VG_CAP_BUTT, align 4
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 6
  store i32 %181, i32* %188, align 4
  br label %209

189:                                              ; preds = %162
  %190 = load i32, i32* @VG_CAP_ROUND, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = load i32, i32* %12, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i64 %195
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 6
  store i32 %190, i32* %197, align 4
  br label %209

198:                                              ; preds = %162
  %199 = load i32, i32* @VG_CAP_SQUARE, align 4
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 6
  store i32 %199, i32* %206, align 4
  br label %209

207:                                              ; preds = %162
  %208 = call i32 @assert(i32 0)
  br label %209

209:                                              ; preds = %207, %198, %189, %180
  %210 = load i32, i32* %11, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %11, align 4
  %212 = load i8*, i8** %5, align 8
  %213 = load i32, i32* %11, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i8, i8* %212, i64 %214
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  switch i32 %217, label %245 [
    i32 77, label %218
    i32 82, label %227
    i32 66, label %236
  ]

218:                                              ; preds = %209
  %219 = load i32, i32* @VG_JOIN_MITER, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 5
  store i32 %219, i32* %226, align 8
  br label %247

227:                                              ; preds = %209
  %228 = load i32, i32* @VG_JOIN_ROUND, align 4
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 1
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = load i32, i32* %12, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %234, i32 0, i32 5
  store i32 %228, i32* %235, align 8
  br label %247

236:                                              ; preds = %209
  %237 = load i32, i32* @VG_JOIN_BEVEL, align 4
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_4__*, %struct.TYPE_4__** %239, align 8
  %241 = load i32, i32* %12, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %240, i64 %242
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 5
  store i32 %237, i32* %244, align 8
  br label %247

245:                                              ; preds = %209
  %246 = call i32 @assert(i32 0)
  br label %247

247:                                              ; preds = %245, %236, %227, %218
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %11, align 4
  %250 = load float*, float** %7, align 8
  %251 = load i32, i32* %10, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %10, align 4
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds float, float* %250, i64 %253
  %255 = load float, float* %254, align 4
  %256 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %257 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %256, i32 0, i32 1
  %258 = load %struct.TYPE_4__*, %struct.TYPE_4__** %257, align 8
  %259 = load i32, i32* %12, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i32 0, i32 0
  store float %255, float* %262, align 8
  %263 = load float*, float** %7, align 8
  %264 = load i32, i32* %10, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %10, align 4
  %266 = sext i32 %264 to i64
  %267 = getelementptr inbounds float, float* %263, i64 %266
  %268 = load float, float* %267, align 4
  %269 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %269, i32 0, i32 1
  %271 = load %struct.TYPE_4__*, %struct.TYPE_4__** %270, align 8
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %274, i32 0, i32 1
  store float %268, float* %275, align 4
  %276 = load float*, float** %7, align 8
  %277 = load i32, i32* %10, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %10, align 4
  %279 = sext i32 %277 to i64
  %280 = getelementptr inbounds float, float* %276, i64 %279
  %281 = load float, float* %280, align 4
  %282 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 0
  store float %281, float* %282, align 16
  %283 = load float*, float** %7, align 8
  %284 = load i32, i32* %10, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %10, align 4
  %286 = sext i32 %284 to i64
  %287 = getelementptr inbounds float, float* %283, i64 %286
  %288 = load float, float* %287, align 4
  %289 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 1
  store float %288, float* %289, align 4
  %290 = load float*, float** %7, align 8
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %10, align 4
  %293 = sext i32 %291 to i64
  %294 = getelementptr inbounds float, float* %290, i64 %293
  %295 = load float, float* %294, align 4
  %296 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 2
  store float %295, float* %296, align 8
  %297 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 3
  store float 1.000000e+00, float* %297, align 4
  %298 = call i8* (...) @vgCreatePaint()
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 1
  %301 = load %struct.TYPE_4__*, %struct.TYPE_4__** %300, align 8
  %302 = load i32, i32* %12, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %301, i64 %303
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 4
  store i8* %298, i8** %305, align 8
  %306 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 1
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = load i32, i32* %12, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 4
  %313 = load i8*, i8** %312, align 8
  %314 = load i32, i32* @VG_PAINT_TYPE, align 4
  %315 = load i32, i32* @VG_PAINT_TYPE_COLOR, align 4
  %316 = call i32 @vgSetParameteri(i8* %313, i32 %314, i32 %315)
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 1
  %319 = load %struct.TYPE_4__*, %struct.TYPE_4__** %318, align 8
  %320 = load i32, i32* %12, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i64 %321
  %323 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i32 0, i32 4
  %324 = load i8*, i8** %323, align 8
  %325 = load i32, i32* @VG_PAINT_COLOR, align 4
  %326 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 0
  %327 = call i32 @vgSetParameterfv(i8* %324, i32 %325, i32 4, float* %326)
  %328 = load float*, float** %7, align 8
  %329 = load i32, i32* %10, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %10, align 4
  %331 = sext i32 %329 to i64
  %332 = getelementptr inbounds float, float* %328, i64 %331
  %333 = load float, float* %332, align 4
  %334 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 0
  store float %333, float* %334, align 16
  %335 = load float*, float** %7, align 8
  %336 = load i32, i32* %10, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %10, align 4
  %338 = sext i32 %336 to i64
  %339 = getelementptr inbounds float, float* %335, i64 %338
  %340 = load float, float* %339, align 4
  %341 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 1
  store float %340, float* %341, align 4
  %342 = load float*, float** %7, align 8
  %343 = load i32, i32* %10, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %10, align 4
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds float, float* %342, i64 %345
  %347 = load float, float* %346, align 4
  %348 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 2
  store float %347, float* %348, align 8
  %349 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 3
  store float 1.000000e+00, float* %349, align 4
  %350 = call i8* (...) @vgCreatePaint()
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %352 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %351, i32 0, i32 1
  %353 = load %struct.TYPE_4__*, %struct.TYPE_4__** %352, align 8
  %354 = load i32, i32* %12, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 3
  store i8* %350, i8** %357, align 8
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %358, i32 0, i32 1
  %360 = load %struct.TYPE_4__*, %struct.TYPE_4__** %359, align 8
  %361 = load i32, i32* %12, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 3
  %365 = load i8*, i8** %364, align 8
  %366 = load i32, i32* @VG_PAINT_TYPE, align 4
  %367 = load i32, i32* @VG_PAINT_TYPE_COLOR, align 4
  %368 = call i32 @vgSetParameteri(i8* %365, i32 %366, i32 %367)
  %369 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %370 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %369, i32 0, i32 1
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** %370, align 8
  %372 = load i32, i32* %12, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 3
  %376 = load i8*, i8** %375, align 8
  %377 = load i32, i32* @VG_PAINT_COLOR, align 4
  %378 = getelementptr inbounds [4 x float], [4 x float]* %21, i64 0, i64 0
  %379 = call i32 @vgSetParameterfv(i8* %376, i32 %377, i32 4, float* %378)
  %380 = load float*, float** %7, align 8
  %381 = load i32, i32* %10, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %10, align 4
  %383 = sext i32 %381 to i64
  %384 = getelementptr inbounds float, float* %380, i64 %383
  %385 = load float, float* %384, align 4
  %386 = fptosi float %385 to i32
  store i32 %386, i32* %18, align 4
  %387 = load i32, i32* %18, align 4
  %388 = icmp sgt i32 %387, 0
  %389 = zext i1 %388 to i32
  %390 = call i32 @assert(i32 %389)
  %391 = load i32, i32* %10, align 4
  store i32 %391, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %392

392:                                              ; preds = %453, %247
  %393 = load i32, i32* %20, align 4
  %394 = load i32, i32* %18, align 4
  %395 = icmp slt i32 %393, %394
  br i1 %395, label %396, label %456

396:                                              ; preds = %392
  %397 = load i8*, i8** %5, align 8
  %398 = load i32, i32* %11, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i8, i8* %397, i64 %399
  %401 = load i8, i8* %400, align 1
  %402 = sext i8 %401 to i32
  switch i32 %402, label %448 [
    i32 77, label %403
    i32 76, label %416
    i32 67, label %429
    i32 69, label %442
  ]

403:                                              ; preds = %396
  %404 = load i8, i8* @VG_MOVE_TO, align 1
  %405 = zext i8 %404 to i32
  %406 = load i8, i8* @VG_ABSOLUTE, align 1
  %407 = zext i8 %406 to i32
  %408 = or i32 %405, %407
  %409 = trunc i32 %408 to i8
  %410 = load i8*, i8** %15, align 8
  %411 = load i32, i32* %20, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i8, i8* %410, i64 %412
  store i8 %409, i8* %413, align 1
  %414 = load i32, i32* %10, align 4
  %415 = add nsw i32 %414, 2
  store i32 %415, i32* %10, align 4
  br label %450

416:                                              ; preds = %396
  %417 = load i8, i8* @VG_LINE_TO, align 1
  %418 = zext i8 %417 to i32
  %419 = load i8, i8* @VG_ABSOLUTE, align 1
  %420 = zext i8 %419 to i32
  %421 = or i32 %418, %420
  %422 = trunc i32 %421 to i8
  %423 = load i8*, i8** %15, align 8
  %424 = load i32, i32* %20, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i8, i8* %423, i64 %425
  store i8 %422, i8* %426, align 1
  %427 = load i32, i32* %10, align 4
  %428 = add nsw i32 %427, 2
  store i32 %428, i32* %10, align 4
  br label %450

429:                                              ; preds = %396
  %430 = load i8, i8* @VG_CUBIC_TO, align 1
  %431 = zext i8 %430 to i32
  %432 = load i8, i8* @VG_ABSOLUTE, align 1
  %433 = zext i8 %432 to i32
  %434 = or i32 %431, %433
  %435 = trunc i32 %434 to i8
  %436 = load i8*, i8** %15, align 8
  %437 = load i32, i32* %20, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i8, i8* %436, i64 %438
  store i8 %435, i8* %439, align 1
  %440 = load i32, i32* %10, align 4
  %441 = add nsw i32 %440, 6
  store i32 %441, i32* %10, align 4
  br label %450

442:                                              ; preds = %396
  %443 = load i8, i8* @VG_CLOSE_PATH, align 1
  %444 = load i8*, i8** %15, align 8
  %445 = load i32, i32* %20, align 4
  %446 = sext i32 %445 to i64
  %447 = getelementptr inbounds i8, i8* %444, i64 %446
  store i8 %443, i8* %447, align 1
  br label %450

448:                                              ; preds = %396
  %449 = call i32 @assert(i32 0)
  br label %450

450:                                              ; preds = %448, %442, %429, %416, %403
  %451 = load i32, i32* %11, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %11, align 4
  br label %453

453:                                              ; preds = %450
  %454 = load i32, i32* %20, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %20, align 4
  br label %392

456:                                              ; preds = %392
  %457 = load i32, i32* @VG_PATH_FORMAT_STANDARD, align 4
  %458 = load i32, i32* @VG_PATH_DATATYPE_F, align 4
  %459 = load i64, i64* @VG_PATH_CAPABILITY_ALL, align 8
  %460 = trunc i64 %459 to i32
  %461 = call i32 @vgCreatePath(i32 %457, i32 %458, float 1.000000e+00, float 0.000000e+00, i32 0, i32 0, i32 %460)
  %462 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %463 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %462, i32 0, i32 1
  %464 = load %struct.TYPE_4__*, %struct.TYPE_4__** %463, align 8
  %465 = load i32, i32* %12, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %464, i64 %466
  %468 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i32 0, i32 2
  store i32 %461, i32* %468, align 8
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 1
  %471 = load %struct.TYPE_4__*, %struct.TYPE_4__** %470, align 8
  %472 = load i32, i32* %12, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %471, i64 %473
  %475 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %474, i32 0, i32 2
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* %18, align 4
  %478 = load i8*, i8** %15, align 8
  %479 = load float*, float** %7, align 8
  %480 = load i32, i32* %19, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds float, float* %479, i64 %481
  %483 = call i32 @vgAppendPathData(i32 %476, i32 %477, i8* %478, float* %482)
  %484 = load i32, i32* %12, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %12, align 4
  br label %100

486:                                              ; preds = %100
  %487 = load i8*, i8** %15, align 8
  %488 = call i32 @free(i8* %487)
  %489 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  ret %struct.TYPE_5__* %489
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @UNREF(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @vgCreatePaint(...) #1

declare dso_local i32 @vgSetParameteri(i8*, i32, i32) #1

declare dso_local i32 @vgSetParameterfv(i8*, i32, i32, float*) #1

declare dso_local i32 @vgCreatePath(i32, i32, float, float, i32, i32, i32) #1

declare dso_local i32 @vgAppendPathData(i32, i32, i8*, float*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
