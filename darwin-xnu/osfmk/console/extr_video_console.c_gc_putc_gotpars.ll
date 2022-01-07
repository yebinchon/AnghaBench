; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_gotpars.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_gc_putc_gotpars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@ESgotpars = common dso_local global i32 0, align 4
@gc_vt100state = common dso_local global i32 0, align 4
@ESnormal = common dso_local global i32 0, align 4
@gc_par = common dso_local global i32* null, align 8
@gc_y = common dso_local global i32 0, align 4
@gc_scrreg_top = common dso_local global i32 0, align 4
@gc_scrreg_bottom = common dso_local global i32 0, align 4
@gc_x = common dso_local global i32 0, align 4
@vinfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@gc_relative_origin = common dso_local global i32 0, align 4
@gc_hanging_cursor = common dso_local global i32 0, align 4
@gc_numpars = common dso_local global i32 0, align 4
@ATTR_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@gc_attr = common dso_local global i32 0, align 4
@COLOR_BACKGROUND = common dso_local global i32 0, align 4
@COLOR_FOREGROUND = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ATTR_BOLD = common dso_local global i32 0, align 4
@ATTR_UNDER = common dso_local global i32 0, align 4
@ATTR_REVERSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @gc_putc_gotpars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_putc_gotpars(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i32
  %6 = icmp slt i32 %5, 32
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8, i8* %2, align 1
  %9 = call i32 @gc_putc_normal(i8 zeroext %8)
  %10 = load i32, i32* @ESgotpars, align 4
  store i32 %10, i32* @gc_vt100state, align 4
  br label %354

11:                                               ; preds = %1
  %12 = load i32, i32* @ESnormal, align 4
  store i32 %12, i32* @gc_vt100state, align 4
  %13 = load i8, i8* %2, align 1
  %14 = zext i8 %13 to i32
  switch i32 %14, label %354 [
    i32 65, label %15
    i32 66, label %35
    i32 67, label %56
    i32 68, label %77
    i32 72, label %104
    i32 102, label %104
    i32 88, label %136
    i32 74, label %159
    i32 75, label %167
    i32 103, label %174
    i32 109, label %197
    i32 114, label %296
  ]

15:                                               ; preds = %11
  %16 = load i32*, i32** @gc_par, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32*, i32** @gc_par, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  br label %25

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24, %20
  %26 = phi i32 [ %23, %20 ], [ 1, %24 ]
  %27 = load i32, i32* @gc_y, align 4
  %28 = sub nsw i32 %27, %26
  store i32 %28, i32* @gc_y, align 4
  %29 = load i32, i32* @gc_y, align 4
  %30 = load i32, i32* @gc_scrreg_top, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* @gc_scrreg_top, align 4
  store i32 %33, i32* @gc_y, align 4
  br label %34

34:                                               ; preds = %32, %25
  br label %354

35:                                               ; preds = %11
  %36 = load i32*, i32** @gc_par, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32*, i32** @gc_par, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  br label %45

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ 1, %44 ]
  %47 = load i32, i32* @gc_y, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* @gc_y, align 4
  %49 = load i32, i32* @gc_y, align 4
  %50 = load i32, i32* @gc_scrreg_bottom, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @gc_scrreg_bottom, align 4
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* @gc_y, align 4
  br label %55

55:                                               ; preds = %52, %45
  br label %354

56:                                               ; preds = %11
  %57 = load i32*, i32** @gc_par, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32*, i32** @gc_par, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  br label %66

65:                                               ; preds = %56
  br label %66

66:                                               ; preds = %65, %61
  %67 = phi i32 [ %64, %61 ], [ 1, %65 ]
  %68 = load i32, i32* @gc_x, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* @gc_x, align 4
  %70 = load i32, i32* @gc_x, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %72 = icmp sge i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* @gc_x, align 4
  br label %76

76:                                               ; preds = %73, %66
  br label %354

77:                                               ; preds = %11
  %78 = load i32*, i32** @gc_par, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @gc_x, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* @gc_x, align 4
  br label %103

