; ModuleID = '/home/carl/AnghaBench/Craft/src/extr_main.c_on_key.c'
source_filename = "/home/carl/AnghaBench/Craft/src/extr_main.c_on_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32, i32, i32, i32, i32, i32, i64, i32* }

@GLFW_MOD_CONTROL = common dso_local global i32 0, align 4
@GLFW_MOD_SUPER = common dso_local global i32 0, align 4
@GLFW_CURSOR = common dso_local global i32 0, align 4
@GLFW_CURSOR_DISABLED = common dso_local global i64 0, align 8
@GLFW_RELEASE = common dso_local global i32 0, align 4
@GLFW_KEY_BACKSPACE = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_2__* null, align 8
@GLFW_PRESS = common dso_local global i32 0, align 4
@GLFW_KEY_ESCAPE = common dso_local global i32 0, align 4
@GLFW_CURSOR_NORMAL = common dso_local global i32 0, align 4
@GLFW_KEY_ENTER = common dso_local global i32 0, align 4
@GLFW_MOD_SHIFT = common dso_local global i32 0, align 4
@MAX_TEXT_LENGTH = common dso_local global i32 0, align 4
@CRAFT_KEY_SIGN = common dso_local global i8 0, align 1
@CRAFT_KEY_FLY = common dso_local global i32 0, align 4
@CRAFT_KEY_ITEM_NEXT = common dso_local global i32 0, align 4
@item_count = common dso_local global i32 0, align 4
@CRAFT_KEY_ITEM_PREV = common dso_local global i32 0, align 4
@CRAFT_KEY_OBSERVE = common dso_local global i32 0, align 4
@CRAFT_KEY_OBSERVE_INSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_key(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @GLFW_MOD_CONTROL, align 4
  %23 = load i32, i32* @GLFW_MOD_SUPER, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @GLFW_CURSOR, align 4
  %28 = call i64 @glfwGetInputMode(i32* %26, i32 %27)
  %29 = load i64, i64* @GLFW_CURSOR_DISABLED, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @GLFW_RELEASE, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  br label %317

36:                                               ; preds = %5
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @GLFW_KEY_BACKSPACE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %62

40:                                               ; preds = %36
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 7
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @strlen(i8* %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8 0, i8* %59, align 1
  br label %60

60:                                               ; preds = %52, %45
  br label %61

61:                                               ; preds = %60, %40
  br label %62

62:                                               ; preds = %61, %36
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @GLFW_PRESS, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62
  br label %317

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @GLFW_KEY_ESCAPE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %67
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 7
  store i64 0, i64* %78, align 8
  br label %88

79:                                               ; preds = %71
  %80 = load i32, i32* %12, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = load i32, i32* @GLFW_CURSOR, align 4
  %85 = load i32, i32* @GLFW_CURSOR_NORMAL, align 4
  %86 = call i32 @glfwSetInputMode(i32* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  br label %88

88:                                               ; preds = %87, %76
  br label %89

89:                                               ; preds = %88, %67
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @GLFW_KEY_ENTER, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %187

93:                                               ; preds = %89
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 7
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %178

98:                                               ; preds = %93
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* @GLFW_MOD_SHIFT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %127

103:                                              ; preds = %98
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @strlen(i8* %106)
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* @MAX_TEXT_LENGTH, align 4
  %110 = sub nsw i32 %109, 1
  %111 = icmp slt i32 %108, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %103
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  store i8 13, i8* %118, align 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  store i8 0, i8* %125, align 1
  br label %126

126:                                              ; preds = %112, %103
  br label %177

127:                                              ; preds = %98
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 7
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = load i8, i8* @CRAFT_KEY_SIGN, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %135, %137
  br i1 %138, label %139, label %157

139:                                              ; preds = %127
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 8
  %142 = load i32*, i32** %141, align 8
  store i32* %142, i32** %15, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = call i64 @hit_test_face(i32* %143, i32* %16, i32* %17, i32* %18, i32* %19)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %156

146:                                              ; preds = %139
  %147 = load i32, i32* %16, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* %19, align 4
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 0
  %153 = load i8*, i8** %152, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 1
  %155 = call i32 @set_sign(i32 %147, i32 %148, i32 %149, i32 %150, i8* %154)
  br label %156

156:                                              ; preds = %146, %139
  br label %176

157:                                              ; preds = %127
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 0
  %162 = load i8, i8* %161, align 1
  %163 = sext i8 %162 to i32
  %164 = icmp eq i32 %163, 47
  br i1 %164, label %165, label %170

165:                                              ; preds = %157
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @parse_command(i8* %168, i32 1)
  br label %175

170:                                              ; preds = %157
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i8*, i8** %172, align 8
  %174 = call i32 @client_talk(i8* %173)
  br label %175

175:                                              ; preds = %170, %165
  br label %176

176:                                              ; preds = %175, %156
  br label %177

177:                                              ; preds = %176, %126
  br label %186

178:                                              ; preds = %93
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %178
  %182 = call i32 (...) @on_right_click()
  br label %185

183:                                              ; preds = %178
  %184 = call i32 (...) @on_left_click()
  br label %185

185:                                              ; preds = %183, %181
  br label %186

186:                                              ; preds = %185, %177
  br label %187

187:                                              ; preds = %186, %89
  %188 = load i32, i32* %11, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %187
  %191 = load i32, i32* %7, align 4
  %192 = icmp eq i32 %191, 86
  br i1 %192, label %193, label %219

193:                                              ; preds = %190
  %194 = load i32*, i32** %6, align 8
  %195 = call i8* @glfwGetClipboardString(i32* %194)
  store i8* %195, i8** %20, align 8
  %196 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %197 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %196, i32 0, i32 7
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %215

200:                                              ; preds = %193
  %201 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %202 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %201, i32 0, i32 1
  store i32 1, i32* %202, align 8
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load i8*, i8** %20, align 8
  %207 = load i32, i32* @MAX_TEXT_LENGTH, align 4
  %208 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = call i32 @strlen(i8* %210)
  %212 = sub nsw i32 %207, %211
  %213 = sub nsw i32 %212, 1
  %214 = call i32 @strncat(i8* %205, i8* %206, i32 %213)
  br label %218

215:                                              ; preds = %193
  %216 = load i8*, i8** %20, align 8
  %217 = call i32 @parse_command(i8* %216, i32 0)
  br label %218

218:                                              ; preds = %215, %200
  br label %219

219:                                              ; preds = %218, %190, %187
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 7
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %317, label %224

224:                                              ; preds = %219
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @CRAFT_KEY_FLY, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %237

228:                                              ; preds = %224
  %229 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 4
  br label %237

237:                                              ; preds = %228, %224
  %238 = load i32, i32* %7, align 4
  %239 = icmp sge i32 %238, 49
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  %241 = load i32, i32* %7, align 4
  %242 = icmp sle i32 %241, 57
  br i1 %242, label %243, label %248

243:                                              ; preds = %240
  %244 = load i32, i32* %7, align 4
  %245 = sub nsw i32 %244, 49
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 3
  store i32 %245, i32* %247, align 8
  br label %248

248:                                              ; preds = %243, %240, %237
  %249 = load i32, i32* %7, align 4
  %250 = icmp eq i32 %249, 48
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 3
  store i32 9, i32* %253, align 8
  br label %254

254:                                              ; preds = %251, %248
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* @CRAFT_KEY_ITEM_NEXT, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %267

258:                                              ; preds = %254
  %259 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %260 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 8
  %262 = add nsw i32 %261, 1
  %263 = load i32, i32* @item_count, align 4
  %264 = srem i32 %262, %263
  %265 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 3
  store i32 %264, i32* %266, align 8
  br label %267

267:                                              ; preds = %258, %254
  %268 = load i32, i32* %7, align 4
  %269 = load i32, i32* @CRAFT_KEY_ITEM_PREV, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %286

271:                                              ; preds = %267
  %272 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %273 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %272, i32 0, i32 3
  %274 = load i32, i32* %273, align 8
  %275 = add nsw i32 %274, -1
  store i32 %275, i32* %273, align 8
  %276 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %277 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = icmp slt i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %271
  %281 = load i32, i32* @item_count, align 4
  %282 = sub nsw i32 %281, 1
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 3
  store i32 %282, i32* %284, align 8
  br label %285

285:                                              ; preds = %280, %271
  br label %286

286:                                              ; preds = %285, %267
  %287 = load i32, i32* %7, align 4
  %288 = load i32, i32* @CRAFT_KEY_OBSERVE, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %301

290:                                              ; preds = %286
  %291 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 4
  %293 = load i32, i32* %292, align 4
  %294 = add nsw i32 %293, 1
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 8
  %298 = srem i32 %294, %297
  %299 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 4
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %290, %286
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* @CRAFT_KEY_OBSERVE_INSET, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %316

305:                                              ; preds = %301
  %306 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %307 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %306, i32 0, i32 6
  %308 = load i32, i32* %307, align 4
  %309 = add nsw i32 %308, 1
  %310 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %310, i32 0, i32 5
  %312 = load i32, i32* %311, align 8
  %313 = srem i32 %309, %312
  %314 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g, align 8
  %315 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %314, i32 0, i32 6
  store i32 %313, i32* %315, align 4
  br label %316

316:                                              ; preds = %305, %301
  br label %317

317:                                              ; preds = %35, %66, %316, %219
  ret void
}

declare dso_local i64 @glfwGetInputMode(i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @glfwSetInputMode(i32*, i32, i32) #1

declare dso_local i64 @hit_test_face(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @set_sign(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @parse_command(i8*, i32) #1

declare dso_local i32 @client_talk(i8*) #1

declare dso_local i32 @on_right_click(...) #1

declare dso_local i32 @on_left_click(...) #1

declare dso_local i8* @glfwGetClipboardString(i32*) #1

declare dso_local i32 @strncat(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
