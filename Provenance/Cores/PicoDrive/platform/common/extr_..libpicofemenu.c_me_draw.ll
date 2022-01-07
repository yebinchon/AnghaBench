; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_me_draw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/common/extr_..libpicofemenu.c_me_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8* (i32, i32*)*, i32, i8*, i64, i64, i32, i32 }

@me_mfont_w = common dso_local global i32 0, align 4
@me_mfont_h = common dso_local global i32 0, align 4
@g_menuscreen_w = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"width %d > %d\0A\00", align 1
@g_menuscreen_h = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"height %d > %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%i\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@menu_error_msg = common dso_local global i64* null, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"menu msg doesn't fit!\0A\00", align 1
@menu_error_time = common dso_local global i32 0, align 4
@me_sfont_h = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32, void ()*)* @me_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @me_draw(%struct.TYPE_4__* %0, i32 %1, void ()* %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca void ()*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8**, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %4, align 8
  store i32 %1, i32* %5, align 4
  store void ()* %2, void ()** %6, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %25, %struct.TYPE_4__** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %26 = load i32, i32* @me_mfont_w, align 4
  %27 = mul nsw i32 27, %26
  store i32 %27, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  br label %29

29:                                               ; preds = %142, %3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %147

34:                                               ; preds = %29
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  br label %142

40:                                               ; preds = %34
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %45, %struct.TYPE_4__** %8, align 8
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %44, %40
  store i8* null, i8** %16, align 8
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @strlen(i8* %50)
  %52 = load i32, i32* @me_mfont_w, align 4
  %53 = mul nsw i32 %51, %52
  store i32 %53, i32* %19, align 4
  %54 = load i32, i32* %19, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %47
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i8* (i32, i32*)*, i8* (i32, i32*)** %58, align 8
  %60 = icmp ne i8* (i32, i32*)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %56
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i8* (i32, i32*)*, i8* (i32, i32*)** %63, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = call i8* %64(i32 %67, i32* %13)
  store i8* %68, i8** %16, align 8
  br label %69

69:                                               ; preds = %61, %56, %47
  %70 = load i8*, i8** %16, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i8*, i8** %16, align 8
  %74 = call i32 @strlen(i8* %73)
  %75 = load i32, i32* @me_mfont_w, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %19, align 4
  br label %77

77:                                               ; preds = %72, %69
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 134
  br i1 %81, label %82, label %133

82:                                               ; preds = %77
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* @me_mfont_w, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %82
  %91 = load i32, i32* %14, align 4
  store i32 %91, i32* %19, align 4
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %132 [
    i32 134, label %95
    i32 129, label %96
    i32 128, label %96
    i32 133, label %101
    i32 132, label %101
    i32 131, label %101
    i32 130, label %127
  ]

95:                                               ; preds = %90
  br label %132

96:                                               ; preds = %90, %90
  %97 = load i32, i32* @me_mfont_w, align 4
  %98 = mul nsw i32 %97, 3
  %99 = load i32, i32* %19, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %19, align 4
  br label %132

101:                                              ; preds = %90, %90, %90
  store i8* null, i8** %16, align 8
  store i32 0, i32* %13, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i8* (i32, i32*)*, i8* (i32, i32*)** %103, align 8
  %105 = icmp ne i8* (i32, i32*)* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i8* (i32, i32*)*, i8* (i32, i32*)** %108, align 8
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = call i8* %109(i32 %112, i32* %13)
  store i8* %113, i8** %16, align 8
  br label %114

114:                                              ; preds = %106, %101
  %115 = load i8*, i8** %16, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %114
  %118 = load i8*, i8** %16, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = load i32, i32* %13, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* @me_mfont_w, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %19, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %19, align 4
  br label %126

126:                                              ; preds = %117, %114
  br label %132

127:                                              ; preds = %90
  %128 = load i32, i32* @me_mfont_w, align 4
  %129 = mul nsw i32 10, %128
  %130 = load i32, i32* %19, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %19, align 4
  br label %132

132:                                              ; preds = %90, %127, %126, %96, %95
  br label %133

133:                                              ; preds = %132, %77
  %134 = load i32, i32* %19, align 4
  %135 = load i32, i32* %11, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %133
  %138 = load i32, i32* %19, align 4
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %137, %133
  %140 = load i32, i32* %18, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %18, align 4
  br label %142

142:                                              ; preds = %139, %39
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 1
  store %struct.TYPE_4__* %144, %struct.TYPE_4__** %7, align 8
  %145 = load i32, i32* %17, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %17, align 4
  br label %29

147:                                              ; preds = %29
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* @me_mfont_h, align 4
  %150 = mul nsw i32 %148, %149
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* @me_mfont_w, align 4
  %152 = mul nsw i32 %151, 2
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, %152
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = load i32, i32* @g_menuscreen_w, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %147
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @g_menuscreen_w, align 4
  %161 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i32, i32* @g_menuscreen_w, align 4
  store i32 %162, i32* %11, align 4
  br label %163

163:                                              ; preds = %158, %147
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* @g_menuscreen_h, align 4
  %166 = icmp sgt i32 %164, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %163
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* @g_menuscreen_h, align 4
  %170 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %168, i32 %169)
  %171 = load i32, i32* @g_menuscreen_h, align 4
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %167, %163
  %173 = load i32, i32* @g_menuscreen_w, align 4
  %174 = sdiv i32 %173, 2
  %175 = load i32, i32* %11, align 4
  %176 = sdiv i32 %175, 2
  %177 = sub nsw i32 %174, %176
  store i32 %177, i32* %9, align 4
  %178 = load i32, i32* @g_menuscreen_h, align 4
  %179 = sdiv i32 %178, 2
  %180 = load i32, i32* %12, align 4
  %181 = sdiv i32 %180, 2
  %182 = sub nsw i32 %179, %181
  store i32 %182, i32* %10, align 4
  %183 = call i32 @menu_draw_begin(i32 1, i32 0)
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* @me_mfont_h, align 4
  %188 = mul nsw i32 %186, %187
  %189 = add nsw i32 %185, %188
  %190 = load i32, i32* %11, align 4
  %191 = call i32 @menu_draw_selection(i32 %184, i32 %189, i32 %190)
  %192 = load i32, i32* @me_mfont_w, align 4
  %193 = mul nsw i32 %192, 2
  %194 = load i32, i32* %9, align 4
  %195 = add nsw i32 %194, %193
  store i32 %195, i32* %9, align 4
  %196 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %196, %struct.TYPE_4__** %7, align 8
  br label %197

