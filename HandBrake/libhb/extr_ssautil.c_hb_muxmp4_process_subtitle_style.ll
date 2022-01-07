; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_ssautil.c_hb_muxmp4_process_subtitle_style.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_ssautil.c_hb_muxmp4_process_subtitle_style.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [5 x i8] c"styl\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hb_muxmp4_process_subtitle_style(%struct.TYPE_12__* %0, i8* %1, i8** %2, i8** %3, i32* %4) #0 {
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i8* null, i8** %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load i8**, i8*** %8, align 8
  store i8* null, i8** %28, align 8
  %29 = load i8**, i8*** %9, align 8
  store i8* null, i8** %29, align 8
  %30 = load i32*, i32** %10, align 8
  store i32 0, i32* %30, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %32, align 8
  %34 = call i32 @ssa_style_reset(%struct.TYPE_14__* %33)
  %35 = load i8*, i8** %7, align 8
  %36 = call i8** @get_fields(i8* %35, i32 9)
  store i8** %36, i8*** %20, align 8
  %37 = load i8**, i8*** %20, align 8
  %38 = call i32 @hb_str_vlen(i8** %37)
  %39 = icmp slt i32 %38, 9
  br i1 %39, label %40, label %41

40:                                               ; preds = %5
  br label %276

41:                                               ; preds = %5
  %42 = load i8**, i8*** %20, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 2
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %19, align 8
  %45 = load i8**, i8*** %20, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 8
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %18, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = load i8*, i8** %19, align 8
  %52 = call i32 @ssa_style_set(%struct.TYPE_14__* %50, i8* %51)
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %58 = call i32 @hb_tx3g_style_reset(%struct.TYPE_12__* %57)
  store i32 0, i32* %13, align 4
  %59 = call i32 @check_realloc_output(%struct.TYPE_13__* %16, i32 1)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %41
  br label %276

62:                                               ; preds = %41
  br label %63

63:                                               ; preds = %186, %62
  %64 = load i8*, i8** %18, align 8
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %187

71:                                               ; preds = %63
  %72 = load i8*, i8** %18, align 8
  %73 = load i32, i32* %13, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %77, align 8
  %79 = call i8* @ssa_to_text(i8* %75, i32* %12, %struct.TYPE_14__* %78)
  store i8* %79, i8** %17, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %71
  br label %187

83:                                               ; preds = %71
  store i32 0, i32* %15, align 4
  store i32 0, i32* %21, align 4
  br label %84

84:                                               ; preds = %153, %83
  %85 = load i8*, i8** %17, align 8
  %86 = load i32, i32* %21, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %157

92:                                               ; preds = %84
  %93 = load i8*, i8** %17, align 8
  %94 = load i32, i32* %21, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  store i8 %97, i8* %24, align 1
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %11, align 4
  %100 = load i8, i8* %24, align 1
  %101 = sext i8 %100 to i32
  %102 = and i32 %101, 128
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  store i32 1, i32* %22, align 4
  br label %127

105:                                              ; preds = %92
  %106 = load i8, i8* %24, align 1
  %107 = sext i8 %106 to i32
  %108 = and i32 %107, 224
  %109 = icmp eq i32 %108, 192
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 2, i32* %22, align 4
  br label %126

111:                                              ; preds = %105
  %112 = load i8, i8* %24, align 1
  %113 = sext i8 %112 to i32
  %114 = and i32 %113, 240
  %115 = icmp eq i32 %114, 224
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 3, i32* %22, align 4
  br label %125

117:                                              ; preds = %111
  %118 = load i8, i8* %24, align 1
  %119 = sext i8 %118 to i32
  %120 = and i32 %119, 248
  %121 = icmp eq i32 %120, 240
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  store i32 4, i32* %22, align 4
  br label %124

123:                                              ; preds = %117
  store i32 1, i32* %22, align 4
  br label %124

124:                                              ; preds = %123, %122
  br label %125

125:                                              ; preds = %124, %116
  br label %126

126:                                              ; preds = %125, %110
  br label %127

127:                                              ; preds = %126, %104
  store i32 1, i32* %23, align 4
  br label %128

128:                                              ; preds = %145, %127
  %129 = load i32, i32* %23, align 4
  %130 = load i32, i32* %22, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %128
  %133 = load i8*, i8** %17, align 8
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* %23, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %133, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br label %142

