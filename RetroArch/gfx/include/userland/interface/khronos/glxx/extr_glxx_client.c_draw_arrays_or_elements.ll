; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/glxx/extr_glxx_client.c_draw_arrays_or_elements.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/glxx/extr_glxx_client.c_draw_arrays_or_elements.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__*, i32, %struct.TYPE_12__, i32 (...)*, i64 }
%struct.TYPE_11__ = type { i64, i8*, i32, i32, i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i8*, i8*, i32 }

@GLXX_CONFIG_MAX_VERTEX_ATTRIBS = common dso_local global i32 0, align 4
@GL_INVALID_VALUE = common dso_local global i32 0, align 4
@CACHE_ENTRY_T = common dso_local global i32 0, align 4
@data = common dso_local global i32 0, align 4
@glintFindMax_impl = common dso_local global i32 0, align 4
@GLINTFINDMAX_ID = common dso_local global i32 0, align 4
@CACHE_SIG_ATTRIB_0 = common dso_local global i64 0, align 8
@GL_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@glintDrawElements_impl = common dso_local global i32 0, align 4
@GLINTDRAWELEMENTS_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_14__*, i64, i32, i64, i8*)* @draw_arrays_or_elements to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_arrays_or_elements(i32* %0, %struct.TYPE_14__* %1, i64 %2, i32 %3, i64 %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_15__, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* @GLXX_CONFIG_MAX_VERTEX_ATTRIBS, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %23, align 8
  %33 = alloca %struct.TYPE_13__, i64 %31, align 16
  store i64 %31, i64* %24, align 8
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @vcos_assert(i32 %36)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 3
  %40 = load i32 (...)*, i32 (...)** %39, align 8
  %41 = icmp ne i32 (...)* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %6
  %43 = load i32*, i32** %7, align 8
  %44 = call i64 @IS_OPENGLES_11(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46, %42
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 3
  %54 = load i32 (...)*, i32 (...)** %53, align 8
  %55 = call i32 (...) %54()
  br label %56

56:                                               ; preds = %51, %46, %6
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = load i32, i32* @GL_INVALID_VALUE, align 4
  %62 = call i32 @glxx_set_error(%struct.TYPE_14__* %60, i32 %61)
  store i32 1, i32* %26, align 4
  br label %650

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i32 0, i32* %64, align 8
  store i32 0, i32* %20, align 4
  br label %65

65:                                               ; preds = %103, %63
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @GLXX_CONFIG_MAX_VERTEX_ATTRIBS, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %106

69:                                               ; preds = %65
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = load i32, i32* %20, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %69
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = load i32, i32* %20, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %79
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = load i32, i32* %20, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load i8*, i8** %97, align 8
  %99 = icmp eq i8* %98, null
  br i1 %99, label %100, label %101

100:                                              ; preds = %89
  store i32 1, i32* %26, align 4
  br label %650

101:                                              ; preds = %89
  br label %102

102:                                              ; preds = %101, %79, %69
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %20, align 4
  br label %65

106:                                              ; preds = %65
  %107 = load i64, i64* %11, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %106
  %110 = load i8*, i8** %12, align 8
  %111 = ptrtoint i8* %110 to i32
  store i32 %111, i32* %19, align 4
  %112 = load i32, i32* %19, align 4
  %113 = sext i32 %112 to i64
  store i64 %113, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  %114 = load i32, i32* %19, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %182

118:                                              ; preds = %106
  %119 = load i32, i32* %10, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br label %127

127:                                              ; preds = %121, %118
  %128 = phi i1 [ false, %118 ], [ %126, %121 ]
  %129 = zext i1 %128 to i32
  store i32 %129, i32* %15, align 4
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %14, align 8
  %134 = load i32, i32* %10, align 4
  %135 = load i64, i64* %11, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @khrn_get_type_size(i32 %136)
  %138 = mul nsw i32 %134, %137
  %139 = call i32 @align_length(i32 %138)
  store i32 %139, i32* %17, align 4
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %161

142:                                              ; preds = %127
  %143 = load i32, i32* %10, align 4
  %144 = load i64, i64* %11, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 @khrn_get_type_size(i32 %145)
  %147 = load i8*, i8** %12, align 8
  %148 = call i32 @find_max(i32 %143, i32 %146, i8* %147)
  store i32 %148, i32* %16, align 4
  %149 = load i32*, i32** %7, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i8*, i8** %12, align 8
  %153 = load i32, i32* %17, align 4
  %154 = call i32 @khrn_cache_lookup(i32* %149, i32* %151, i8* %152, i32 %153, i64 0)
  store i32 %154, i32* %18, align 4
  %155 = load i32, i32* %18, align 4
  %156 = load i32, i32* @CACHE_ENTRY_T, align 4
  %157 = load i32, i32* @data, align 4
  %158 = call i32 @offsetof(i32 %156, i32 %157)
  %159 = add nsw i32 %155, %158
  %160 = sext i32 %159 to i64
  store i64 %160, i64* %13, align 8
  br label %181

161:                                              ; preds = %127
  store i32 0, i32* %18, align 4
  %162 = load i8*, i8** %12, align 8
  %163 = ptrtoint i8* %162 to i64
  store i64 %163, i64* %13, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %161
  %168 = load i32, i32* @glintFindMax_impl, align 4
  %169 = load i32*, i32** %7, align 8
  %170 = load i32, i32* @GLINTFINDMAX_ID, align 4
  %171 = load i32, i32* %10, align 4
  %172 = call i32 @RPC_SIZEI(i32 %171)
  %173 = load i64, i64* %11, align 8
  %174 = call i32 @RPC_ENUM(i64 %173)
  %175 = load i64, i64* %13, align 8
  %176 = call i32 @RPC_UINT(i64 %175)
  %177 = call i32 @RPC_CALL3_RES(i32 %168, i32* %169, i32 %170, i32 %172, i32 %174, i32 %176)
  %178 = call i32 @RPC_INT_RES(i32 %177)
  store i32 %178, i32* %16, align 4
  br label %180

179:                                              ; preds = %161
  store i32 -1, i32* %16, align 4
  br label %180

180:                                              ; preds = %179, %167
  br label %181

181:                                              ; preds = %180, %142
  br label %182

182:                                              ; preds = %181, %109
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %636

186:                                              ; preds = %182
  store i32 0, i32* %20, align 4
  br label %187

187:                                              ; preds = %444, %186
  %188 = load i32, i32* %20, align 4
  %189 = load i32, i32* @GLXX_CONFIG_MAX_VERTEX_ATTRIBS, align 4
  %190 = icmp slt i32 %188, %189
  br i1 %190, label %191, label %447

191:                                              ; preds = %187
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = load i32, i32* %20, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %438

201:                                              ; preds = %191
  %202 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = load i32, i32* %20, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %438

211:                                              ; preds = %201
  %212 = load i32, i32* %20, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 0
  store i32 1, i32* %215, align 16
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %217, align 8
  %219 = load i32, i32* %20, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = load i32, i32* %20, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 1
  store i8* %223, i8** %227, align 8
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = load i32, i32* %20, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 1
  %235 = load i8*, i8** %234, align 8
  %236 = load i32, i32* %16, align 4
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %238, align 8
  %240 = load i32, i32* %20, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %246, align 8
  %248 = load i32, i32* %20, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %254, align 8
  %256 = load i32, i32* %20, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @calc_length(i32 %236, i32 %244, i32 %252, i32 %260)
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %235, i64 %262
  %264 = load i32, i32* %20, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 2
  store i8* %263, i8** %267, align 16
  %268 = load i32, i32* %20, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %270, i32 0, i32 3
  store i32 -1, i32* %271, align 8
  store i32 0, i32* %21, align 4
  br label %272

272:                                              ; preds = %434, %211
  %273 = load i32, i32* %21, align 4
  %274 = load i32, i32* %20, align 4
  %275 = icmp slt i32 %273, %274
  br i1 %275, label %276, label %437

276:                                              ; preds = %272
  %277 = load i32, i32* %21, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %278
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 16
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %433

283:                                              ; preds = %276
  %284 = load i32, i32* %21, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, -1
  br i1 %289, label %290, label %433

290:                                              ; preds = %283
  %291 = load i32, i32* %20, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %293, i32 0, i32 1
  %295 = load i8*, i8** %294, align 8
  %296 = load i32, i32* %21, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 1
  %300 = load i8*, i8** %299, align 8
  %301 = icmp ult i8* %295, %300
  br i1 %301, label %302, label %308

302:                                              ; preds = %290
  %303 = load i32, i32* %20, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %304
  %306 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %305, i32 0, i32 1
  %307 = load i8*, i8** %306, align 8
  br label %314

308:                                              ; preds = %290
  %309 = load i32, i32* %21, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %311, i32 0, i32 1
  %313 = load i8*, i8** %312, align 8
  br label %314

314:                                              ; preds = %308, %302
  %315 = phi i8* [ %307, %302 ], [ %313, %308 ]
  store i8* %315, i8** %27, align 8
  %316 = load i32, i32* %20, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 2
  %320 = load i8*, i8** %319, align 16
  %321 = load i32, i32* %21, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %323, i32 0, i32 2
  %325 = load i8*, i8** %324, align 16
  %326 = icmp ugt i8* %320, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %314
  %328 = load i32, i32* %20, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %329
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 2
  %332 = load i8*, i8** %331, align 16
  br label %339

333:                                              ; preds = %314
  %334 = load i32, i32* %21, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 2
  %338 = load i8*, i8** %337, align 16
  br label %339

339:                                              ; preds = %333, %327
  %340 = phi i8* [ %332, %327 ], [ %338, %333 ]
  store i8* %340, i8** %28, align 8
  %341 = load i8*, i8** %28, align 8
  %342 = load i8*, i8** %27, align 8
  %343 = ptrtoint i8* %341 to i64
  %344 = ptrtoint i8* %342 to i64
  %345 = sub i64 %343, %344
  %346 = load i32, i32* %20, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 16
  %351 = load i32, i32* %20, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %353, i32 0, i32 1
  %355 = load i8*, i8** %354, align 8
  %356 = ptrtoint i8* %350 to i64
  %357 = ptrtoint i8* %355 to i64
  %358 = sub i64 %356, %357
  %359 = load i32, i32* %21, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %361, i32 0, i32 2
  %363 = load i8*, i8** %362, align 16
  %364 = load i32, i32* %21, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %366, i32 0, i32 1
  %368 = load i8*, i8** %367, align 8
  %369 = ptrtoint i8* %363 to i64
  %370 = ptrtoint i8* %368 to i64
  %371 = sub i64 %369, %370
  %372 = add nsw i64 %358, %371
  %373 = icmp slt i64 %345, %372
  br i1 %373, label %374, label %432

374:                                              ; preds = %339
  %375 = load i32, i32* %20, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 1
  %379 = load i8*, i8** %378, align 8
  %380 = load i32, i32* %21, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %381
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 1
  %384 = load i8*, i8** %383, align 8
  %385 = icmp ult i8* %379, %384
  br i1 %385, label %386, label %412

386:                                              ; preds = %374
  %387 = load i32, i32* %20, align 4
  store i32 %387, i32* %22, align 4
  br label %388

388:                                              ; preds = %395, %386
  %389 = load i32, i32* %22, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 8
  %394 = icmp ne i32 %393, -1
  br i1 %394, label %395, label %401

395:                                              ; preds = %388
  %396 = load i32, i32* %22, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 3
  %400 = load i32, i32* %399, align 8
  store i32 %400, i32* %22, align 4
  br label %388

401:                                              ; preds = %388
  %402 = load i8*, i8** %28, align 8
  %403 = load i32, i32* %22, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %405, i32 0, i32 2
  store i8* %402, i8** %406, align 16
  %407 = load i32, i32* %20, align 4
  %408 = load i32, i32* %21, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %410, i32 0, i32 3
  store i32 %407, i32* %411, align 8
  br label %431

412:                                              ; preds = %374
  %413 = load i32, i32* %21, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %414
  %416 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 8
  %418 = icmp eq i32 %417, -1
  %419 = zext i1 %418 to i32
  %420 = call i32 @vcos_assert(i32 %419)
  %421 = load i8*, i8** %28, align 8
  %422 = load i32, i32* %21, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %423
  %425 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %424, i32 0, i32 2
  store i8* %421, i8** %425, align 16
  %426 = load i32, i32* %21, align 4
  %427 = load i32, i32* %20, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %428
  %430 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %429, i32 0, i32 3
  store i32 %426, i32* %430, align 8
  br label %431

431:                                              ; preds = %412, %401
  br label %432

432:                                              ; preds = %431, %339
  br label %433

433:                                              ; preds = %432, %283, %276
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %21, align 4
  %436 = add nsw i32 %435, 1
  store i32 %436, i32* %21, align 4
  br label %272

437:                                              ; preds = %272
  br label %443

438:                                              ; preds = %201, %191
  %439 = load i32, i32* %20, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %441, i32 0, i32 0
  store i32 0, i32* %442, align 16
  br label %443

443:                                              ; preds = %438, %437
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %20, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %20, align 4
  br label %187

447:                                              ; preds = %187
  store i32 0, i32* %20, align 4
  br label %448

448:                                              ; preds = %526, %447
  %449 = load i32, i32* %20, align 4
  %450 = load i32, i32* @GLXX_CONFIG_MAX_VERTEX_ATTRIBS, align 4
  %451 = icmp slt i32 %449, %450
  br i1 %451, label %452, label %529

452:                                              ; preds = %448
  %453 = load i32, i32* %20, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %454
  %456 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %455, i32 0, i32 0
  %457 = load i32, i32* %456, align 16
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %518

459:                                              ; preds = %452
  %460 = load i32, i32* %20, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %462, i32 0, i32 3
  %464 = load i32, i32* %463, align 8
  %465 = icmp eq i32 %464, -1
  br i1 %465, label %466, label %518

466:                                              ; preds = %459
  %467 = load i32*, i32** %7, align 8
  %468 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %469 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %468, i32 0, i32 1
  %470 = load i32, i32* %20, align 4
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %471
  %473 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %472, i32 0, i32 1
  %474 = load i8*, i8** %473, align 8
  %475 = load i32, i32* %20, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %477, i32 0, i32 2
  %479 = load i8*, i8** %478, align 16
  %480 = load i32, i32* %20, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %481
  %483 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %482, i32 0, i32 1
  %484 = load i8*, i8** %483, align 8
  %485 = ptrtoint i8* %479 to i64
  %486 = ptrtoint i8* %484 to i64
  %487 = sub i64 %485, %486
  %488 = trunc i64 %487 to i32
  %489 = load i64, i64* @CACHE_SIG_ATTRIB_0, align 8
  %490 = load i32, i32* %20, align 4
  %491 = sext i32 %490 to i64
  %492 = add nsw i64 %489, %491
  %493 = call i32 @khrn_cache_lookup(i32* %467, i32* %469, i8* %474, i32 %488, i64 %492)
  store i32 %493, i32* %29, align 4
  %494 = load i32, i32* %29, align 4
  %495 = icmp eq i32 %494, -1
  br i1 %495, label %496, label %500

496:                                              ; preds = %466
  %497 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %498 = load i32, i32* @GL_OUT_OF_MEMORY, align 4
  %499 = call i32 @glxx_set_error(%struct.TYPE_14__* %497, i32 %498)
  store i32 1, i32* %26, align 4
  br label %650

500:                                              ; preds = %466
  %501 = load i32, i32* %29, align 4
  %502 = load i32, i32* @CACHE_ENTRY_T, align 4
  %503 = load i32, i32* @data, align 4
  %504 = call i32 @offsetof(i32 %502, i32 %503)
  %505 = add nsw i32 %501, %504
  %506 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %507 = load %struct.TYPE_10__*, %struct.TYPE_10__** %506, align 8
  %508 = load i32, i32* %20, align 4
  %509 = sext i32 %508 to i64
  %510 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %507, i64 %509
  %511 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %510, i32 0, i32 0
  store i32 %505, i32* %511, align 4
  %512 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %513 = load %struct.TYPE_10__*, %struct.TYPE_10__** %512, align 8
  %514 = load i32, i32* %20, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %513, i64 %515
  %517 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %516, i32 0, i32 1
  store i32 1, i32* %517, align 4
  br label %525

518:                                              ; preds = %459, %452
  %519 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %520 = load %struct.TYPE_10__*, %struct.TYPE_10__** %519, align 8
  %521 = load i32, i32* %20, align 4
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i64 %522
  %524 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %523, i32 0, i32 0
  store i32 -1, i32* %524, align 4
  br label %525

525:                                              ; preds = %518, %500
  br label %526

526:                                              ; preds = %525
  %527 = load i32, i32* %20, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, i32* %20, align 4
  br label %448

529:                                              ; preds = %448
  store i32 0, i32* %20, align 4
  br label %530

530:                                              ; preds = %620, %529
  %531 = load i32, i32* %20, align 4
  %532 = load i32, i32* @GLXX_CONFIG_MAX_VERTEX_ATTRIBS, align 4
  %533 = icmp slt i32 %531, %532
  br i1 %533, label %534, label %623

534:                                              ; preds = %530
  %535 = load i32, i32* %20, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %536
  %538 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %537, i32 0, i32 0
  %539 = load i32, i32* %538, align 16
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %619

541:                                              ; preds = %534
  %542 = load i32, i32* %20, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %543
  %545 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %544, i32 0, i32 3
  %546 = load i32, i32* %545, align 8
  %547 = icmp ne i32 %546, -1
  br i1 %547, label %548, label %619

548:                                              ; preds = %541
  %549 = load i32, i32* %20, align 4
  store i32 %549, i32* %22, align 4
  br label %550

550:                                              ; preds = %557, %548
  %551 = load i32, i32* %22, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %552
  %554 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %553, i32 0, i32 3
  %555 = load i32, i32* %554, align 8
  %556 = icmp ne i32 %555, -1
  br i1 %556, label %557, label %563

557:                                              ; preds = %550
  %558 = load i32, i32* %22, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i64 %559
  %561 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %560, i32 0, i32 3
  %562 = load i32, i32* %561, align 8
  store i32 %562, i32* %22, align 4
  br label %550

563:                                              ; preds = %550
  %564 = load i32, i32* %22, align 4
  %565 = icmp ne i32 %564, -1
  %566 = zext i1 %565 to i32
  %567 = call i32 @vcos_assert(i32 %566)
  %568 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %569 = load %struct.TYPE_10__*, %struct.TYPE_10__** %568, align 8
  %570 = load i32, i32* %22, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %569, i64 %571
  %573 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %572, i32 0, i32 0
  %574 = load i32, i32* %573, align 4
  %575 = icmp ne i32 %574, -1
  %576 = zext i1 %575 to i32
  %577 = call i32 @vcos_assert(i32 %576)
  %578 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %579 = load %struct.TYPE_10__*, %struct.TYPE_10__** %578, align 8
  %580 = load i32, i32* %22, align 4
  %581 = sext i32 %580 to i64
  %582 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %579, i64 %581
  %583 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %582, i32 0, i32 0
  %584 = load i32, i32* %583, align 4
  %585 = sext i32 %584 to i64
  %586 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %587 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %586, i32 0, i32 0
  %588 = load %struct.TYPE_11__*, %struct.TYPE_11__** %587, align 8
  %589 = load i32, i32* %20, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %588, i64 %590
  %592 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %591, i32 0, i32 1
  %593 = load i8*, i8** %592, align 8
  %594 = ptrtoint i8* %593 to i64
  %595 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %596 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %595, i32 0, i32 0
  %597 = load %struct.TYPE_11__*, %struct.TYPE_11__** %596, align 8
  %598 = load i32, i32* %22, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %597, i64 %599
  %601 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %600, i32 0, i32 1
  %602 = load i8*, i8** %601, align 8
  %603 = ptrtoint i8* %602 to i64
  %604 = sub i64 %594, %603
  %605 = add i64 %585, %604
  %606 = trunc i64 %605 to i32
  %607 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %608 = load %struct.TYPE_10__*, %struct.TYPE_10__** %607, align 8
  %609 = load i32, i32* %20, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %608, i64 %610
  %612 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %611, i32 0, i32 0
  store i32 %606, i32* %612, align 4
  %613 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %614 = load %struct.TYPE_10__*, %struct.TYPE_10__** %613, align 8
  %615 = load i32, i32* %20, align 4
  %616 = sext i32 %615 to i64
  %617 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %614, i64 %616
  %618 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %617, i32 0, i32 1
  store i32 0, i32* %618, align 4
  br label %619

619:                                              ; preds = %563, %541, %534
  br label %620

620:                                              ; preds = %619
  %621 = load i32, i32* %20, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %20, align 4
  br label %530

623:                                              ; preds = %530
  %624 = load i32, i32* @glintDrawElements_impl, align 4
  %625 = load i32*, i32** %7, align 8
  %626 = load i32, i32* @GLINTDRAWELEMENTS_ID, align 4
  %627 = load i64, i64* %9, align 8
  %628 = call i32 @RPC_ENUM(i64 %627)
  %629 = load i32, i32* %10, align 4
  %630 = call i32 @RPC_SIZEI(i32 %629)
  %631 = load i64, i64* %11, align 8
  %632 = call i32 @RPC_ENUM(i64 %631)
  %633 = load i64, i64* %13, align 8
  %634 = call i32 @RPC_UINT(i64 %633)
  %635 = call i32 @RPC_CALL5_IN_CTRL(i32 %624, i32* %625, i32 %626, i32 %628, i32 %630, i32 %632, i32 %634, %struct.TYPE_15__* %25, i32 16)
  br label %649

636:                                              ; preds = %182
  %637 = load i32, i32* @glintDrawElements_impl, align 4
  %638 = load i32*, i32** %7, align 8
  %639 = load i32, i32* @GLINTDRAWELEMENTS_ID, align 4
  %640 = load i64, i64* %9, align 8
  %641 = call i32 @RPC_ENUM(i64 %640)
  %642 = load i32, i32* %10, align 4
  %643 = call i32 @RPC_SIZEI(i32 %642)
  %644 = load i64, i64* %11, align 8
  %645 = call i32 @RPC_ENUM(i64 %644)
  %646 = load i64, i64* %13, align 8
  %647 = call i32 @RPC_UINT(i64 %646)
  %648 = call i32 @RPC_CALL5_IN_CTRL(i32 %637, i32* %638, i32 %639, i32 %641, i32 %643, i32 %645, i32 %647, %struct.TYPE_15__* %25, i32 4)
  br label %649

649:                                              ; preds = %636, %623
  store i32 0, i32* %26, align 4
  br label %650

650:                                              ; preds = %649, %496, %100, %59
  %651 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %651)
  %652 = load i32, i32* %26, align 4
  switch i32 %652, label %654 [
    i32 0, label %653
    i32 1, label %653
  ]

653:                                              ; preds = %650, %650
  ret void

654:                                              ; preds = %650
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vcos_assert(i32) #2

declare dso_local i64 @IS_OPENGLES_11(i32*) #2

declare dso_local i32 @glxx_set_error(%struct.TYPE_14__*, i32) #2

declare dso_local i32 @align_length(i32) #2

declare dso_local i32 @khrn_get_type_size(i32) #2

declare dso_local i32 @find_max(i32, i32, i8*) #2

declare dso_local i32 @khrn_cache_lookup(i32*, i32*, i8*, i32, i64) #2

declare dso_local i32 @offsetof(i32, i32) #2

declare dso_local i32 @RPC_INT_RES(i32) #2

declare dso_local i32 @RPC_CALL3_RES(i32, i32*, i32, i32, i32, i32) #2

declare dso_local i32 @RPC_SIZEI(i32) #2

declare dso_local i32 @RPC_ENUM(i64) #2

declare dso_local i32 @RPC_UINT(i64) #2

declare dso_local i32 @calc_length(i32, i32, i32, i32) #2

declare dso_local i32 @RPC_CALL5_IN_CTRL(i32, i32*, i32, i32, i32, i32, i32, %struct.TYPE_15__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