197:                                              ; preds = %364, %172
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %367

202:                                              ; preds = %197
  store i32 0, i32* %22, align 4
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %202
  br label %364

208:                                              ; preds = %202
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  store i8* %211, i8** %16, align 8
  %212 = load i8*, i8** %16, align 8
  %213 = call i32 @strlen(i8* %212)
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %229

215:                                              ; preds = %208
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 1
  %218 = load i8* (i32, i32*)*, i8* (i32, i32*)** %217, align 8
  %219 = icmp ne i8* (i32, i32*)* %218, null
  br i1 %219, label %220, label %228

220:                                              ; preds = %215
  %221 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 1
  %223 = load i8* (i32, i32*)*, i8* (i32, i32*)** %222, align 8
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = call i8* %223(i32 %226, i32* %13)
  store i8* %227, i8** %16, align 8
  br label %228

228:                                              ; preds = %220, %215
  br label %229

229:                                              ; preds = %228, %208
  %230 = load i8*, i8** %16, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %244

232:                                              ; preds = %229
  %233 = load i32, i32* %9, align 4
  %234 = load i32, i32* %10, align 4
  %235 = load i8*, i8** %16, align 8
  %236 = call i32 (i32, i32, ...) @text_out16(i32 %233, i32 %234, i8* %235)
  %237 = load i32, i32* %9, align 4
  %238 = load i8*, i8** %16, align 8
  %239 = call i32 @strlen(i8* %238)
  %240 = add nsw i32 %239, 1
  %241 = load i32, i32* @me_mfont_w, align 4
  %242 = mul nsw i32 %240, %241
  %243 = add nsw i32 %237, %242
  store i32 %243, i32* %22, align 4
  br label %244

