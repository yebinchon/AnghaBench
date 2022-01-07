; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_BasicUISelect.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_ui_basic.c_BasicUISelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i32 }

@BasicUISelect.prefix = internal global [100 x i8*] zeroinitializer, align 16
@BasicUISelect.item = internal global [100 x i8*] zeroinitializer, align 16
@BasicUISelect.suffix = internal global [100 x i8*] zeroinitializer, align 16
@BasicUISelect.tip = internal global [100 x i8*] zeroinitializer, align 16
@BasicUISelect.nonselectable = internal global [100 x i32] zeroinitializer, align 16
@UI_ITEM_END = common dso_local global i32 0, align 4
@UI_ITEM_HIDDEN = common dso_local global i32 0, align 4
@UI_ITEM_TIP = common dso_local global i32 0, align 4
@UI_ITEM_TYPE = common dso_local global i32 0, align 4
@UI_ITEM_CHECK = common dso_local global i32 0, align 4
@UI_ITEM_CHECKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"No \00", align 1
@UI_SELECT_POPUP = common dso_local global i32 0, align 4
@UI_SELECT_DRAG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, %struct.TYPE_3__*, i32*)* @BasicUISelect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BasicUISelect(i8* %0, i32 %1, i32 %2, %struct.TYPE_3__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_3__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %14, align 8
  br label %23

23:                                               ; preds = %119, %5
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UI_ITEM_END, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %122

29:                                               ; preds = %23
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @UI_ITEM_HIDDEN, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %118

35:                                               ; preds = %29
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.prefix, i64 0, i64 %40
  store i8* %38, i8** %41, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.item, i64 0, i64 %46
  store i8* %44, i8** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @UI_ITEM_TIP, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %35
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.suffix, i64 0, i64 %56
  store i8* null, i8** %57, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 3
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.tip, i64 0, i64 %62
  store i8* %60, i8** %63, align 8
  br label %99

64:                                               ; preds = %35
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @UI_ITEM_TYPE, align 4
  %69 = and i32 %67, %68
  %70 = load i32, i32* @UI_ITEM_CHECK, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %64
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @UI_ITEM_CHECKED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.suffix, i64 0, i64 %81
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %82, align 8
  br label %87

83:                                               ; preds = %72
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.suffix, i64 0, i64 %85
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %86, align 8
  br label %87

87:                                               ; preds = %83, %79
  br label %95

88:                                               ; preds = %64
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.suffix, i64 0, i64 %93
  store i8* %91, i8** %94, align 8
  br label %95

95:                                               ; preds = %88, %87
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.tip, i64 0, i64 %97
  store i8* null, i8** %98, align 8
  br label %99

99:                                               ; preds = %95, %54
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = icmp slt i32 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [100 x i32], [100 x i32]* @BasicUISelect.nonselectable, i64 0, i64 %106
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %9, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %99
  %114 = load i32, i32* %12, align 4
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %113, %99
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %115, %29
  br label %119

119:                                              ; preds = %118
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 1
  store %struct.TYPE_3__* %121, %struct.TYPE_3__** %14, align 8
  br label %23

122:                                              ; preds = %23
  %123 = load i32, i32* %12, align 4
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %122
  store i32 -1, i32* %6, align 4
  br label %274

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* @UI_SELECT_POPUP, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %200

131:                                              ; preds = %126
  store i32 0, i32* %15, align 4
  store i32 0, i32* %20, align 4
  br label %132

132:                                              ; preds = %176, %131
  %133 = load i32, i32* %20, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %179

136:                                              ; preds = %132
  %137 = load i32, i32* %20, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.item, i64 0, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strlen(i8* %140)
  store i32 %141, i32* %21, align 4
  %142 = load i32, i32* %20, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.prefix, i64 0, i64 %143
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %155

147:                                              ; preds = %136
  %148 = load i32, i32* %20, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.prefix, i64 0, i64 %149
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @strlen(i8* %151)
  %153 = load i32, i32* %21, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %21, align 4
  br label %155

155:                                              ; preds = %147, %136
  %156 = load i32, i32* %20, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.suffix, i64 0, i64 %157
  %159 = load i8*, i8** %158, align 8
  %160 = icmp ne i8* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %155
  %162 = load i32, i32* %20, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [100 x i8*], [100 x i8*]* @BasicUISelect.suffix, i64 0, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @strlen(i8* %165)
  %167 = load i32, i32* %21, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %21, align 4
  br label %169

169:                                              ; preds = %161, %155
  %170 = load i32, i32* %21, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp sgt i32 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i32, i32* %21, align 4
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %173, %169
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %20, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %20, align 4
  br label %132

179:                                              ; preds = %132
  %180 = load i32, i32* %15, align 4
  %181 = icmp sgt i32 %180, 38
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  store i32 38, i32* %15, align 4
  br label %183

183:                                              ; preds = %182, %179
  %184 = load i32, i32* %15, align 4
  %185 = sub nsw i32 40, %184
  %186 = sdiv i32 %185, 2
  %187 = sub nsw i32 %186, 1
  store i32 %187, i32* %16, align 4
  %188 = load i32, i32* %16, align 4
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %188, %189
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %18, align 4
  %192 = load i32, i32* %12, align 4
  %193 = sub nsw i32 24, %192
  %194 = sdiv i32 %193, 2
  %195 = sub nsw i32 %194, 1
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %17, align 4
  %197 = load i32, i32* %12, align 4
  %198 = add nsw i32 %196, %197
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %19, align 4
  br label %204

200:                                              ; preds = %126
  %201 = call i32 (...) @ClearScreen()
  %202 = load i8*, i8** %7, align 8
  %203 = call i32 @TitleScreen(i8* %202)
  store i32 38, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 1, i32* %17, align 4
  store i32 39, i32* %18, align 4
  store i32 23, i32* %19, align 4
  br label %204

204:                                              ; preds = %200, %183
  %205 = load i32, i32* %17, align 4
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %204
  store i32 0, i32* %17, align 4
  br label %208

208:                                              ; preds = %207, %204
  %209 = load i32, i32* %19, align 4
  %210 = icmp sgt i32 %209, 23
  br i1 %210, label %211, label %212

211:                                              ; preds = %208
  store i32 23, i32* %19, align 4
  br label %212

212:                                              ; preds = %211, %208
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %17, align 4
  %215 = load i32, i32* %18, align 4
  %216 = load i32, i32* %19, align 4
  %217 = call i32 @Box(i32 154, i32 148, i32 %213, i32 %214, i32 %215, i32 %216)
  %218 = load i32, i32* %13, align 4
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %19, align 4
  %221 = load i32, i32* %17, align 4
  %222 = sub nsw i32 %220, %221
  %223 = sub nsw i32 %222, 1
  %224 = load i32, i32* %16, align 4
  %225 = add nsw i32 %224, 1
  %226 = load i32, i32* %17, align 4
  %227 = add nsw i32 %226, 1
  %228 = load i32, i32* %15, align 4
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* @UI_SELECT_DRAG, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %212
  %234 = load i32, i32* @TRUE, align 4
  br label %237

235:                                              ; preds = %212
  %236 = load i32, i32* @FALSE, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  %239 = load i32*, i32** %11, align 8
  %240 = call i32 @Select(i32 %218, i32 %219, i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @BasicUISelect.item, i64 0, i64 0), i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @BasicUISelect.prefix, i64 0, i64 0), i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @BasicUISelect.suffix, i64 0, i64 0), i8** getelementptr inbounds ([100 x i8*], [100 x i8*]* @BasicUISelect.tip, i64 0, i64 0), i32* getelementptr inbounds ([100 x i32], [100 x i32]* @BasicUISelect.nonselectable, i64 0, i64 0), i32 %223, i32 1, i32 %225, i32 %227, i32 %228, i32 %238, i32* null, i32* %239)
  store i32 %240, i32* %13, align 4
  %241 = load i32, i32* %13, align 4
  %242 = icmp slt i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %237
  %244 = load i32, i32* %13, align 4
  store i32 %244, i32* %6, align 4
  br label %274