84:                                               ; preds = %77
  %85 = load i32*, i32** @gc_par, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load i32*, i32** @gc_par, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @gc_x, align 4
  %94 = sub nsw i32 %93, %92
  store i32 %94, i32* @gc_x, align 4
  br label %102

95:                                               ; preds = %84
  %96 = load i32, i32* @gc_x, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* @gc_x, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* @gc_x, align 4
  br label %101

101:                                              ; preds = %98, %95
  br label %102

102:                                              ; preds = %101, %89
  br label %103

103:                                              ; preds = %102, %83
  br label %354

104:                                              ; preds = %11, %11
  %105 = load i32*, i32** @gc_par, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32*, i32** @gc_par, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = sub nsw i32 %112, 1
  br label %115

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114, %109
  %116 = phi i32 [ %113, %109 ], [ 0, %114 ]
  store i32 %116, i32* @gc_x, align 4
  %117 = load i32*, i32** @gc_par, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %115
  %122 = load i32*, i32** @gc_par, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  br label %127

126:                                              ; preds = %115
  br label %127

127:                                              ; preds = %126, %121
  %128 = phi i32 [ %125, %121 ], [ 0, %126 ]
  store i32 %128, i32* @gc_y, align 4
  %129 = load i32, i32* @gc_relative_origin, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i32, i32* @gc_scrreg_top, align 4
  %133 = load i32, i32* @gc_y, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* @gc_y, align 4
  br label %135

135:                                              ; preds = %131, %127
  store i32 0, i32* @gc_hanging_cursor, align 4
  br label %354

136:                                              ; preds = %11
  %137 = load i32, i32* @gc_numpars, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %158

139:                                              ; preds = %136
  %140 = load i32, i32* @gc_x, align 4
  store i32 %140, i32* %3, align 4
  br label %141

141:                                              ; preds = %154, %139
  %142 = load i32, i32* %3, align 4
  %143 = load i32, i32* @gc_x, align 4
  %144 = load i32*, i32** @gc_par, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %143, %146
  %148 = icmp ult i32 %142, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %141
  %150 = load i32, i32* %3, align 4
  %151 = load i32, i32* @gc_y, align 4
  %152 = load i32, i32* @ATTR_NONE, align 4
  %153 = call i32 @gc_paint_char(i32 %150, i32 %151, i8 signext 32, i32 %152)
  br label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %3, align 4
  %156 = add i32 %155, 1
  store i32 %156, i32* %3, align 4
  br label %141

157:                                              ; preds = %141
  br label %158

158:                                              ; preds = %157, %136
  br label %354

159:                                              ; preds = %11
  %160 = load i32, i32* @gc_x, align 4
  %161 = load i32, i32* @gc_y, align 4
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %163 = load i32*, i32** @gc_par, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @gc_clear_screen(i32 %160, i32 %161, i32 0, i32 %162, i32 %165)
  br label %354

167:                                              ; preds = %11
  %168 = load i32, i32* @gc_x, align 4
  %169 = load i32, i32* @gc_y, align 4
  %170 = load i32*, i32** @gc_par, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @gc_clear_line(i32 %168, i32 %169, i32 %172)
  br label %354

174:                                              ; preds = %11
  %175 = load i32*, i32** @gc_par, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  switch i32 %177, label %196 [
    i32 1, label %178
    i32 2, label %178
    i32 3, label %179
    i32 0, label %192
  ]

178:                                              ; preds = %174, %174
  br label %196

179:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %188, %179
  %181 = load i32, i32* %3, align 4
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 0), align 4
  %183 = icmp ule i32 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %180
  %185 = load i32, i32* %3, align 4
  %186 = load i32, i32* @FALSE, align 4
  %187 = call i32 @gc_set_tab_stop(i32 %185, i32 %186)
  br label %188

188:                                              ; preds = %184
  %189 = load i32, i32* %3, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %3, align 4
  br label %180

191:                                              ; preds = %180
  br label %196