244:                                              ; preds = %232, %229
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  switch i32 %247, label %360 [
    i32 134, label %248
    i32 129, label %249
    i32 128, label %260
    i32 133, label %271
    i32 132, label %271
    i32 131, label %271
    i32 130, label %299
  ]

248:                                              ; preds = %244
  br label %360

249:                                              ; preds = %244
  %250 = load i32, i32* %9, align 4
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %250, %251
  %253 = load i32, i32* %10, align 4
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %255 = call i32 @me_read_onoff(%struct.TYPE_4__* %254)
  %256 = icmp ne i32 %255, 0
  %257 = zext i1 %256 to i64
  %258 = select i1 %256, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %259 = call i32 (i32, i32, ...) @text_out16(i32 %252, i32 %253, i8* %258)
  br label %360

260:                                              ; preds = %244
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %14, align 4
  %263 = add nsw i32 %261, %262
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 4
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = call i32 (i32, i32, ...) @text_out16(i32 %263, i32 %264, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %269)
  br label %360

271:                                              ; preds = %244, %244, %244
  store i8* null, i8** %16, align 8
  store i32 0, i32* %13, align 4
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i32 0, i32 1
  %274 = load i8* (i32, i32*)*, i8* (i32, i32*)** %273, align 8
  %275 = icmp ne i8* (i32, i32*)* %274, null
  br i1 %275, label %276, label %284

276:                                              ; preds = %271
  %277 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %277, i32 0, i32 1
  %279 = load i8* (i32, i32*)*, i8* (i32, i32*)** %278, align 8
  %280 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 6
  %282 = load i32, i32* %281, align 8
  %283 = call i8* %279(i32 %282, i32* %13)
  store i8* %283, i8** %16, align 8
  br label %284

284:                                              ; preds = %276, %271
  %285 = load i8*, i8** %16, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %287, label %298

287:                                              ; preds = %284
  %288 = load i32, i32* %9, align 4
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %288, %289
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* @me_mfont_w, align 4
  %293 = mul nsw i32 %291, %292
  %294 = add nsw i32 %290, %293
  %295 = load i32, i32* %10, align 4
  %296 = load i8*, i8** %16, align 8
  %297 = call i32 (i32, i32, ...) @text_out16(i32 %294, i32 %295, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %296)
  br label %298

298:                                              ; preds = %287, %284
  br label %360

299:                                              ; preds = %244
  %300 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 5
  %302 = load i64, i64* %301, align 8
  %303 = inttoptr i64 %302 to i8**
  store i8** %303, i8*** %20, align 8
  store i32 0, i32* %17, align 4
  br label %304

304:                                              ; preds = %356, %299
  %305 = load i8**, i8*** %20, align 8
  %306 = load i32, i32* %17, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i8*, i8** %305, i64 %307
  %309 = load i8*, i8** %308, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %359

311:                                              ; preds = %304
  %312 = load i32, i32* %9, align 4
  %313 = load i32, i32* %14, align 4
  %314 = add nsw i32 %312, %313
  store i32 %314, i32* %13, align 4
  %315 = load i8**, i8*** %20, align 8
  %316 = load i32, i32* %17, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8*, i8** %315, i64 %317
  %319 = load i8*, i8** %318, align 8
  %320 = call i32 @strlen(i8* %319)
  store i32 %320, i32* %21, align 4
  %321 = load i32, i32* %21, align 4
  %322 = icmp sgt i32 %321, 10
  br i1 %322, label %323, label %331

323:                                              ; preds = %311
  %324 = load i32, i32* %21, align 4
  %325 = sub nsw i32 10, %324
  %326 = sub nsw i32 %325, 2
  %327 = load i32, i32* @me_mfont_w, align 4
  %328 = mul nsw i32 %326, %327
  %329 = load i32, i32* %13, align 4
  %330 = add nsw i32 %329, %328
  store i32 %330, i32* %13, align 4
  br label %331

