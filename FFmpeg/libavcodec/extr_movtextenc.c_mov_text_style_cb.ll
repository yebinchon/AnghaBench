; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextenc.c_mov_text_style_cb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextenc.c_mov_text_style_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__**, i32, i32 }
%struct.TYPE_7__ = type { i8*, i64, i8* }
%struct.TYPE_6__ = type { i64 }

@STYL_BOX = common dso_local global i32 0, align 4
@STYLE_FLAG_BOLD = common dso_local global i64 0, align 8
@STYLE_FLAG_ITALIC = common dso_local global i64 0, align 8
@STYLE_FLAG_UNDERLINE = common dso_local global i64 0, align 8
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Ignoring unmatched close tag\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8, i32)* @mov_text_style_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mov_text_style_cb(i8* %0, i8 signext %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %158, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @STYL_BOX, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %50, label %19

19:                                               ; preds = %12
  %20 = call i8* @av_malloc(i32 24)
  %21 = bitcast i8* %20 to %struct.TYPE_7__*
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 3
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = icmp ne %struct.TYPE_7__* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %19
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = call i32 @av_bprint_clear(i32* %30)
  %32 = load i32, i32* @STYL_BOX, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %274

38:                                               ; preds = %19
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = call i8* @AV_RB16(i32* %44)
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i8* %45, i8** %49, align 8
  br label %130

50:                                               ; preds = %12
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %117

57:                                               ; preds = %50
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = call i8* @AV_RB16(i32* %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  store i8* %60, i8** %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = call i32 @av_dynarray_add(%struct.TYPE_6__*** %66, i32* %68, %struct.TYPE_7__* %71)
  %73 = call i8* @av_malloc(i32 24)
  %74 = bitcast i8* %73 to %struct.TYPE_7__*
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 3
  store %struct.TYPE_7__* %74, %struct.TYPE_7__** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = icmp ne %struct.TYPE_7__* %79, null
  br i1 %80, label %93, label %81

81:                                               ; preds = %57
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %83 = call i32 @mov_text_cleanup(%struct.TYPE_5__* %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 5
  %86 = call i32 @av_bprint_clear(i32* %85)
  %87 = load i32, i32* @STYL_BOX, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 8
  br label %274

93:                                               ; preds = %57
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  %96 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %96, i64 %101
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 3
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  store i64 %105, i64* %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = call i8* @AV_RB16(i32* %111)
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i8* %112, i8** %116, align 8
  br label %129

117:                                              ; preds = %50
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i64 0, i64* %121, align 8
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = call i8* @AV_RB16(i32* %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 3
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  store i8* %124, i8** %128, align 8
  br label %129

129:                                              ; preds = %117, %93
  br label %130

130:                                              ; preds = %129, %38
  %131 = load i8, i8* %5, align 1
  %132 = sext i8 %131 to i32
  switch i32 %132, label %157 [
    i32 98, label %133
    i32 105, label %141
    i32 117, label %149
  ]

133:                                              ; preds = %130
  %134 = load i64, i64* @STYLE_FLAG_BOLD, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 3
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = or i64 %139, %134
  store i64 %140, i64* %138, align 8
  br label %157

141:                                              ; preds = %130
  %142 = load i64, i64* @STYLE_FLAG_ITALIC, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = or i64 %147, %142
  store i64 %148, i64* %146, align 8
  br label %157

149:                                              ; preds = %130
  %150 = load i64, i64* @STYLE_FLAG_UNDERLINE, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 3
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = or i64 %155, %150
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %130, %149, %141, %133
  br label %268

158:                                              ; preds = %3
  %159 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %160, align 8
  %162 = icmp ne %struct.TYPE_7__* %161, null
  br i1 %162, label %169, label %163

163:                                              ; preds = %158
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @AV_LOG_WARNING, align 4
  %168 = call i32 @av_log(i32 %166, i32 %167, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %274

169:                                              ; preds = %158
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  %172 = call i8* @AV_RB16(i32* %171)
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 2
  store i8* %172, i8** %176, align 8
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 3
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %182, align 8
  %184 = call i32 @av_dynarray_add(%struct.TYPE_6__*** %178, i32* %180, %struct.TYPE_7__* %183)
  %185 = call i8* @av_malloc(i32 24)
  %186 = bitcast i8* %185 to %struct.TYPE_7__*
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 3
  store %struct.TYPE_7__* %186, %struct.TYPE_7__** %188, align 8
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 3
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = icmp ne %struct.TYPE_7__* %191, null
  br i1 %192, label %205, label %193

193:                                              ; preds = %169
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %195 = call i32 @mov_text_cleanup(%struct.TYPE_5__* %194)
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 5
  %198 = call i32 @av_bprint_clear(i32* %197)
  %199 = load i32, i32* @STYL_BOX, align 4
  %200 = xor i32 %199, -1
  %201 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = and i32 %203, %200
  store i32 %204, i32* %202, align 8
  br label %274

205:                                              ; preds = %169
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %207, align 8
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = sub nsw i32 %211, 1
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %208, i64 %213
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 3
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  store i64 %217, i64* %221, align 8
  %222 = load i8, i8* %5, align 1
  %223 = sext i8 %222 to i32
  switch i32 %223, label %251 [
    i32 98, label %224
    i32 105, label %233
    i32 117, label %242
  ]

224:                                              ; preds = %205
  %225 = load i64, i64* @STYLE_FLAG_BOLD, align 8
  %226 = xor i64 %225, -1
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 3
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i64, i64* %230, align 8
  %232 = and i64 %231, %226
  store i64 %232, i64* %230, align 8
  br label %251

233:                                              ; preds = %205
  %234 = load i64, i64* @STYLE_FLAG_ITALIC, align 8
  %235 = xor i64 %234, -1
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 3
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = and i64 %240, %235
  store i64 %241, i64* %239, align 8
  br label %251

242:                                              ; preds = %205
  %243 = load i64, i64* @STYLE_FLAG_UNDERLINE, align 8
  %244 = xor i64 %243, -1
  %245 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 3
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = and i64 %249, %244
  store i64 %250, i64* %248, align 8
  br label %251

251:                                              ; preds = %205, %242, %233, %224
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 3
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %251
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 2
  %261 = call i8* @AV_RB16(i32* %260)
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 3
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  store i8* %261, i8** %265, align 8
  br label %266

266:                                              ; preds = %258, %251
  br label %267

267:                                              ; preds = %266
  br label %268

268:                                              ; preds = %267, %157
  %269 = load i32, i32* @STYL_BOX, align 4
  %270 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %269
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %268, %193, %163, %81, %28
  ret void
}

declare dso_local i8* @av_malloc(i32) #1

declare dso_local i32 @av_bprint_clear(i32*) #1

declare dso_local i8* @AV_RB16(i32*) #1

declare dso_local i32 @av_dynarray_add(%struct.TYPE_6__***, i32*, %struct.TYPE_7__*) #1

declare dso_local i32 @mov_text_cleanup(%struct.TYPE_5__*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