192:                                              ; preds = %174
  %193 = load i32, i32* @gc_x, align 4
  %194 = load i32, i32* @FALSE, align 4
  %195 = call i32 @gc_set_tab_stop(i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %174, %192, %191, %178
  br label %354

197:                                              ; preds = %11
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %292, %197
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* @gc_numpars, align 4
  %201 = icmp ult i32 %199, %200
  br i1 %201, label %202, label %295

202:                                              ; preds = %198
  %203 = load i32*, i32** @gc_par, align 8
  %204 = load i32, i32* %3, align 4
  %205 = zext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  switch i32 %207, label %244 [
    i32 0, label %208
    i32 1, label %216
    i32 4, label %220
    i32 7, label %224
    i32 22, label %228
    i32 24, label %233
    i32 27, label %238
    i32 5, label %243
    i32 25, label %243
  ]

208:                                              ; preds = %202
  %209 = load i32, i32* @ATTR_NONE, align 4
  store i32 %209, i32* @gc_attr, align 4
  %210 = load i32, i32* @COLOR_BACKGROUND, align 4
  %211 = load i32, i32* @FALSE, align 4
  %212 = call i32 @gc_update_color(i32 %210, i32 %211)
  %213 = load i32, i32* @COLOR_FOREGROUND, align 4
  %214 = load i32, i32* @TRUE, align 4
  %215 = call i32 @gc_update_color(i32 %213, i32 %214)
  br label %291

216:                                              ; preds = %202
  %217 = load i32, i32* @ATTR_BOLD, align 4
  %218 = load i32, i32* @gc_attr, align 4
  %219 = or i32 %218, %217
  store i32 %219, i32* @gc_attr, align 4
  br label %291

220:                                              ; preds = %202
  %221 = load i32, i32* @ATTR_UNDER, align 4
  %222 = load i32, i32* @gc_attr, align 4
  %223 = or i32 %222, %221
  store i32 %223, i32* @gc_attr, align 4
  br label %291

224:                                              ; preds = %202
  %225 = load i32, i32* @ATTR_REVERSE, align 4
  %226 = load i32, i32* @gc_attr, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* @gc_attr, align 4
  br label %291

228:                                              ; preds = %202
  %229 = load i32, i32* @ATTR_BOLD, align 4
  %230 = xor i32 %229, -1
  %231 = load i32, i32* @gc_attr, align 4
  %232 = and i32 %231, %230
  store i32 %232, i32* @gc_attr, align 4
  br label %291

233:                                              ; preds = %202
  %234 = load i32, i32* @ATTR_UNDER, align 4
  %235 = xor i32 %234, -1
  %236 = load i32, i32* @gc_attr, align 4
  %237 = and i32 %236, %235
  store i32 %237, i32* @gc_attr, align 4
  br label %291

238:                                              ; preds = %202
  %239 = load i32, i32* @ATTR_REVERSE, align 4
  %240 = xor i32 %239, -1
  %241 = load i32, i32* @gc_attr, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* @gc_attr, align 4
  br label %291

243:                                              ; preds = %202, %202
  br label %291

244:                                              ; preds = %202
  %245 = load i32*, i32** @gc_par, align 8
  %246 = load i32, i32* %3, align 4
  %247 = zext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = icmp sge i32 %249, 30
  br i1 %250, label %251, label %267

251:                                              ; preds = %244
  %252 = load i32*, i32** @gc_par, align 8
  %253 = load i32, i32* %3, align 4
  %254 = zext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp sle i32 %256, 37
  br i1 %257, label %258, label %267

258:                                              ; preds = %251
  %259 = load i32*, i32** @gc_par, align 8
  %260 = load i32, i32* %3, align 4
  %261 = zext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sub nsw i32 %263, 30
  %265 = load i32, i32* @TRUE, align 4
  %266 = call i32 @gc_update_color(i32 %264, i32 %265)
  br label %267

267:                                              ; preds = %258, %251, %244
  %268 = load i32*, i32** @gc_par, align 8
  %269 = load i32, i32* %3, align 4
  %270 = zext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = icmp sge i32 %272, 40
  br i1 %273, label %274, label %290

274:                                              ; preds = %267
  %275 = load i32*, i32** @gc_par, align 8
  %276 = load i32, i32* %3, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp sle i32 %279, 47
  br i1 %280, label %281, label %290

281:                                              ; preds = %274
  %282 = load i32*, i32** @gc_par, align 8
  %283 = load i32, i32* %3, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds i32, i32* %282, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = sub nsw i32 %286, 40
  %288 = load i32, i32* @FALSE, align 4
  %289 = call i32 @gc_update_color(i32 %287, i32 %288)
  br label %290

290:                                              ; preds = %281, %274, %267
  br label %291

291:                                              ; preds = %290, %243, %238, %233, %228, %224, %220, %216, %208
  br label %292

292:                                              ; preds = %291
  %293 = load i32, i32* %3, align 4
  %294 = add i32 %293, 1
  store i32 %294, i32* %3, align 4
  br label %198

295:                                              ; preds = %198
  br label %354

296:                                              ; preds = %11
  store i32 0, i32* @gc_y, align 4
  store i32 0, i32* @gc_x, align 4
  %297 = load i32, i32* @gc_numpars, align 4
  %298 = icmp ugt i32 %297, 0
  br i1 %298, label %299, label %318

299:                                              ; preds = %296
  %300 = load i32*, i32** @gc_par, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 0
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %304 = icmp slt i32 %302, %303
  br i1 %304, label %305, label %318

305:                                              ; preds = %299
  %306 = load i32*, i32** @gc_par, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 0
  %308 = load i32, i32* %307, align 4
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load i32*, i32** @gc_par, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = sub nsw i32 %313, 1
  br label %316

315:                                              ; preds = %305
  br label %316

316:                                              ; preds = %315, %310
  %317 = phi i32 [ %314, %310 ], [ 0, %315 ]
  store i32 %317, i32* @gc_scrreg_top, align 4
  br label %319

318:                                              ; preds = %299, %296
  store i32 0, i32* @gc_scrreg_top, align 4
  br label %319

319:                                              ; preds = %318, %316
  %320 = load i32, i32* @gc_numpars, align 4
  %321 = icmp ugt i32 %320, 1
  br i1 %321, label %322, label %346

322:                                              ; preds = %319
  %323 = load i32*, i32** @gc_par, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  %326 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %327 = icmp sle i32 %325, %326
  br i1 %327, label %328, label %346

328:                                              ; preds = %322
  %329 = load i32*, i32** @gc_par, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 1
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** @gc_par, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 0
  %334 = load i32, i32* %333, align 4
  %335 = icmp sgt i32 %331, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %328
  %337 = load i32*, i32** @gc_par, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  %339 = load i32, i32* %338, align 4
  store i32 %339, i32* @gc_scrreg_bottom, align 4
  %340 = load i32, i32* @gc_scrreg_bottom, align 4
  %341 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  %342 = icmp sgt i32 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %336
  %344 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  store i32 %344, i32* @gc_scrreg_bottom, align 4
  br label %345

345:                                              ; preds = %343, %336
  br label %348

346:                                              ; preds = %328, %322, %319
  %347 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vinfo, i32 0, i32 1), align 4
  store i32 %347, i32* @gc_scrreg_bottom, align 4
  br label %348

348:                                              ; preds = %346, %345
  %349 = load i32, i32* @gc_relative_origin, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %353

351:                                              ; preds = %348
  %352 = load i32, i32* @gc_scrreg_top, align 4
  store i32 %352, i32* @gc_y, align 4
  br label %353

353:                                              ; preds = %351, %348
  br label %354

354:                                              ; preds = %7, %11, %353, %295, %196, %167, %159, %158, %135, %103, %76, %55, %34
  ret void
}

declare dso_local i32 @gc_putc_normal(i8 zeroext) #1

declare dso_local i32 @gc_paint_char(i32, i32, i8 signext, i32) #1

declare dso_local i32 @gc_clear_screen(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gc_clear_line(i32, i32, i32) #1

declare dso_local i32 @gc_set_tab_stop(i32, i32) #1

declare dso_local i32 @gc_update_color(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