331:                                              ; preds = %323, %311
  %332 = load i32, i32* %13, align 4
  %333 = load i32, i32* %22, align 4
  %334 = icmp slt i32 %332, %333
  br i1 %334, label %335, label %337

335:                                              ; preds = %331
  %336 = load i32, i32* %22, align 4
  store i32 %336, i32* %13, align 4
  br label %337

337:                                              ; preds = %335, %331
  %338 = load i32, i32* %17, align 4
  %339 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 4
  %341 = load i64, i64* %340, align 8
  %342 = inttoptr i64 %341 to i8*
  %343 = load i8, i8* %342, align 1
  %344 = zext i8 %343 to i32
  %345 = icmp eq i32 %338, %344
  br i1 %345, label %346, label %355

346:                                              ; preds = %337
  %347 = load i32, i32* %13, align 4
  %348 = load i32, i32* %10, align 4
  %349 = load i8**, i8*** %20, align 8
  %350 = load i32, i32* %17, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i8*, i8** %349, i64 %351
  %353 = load i8*, i8** %352, align 8
  %354 = call i32 (i32, i32, ...) @text_out16(i32 %347, i32 %348, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %353)
  br label %359

355:                                              ; preds = %337
  br label %356

356:                                              ; preds = %355
  %357 = load i32, i32* %17, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %17, align 4
  br label %304

359:                                              ; preds = %346, %304
  br label %360

360:                                              ; preds = %244, %359, %298, %260, %249, %248
  %361 = load i32, i32* @me_mfont_h, align 4
  %362 = load i32, i32* %10, align 4
  %363 = add nsw i32 %362, %361
  store i32 %363, i32* %10, align 4
  br label %364

364:                                              ; preds = %360, %207
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 1
  store %struct.TYPE_4__* %366, %struct.TYPE_4__** %7, align 8
  br label %197

367:                                              ; preds = %197
  %368 = call i32 (...) @menu_separation()
  %369 = load i32, i32* @g_menuscreen_h, align 4
  %370 = load i32, i32* %12, align 4
  %371 = sub nsw i32 %369, %370
  %372 = sdiv i32 %371, 2
  store i32 %372, i32* %12, align 4
  %373 = load i64*, i64** @menu_error_msg, align 8
  %374 = getelementptr inbounds i64, i64* %373, i64 0
  %375 = load i64, i64* %374, align 8
  %376 = icmp ne i64 %375, 0
  br i1 %376, label %377, label %400

377:                                              ; preds = %367
  %378 = load i32, i32* %12, align 4
  %379 = load i32, i32* @me_mfont_h, align 4
  %380 = add nsw i32 %379, 4
  %381 = icmp sge i32 %378, %380
  br i1 %381, label %382, label %389

382:                                              ; preds = %377
  %383 = load i32, i32* @g_menuscreen_h, align 4
  %384 = load i32, i32* @me_mfont_h, align 4
  %385 = sub nsw i32 %383, %384
  %386 = sub nsw i32 %385, 4
  %387 = load i64*, i64** @menu_error_msg, align 8
  %388 = call i32 (i32, i32, ...) @text_out16(i32 5, i32 %386, i64* %387)
  br label %391

389:                                              ; preds = %377
  %390 = call i32 (i8*, ...) @lprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  br label %391

391:                                              ; preds = %389, %382
  %392 = call i32 (...) @plat_get_ticks_ms()
  %393 = load i32, i32* @menu_error_time, align 4
  %394 = sub nsw i32 %392, %393
  %395 = icmp sgt i32 %394, 2048
  br i1 %395, label %396, label %399

396:                                              ; preds = %391
  %397 = load i64*, i64** @menu_error_msg, align 8
  %398 = getelementptr inbounds i64, i64* %397, i64 0
  store i64 0, i64* %398, align 8
  br label %399

399:                                              ; preds = %396, %391
  br label %458

400:                                              ; preds = %367
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 3
  %403 = load i8*, i8** %402, align 8
  %404 = icmp ne i8* %403, null
  br i1 %404, label %405, label %457