245:                                              ; preds = %237
  %246 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  store %struct.TYPE_3__* %246, %struct.TYPE_3__** %14, align 8
  br label %247

247:                                              ; preds = %270, %245
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %249 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @UI_ITEM_END, align 4
  %252 = icmp ne i32 %250, %251
  br i1 %252, label %253, label %273

253:                                              ; preds = %247
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @UI_ITEM_HIDDEN, align 4
  %258 = icmp ne i32 %256, %257
  br i1 %258, label %259, label %269

259:                                              ; preds = %253
  %260 = load i32, i32* %13, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %259
  %263 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  store i32 %265, i32* %6, align 4
  br label %274

266:                                              ; preds = %259
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, -1
  store i32 %268, i32* %13, align 4
  br label %269

269:                                              ; preds = %266, %253
  br label %270

270:                                              ; preds = %269
  %271 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 1
  store %struct.TYPE_3__* %272, %struct.TYPE_3__** %14, align 8
  br label %247

273:                                              ; preds = %247
  store i32 -1, i32* %6, align 4
  br label %274

274:                                              ; preds = %273, %262, %243, %125
  %275 = load i32, i32* %6, align 4
  ret i32 %275
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ClearScreen(...) #1

declare dso_local i32 @TitleScreen(i8*) #1

declare dso_local i32 @Box(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Select(i32, i32, i8**, i8**, i8**, i8**, i32*, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