142:                                              ; preds = %132, %128
  %143 = phi i1 [ false, %128 ], [ %141, %132 ]
  br i1 %143, label %144, label %148

144:                                              ; preds = %142
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %23, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %23, align 4
  br label %128

148:                                              ; preds = %142
  %149 = load i32, i32* %23, align 4
  store i32 %149, i32* %22, align 4
  %150 = load i32, i32* %22, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %22, align 4
  %155 = load i32, i32* %21, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %21, align 4
  br label %84

157:                                              ; preds = %84
  %158 = load i32, i32* %14, align 4
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %158, %159
  %161 = add nsw i32 %160, 1
  %162 = call i32 @check_realloc_output(%struct.TYPE_13__* %16, i32 %161)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %157
  br label %276

165:                                              ; preds = %157
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %167 = load i8*, i8** %166, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8, i8* %167, i64 %169
  %171 = load i8*, i8** %17, align 8
  %172 = call i32 @strcpy(i8* %170, i8* %171)
  %173 = load i8*, i8** %17, align 8
  %174 = call i32 @free(i8* %173)
  %175 = load i32, i32* %15, align 4
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %13, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %13, align 4
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %182 = load i32, i32* %11, align 4
  %183 = call i32 @tx3g_update_style(%struct.TYPE_12__* %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %165
  br label %276

186:                                              ; preds = %165
  br label %63

187:                                              ; preds = %82, %63
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  store i32 1, i32* %189, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %191 = load i32, i32* %11, align 4
  %192 = call i32 @tx3g_update_style(%struct.TYPE_12__* %190, i32 %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %187
  br label %276

195:                                              ; preds = %187
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = load i32, i32* %14, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8, i8* %197, i64 %199
  store i8 0, i8* %200, align 1
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %270

205:                                              ; preds = %195
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = mul nsw i32 %208, 12
  %210 = add nsw i32 10, %209
  %211 = load i32*, i32** %10, align 8
  store i32 %210, i32* %211, align 4
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 2
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 4
  %217 = call i32 @memcpy(i32* %216, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 0
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  store i32 0, i32* %222, align 4
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 1
  store i32 0, i32* %227, align 4
  %228 = load i32*, i32** %10, align 8
  %229 = load i32, i32* %228, align 4
  %230 = ashr i32 %229, 8
  %231 = and i32 %230, 255
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 2
  store i32 %231, i32* %236, align 4
  %237 = load i32*, i32** %10, align 8
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 255
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 3
  store i32 %239, i32* %244, align 4
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = ashr i32 %247, 8
  %249 = and i32 %248, 255
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 8
  store i32 %249, i32* %254, align 4
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 255
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 9
  store i32 %258, i32* %263, align 4
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 0
  %267 = load i32*, i32** %266, align 8
  %268 = bitcast i32* %267 to i8*
  %269 = load i8**, i8*** %9, align 8
  store i8* %268, i8** %269, align 8
  br label %270

270:                                              ; preds = %205, %195
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = load i8**, i8*** %8, align 8
  store i8* %272, i8** %273, align 8
  %274 = load i8**, i8*** %20, align 8
  %275 = call i32 @hb_str_vfree(i8** %274)
  br label %288

276:                                              ; preds = %194, %185, %164, %61, %40
  %277 = load i8**, i8*** %20, align 8
  %278 = call i32 @hb_str_vfree(i8** %277)
  %279 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i32 @free(i8* %280)
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 0
  %285 = load i32*, i32** %284, align 8
  %286 = bitcast i32* %285 to i8*
  %287 = call i32 @free(i8* %286)
  br label %288

288:                                              ; preds = %276, %270
  ret void
}

declare dso_local i32 @ssa_style_reset(%struct.TYPE_14__*) #1

declare dso_local i8** @get_fields(i8*, i32) #1

declare dso_local i32 @hb_str_vlen(i8**) #1

declare dso_local i32 @ssa_style_set(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @hb_tx3g_style_reset(%struct.TYPE_12__*) #1

declare dso_local i32 @check_realloc_output(%struct.TYPE_13__*, i32) #1

declare dso_local i8* @ssa_to_text(i8*, i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @tx3g_update_style(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @hb_str_vfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