405:                                              ; preds = %400
  %406 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 3
  %408 = load i8*, i8** %407, align 8
  store i8* %408, i8** %23, align 8
  store i32 0, i32* %24, align 4
  br label %409

409:                                              ; preds = %423, %405
  %410 = load i8*, i8** %23, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %417

412:                                              ; preds = %409
  %413 = load i8*, i8** %23, align 8
  %414 = load i8, i8* %413, align 1
  %415 = sext i8 %414 to i32
  %416 = icmp ne i32 %415, 0
  br label %417

417:                                              ; preds = %412, %409
  %418 = phi i1 [ false, %409 ], [ %416, %412 ]
  br i1 %418, label %419, label %426

419:                                              ; preds = %417
  %420 = load i8*, i8** %23, align 8
  %421 = getelementptr inbounds i8, i8* %420, i64 1
  %422 = call i8* @strchr(i8* %421, i8 signext 10)
  store i8* %422, i8** %23, align 8
  br label %423

423:                                              ; preds = %419
  %424 = load i32, i32* %24, align 4
  %425 = add nsw i32 %424, 1
  store i32 %425, i32* %24, align 4
  br label %409

426:                                              ; preds = %417
  %427 = load i32, i32* %12, align 4
  %428 = load i32, i32* %24, align 4
  %429 = load i32, i32* @me_sfont_h, align 4
  %430 = mul nsw i32 %428, %429
  %431 = add nsw i32 %430, 4
  %432 = icmp sge i32 %427, %431
  br i1 %432, label %433, label %456

433:                                              ; preds = %426
  %434 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %435 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %434, i32 0, i32 3
  %436 = load i8*, i8** %435, align 8
  store i8* %436, i8** %23, align 8
  br label %437

437:                                              ; preds = %449, %433
  %438 = load i32, i32* %24, align 4
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %455

440:                                              ; preds = %437
  %441 = load i32, i32* @g_menuscreen_h, align 4
  %442 = load i32, i32* %24, align 4
  %443 = load i32, i32* @me_sfont_h, align 4
  %444 = mul nsw i32 %442, %443
  %445 = add nsw i32 %444, 4
  %446 = sub nsw i32 %441, %445
  %447 = load i8*, i8** %23, align 8
  %448 = call i32 @smalltext_out16(i32 5, i32 %446, i8* %447, i32 65535)
  br label %449

449:                                              ; preds = %440
  %450 = load i32, i32* %24, align 4
  %451 = add nsw i32 %450, -1
  store i32 %451, i32* %24, align 4
  %452 = load i8*, i8** %23, align 8
  %453 = call i8* @strchr(i8* %452, i8 signext 10)
  %454 = getelementptr inbounds i8, i8* %453, i64 1
  store i8* %454, i8** %23, align 8
  br label %437

455:                                              ; preds = %437
  br label %456

456:                                              ; preds = %455, %426
  br label %457

457:                                              ; preds = %456, %400
  br label %458

458:                                              ; preds = %457, %399
  %459 = call i32 (...) @menu_separation()
  %460 = load void ()*, void ()** %6, align 8
  %461 = icmp ne void ()* %460, null
  br i1 %461, label %462, label %464

462:                                              ; preds = %458
  %463 = load void ()*, void ()** %6, align 8
  call void %463()
  br label %464

464:                                              ; preds = %462, %458
  %465 = call i32 (...) @menu_draw_end()
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lprintf(i8*, ...) #1

declare dso_local i32 @menu_draw_begin(i32, i32) #1

declare dso_local i32 @menu_draw_selection(i32, i32, i32) #1

declare dso_local i32 @text_out16(i32, i32, ...) #1

declare dso_local i32 @me_read_onoff(%struct.TYPE_4__*) #1

declare dso_local i32 @menu_separation(...) #1

declare dso_local i32 @plat_get_ticks_ms(...) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @smalltext_out16(i32, i32, i8*, i32) #1

declare dso_local i32 @menu_draw_end(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
