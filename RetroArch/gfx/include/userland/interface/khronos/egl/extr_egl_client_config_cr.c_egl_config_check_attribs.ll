; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config_cr.c_egl_config_check_attribs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_config_cr.c_egl_config_check_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EGL_RGB_BUFFER = common dso_local global i64 0, align 8
@EGL_LUMINANCE_BUFFER = common dso_local global i64 0, align 8
@EGL_SLOW_CONFIG = common dso_local global i64 0, align 8
@EGL_NON_CONFORMANT_CONFIG = common dso_local global i64 0, align 8
@EGL_OPENGL_BIT = common dso_local global i64 0, align 8
@EGL_OPENGL_ES_BIT = common dso_local global i64 0, align 8
@EGL_OPENGL_ES2_BIT = common dso_local global i64 0, align 8
@EGL_OPENVG_BIT = common dso_local global i64 0, align 8
@EGL_WINDOW_BIT = common dso_local global i32 0, align 4
@EGL_PIXMAP_BIT = common dso_local global i32 0, align 4
@EGL_PBUFFER_BIT = common dso_local global i32 0, align 4
@EGL_MULTISAMPLE_RESOLVE_BOX_BIT = common dso_local global i32 0, align 4
@EGL_SWAP_BEHAVIOR_PRESERVED_BIT = common dso_local global i32 0, align 4
@EGL_VG_COLORSPACE_LINEAR_BIT = common dso_local global i32 0, align 4
@EGL_VG_ALPHA_FORMAT_PRE_BIT = common dso_local global i32 0, align 4
@EGL_TRANSPARENT_RGB = common dso_local global i64 0, align 8
@EGL_LOCK_SURFACE_BIT_KHR = common dso_local global i32 0, align 4
@EGL_OPTIMAL_FORMAT_BIT_KHR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egl_config_check_attribs(i64* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i64*, i64** %7, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %266

19:                                               ; preds = %5
  br label %20

20:                                               ; preds = %264, %19
  %21 = load i64*, i64** %7, align 8
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 140
  br i1 %23, label %24, label %265

24:                                               ; preds = %20
  %25 = load i64*, i64** %7, align 8
  %26 = getelementptr inbounds i64, i64* %25, i32 1
  store i64* %26, i64** %7, align 8
  %27 = load i64, i64* %25, align 8
  store i64 %27, i64* %12, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 1
  store i64* %29, i64** %7, align 8
  %30 = load i64, i64* %28, align 8
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp eq i64 %31, 138
  br i1 %32, label %33, label %41

33:                                               ; preds = %24
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = load i64, i64* %13, align 8
  %38 = icmp ne i64 %37, 159
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32*, i32** %8, align 8
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %36, %33, %24
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %42, 153
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i64, i64* %13, align 8
  %49 = icmp ne i64 %48, 159
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32*, i32** %9, align 8
  store i32 1, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %47, %44, %41
  %53 = load i64, i64* %12, align 8
  %54 = icmp eq i64 %53, 166
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i64, i64* %13, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i64, i64* %13, align 8
  %60 = icmp ne i64 %59, 159
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32*, i32** %10, align 8
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %58, %55, %52
  %64 = load i64, i64* %12, align 8
  %65 = icmp eq i64 %64, 169
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i64, i64* %13, align 8
  %71 = icmp ne i64 %70, 159
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32*, i32** %11, align 8
  store i32 1, i32* %73, align 4
  br label %74

74:                                               ; preds = %72, %69, %66, %63
  %75 = load i64, i64* %12, align 8
  switch i64 %75, label %263 [
    i64 165, label %76
    i64 138, label %76
    i64 153, label %76
    i64 166, label %76
    i64 151, label %76
    i64 169, label %76
    i64 170, label %76
    i64 168, label %84
    i64 167, label %84
    i64 164, label %95
    i64 163, label %108
    i64 162, label %124
    i64 161, label %132
    i64 160, label %149
    i64 152, label %157
    i64 149, label %158
    i64 146, label %172
    i64 148, label %172
    i64 147, label %172
    i64 145, label %173
    i64 144, label %173
    i64 143, label %181
    i64 142, label %192
    i64 141, label %192
    i64 137, label %193
    i64 135, label %210
    i64 136, label %210
    i64 134, label %210
    i64 133, label %218
    i64 129, label %243
    i64 130, label %255
    i64 131, label %255
    i64 132, label %255
  ]

76:                                               ; preds = %74, %74, %74, %74, %74, %74, %74
  %77 = load i64, i64* %13, align 8
  %78 = icmp ne i64 %77, 159
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i64, i64* %13, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %79
  store i32 0, i32* %6, align 4
  br label %266

83:                                               ; preds = %79, %76
  br label %264

84:                                               ; preds = %74, %74
  %85 = load i64, i64* %13, align 8
  %86 = icmp ne i64 %85, 159
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load i64, i64* %13, align 8
  %89 = icmp ne i64 %88, 158
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i64, i64* %13, align 8
  %92 = icmp ne i64 %91, 128
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 0, i32* %6, align 4
  br label %266

94:                                               ; preds = %90, %87, %84
  br label %264

95:                                               ; preds = %74
  %96 = load i64, i64* %13, align 8
  %97 = icmp ne i64 %96, 159
  br i1 %97, label %98, label %107

98:                                               ; preds = %95
  %99 = load i64, i64* %13, align 8
  %100 = load i64, i64* @EGL_RGB_BUFFER, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @EGL_LUMINANCE_BUFFER, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %266

107:                                              ; preds = %102, %98, %95
  br label %264

108:                                              ; preds = %74
  %109 = load i64, i64* %13, align 8
  %110 = icmp ne i64 %109, 159
  br i1 %110, label %111, label %123

111:                                              ; preds = %108
  %112 = load i64, i64* %13, align 8
  %113 = icmp ne i64 %112, 140
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i64, i64* %13, align 8
  %116 = load i64, i64* @EGL_SLOW_CONFIG, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load i64, i64* %13, align 8
  %120 = load i64, i64* @EGL_NON_CONFORMANT_CONFIG, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %266

123:                                              ; preds = %118, %114, %111, %108
  br label %264

124:                                              ; preds = %74
  %125 = load i64, i64* %13, align 8
  %126 = icmp ne i64 %125, 159
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i64, i64* %13, align 8
  %129 = icmp slt i64 %128, 1
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  store i32 0, i32* %6, align 4
  br label %266

131:                                              ; preds = %127, %124
  br label %264

132:                                              ; preds = %74
  %133 = load i64, i64* %13, align 8
  %134 = icmp ne i64 %133, 159
  br i1 %134, label %135, label %148

135:                                              ; preds = %132
  %136 = load i64, i64* %13, align 8
  %137 = load i64, i64* @EGL_OPENGL_BIT, align 8
  %138 = load i64, i64* @EGL_OPENGL_ES_BIT, align 8
  %139 = or i64 %137, %138
  %140 = load i64, i64* @EGL_OPENGL_ES2_BIT, align 8
  %141 = or i64 %139, %140
  %142 = load i64, i64* @EGL_OPENVG_BIT, align 8
  %143 = or i64 %141, %142
  %144 = xor i64 %143, -1
  %145 = and i64 %136, %144
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %266

148:                                              ; preds = %135, %132
  br label %264

149:                                              ; preds = %74
  %150 = load i64, i64* %13, align 8
  %151 = icmp ne i64 %150, 159
  br i1 %151, label %152, label %156

152:                                              ; preds = %149
  %153 = load i64, i64* %13, align 8
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152
  store i32 0, i32* %6, align 4
  br label %266

156:                                              ; preds = %152, %149
  br label %264

157:                                              ; preds = %74
  br label %264

158:                                              ; preds = %74
  %159 = load i64, i64* %13, align 8
  %160 = icmp ne i64 %159, 159
  br i1 %160, label %161, label %171

161:                                              ; preds = %158
  %162 = load i64, i64* %13, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @platform_get_pixmap_info(i32 %163, i32* %14)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %161
  store i32 0, i32* %6, align 4
  br label %266

167:                                              ; preds = %161
  %168 = load i64, i64* %13, align 8
  %169 = trunc i64 %168 to i32
  %170 = call i32 @khrn_platform_release_pixmap_info(i32 %169, i32* %14)
  br label %171

171:                                              ; preds = %167, %158
  br label %264

172:                                              ; preds = %74, %74, %74
  br label %264

173:                                              ; preds = %74, %74
  %174 = load i64, i64* %13, align 8
  %175 = icmp ne i64 %174, 159
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load i64, i64* %13, align 8
  %178 = icmp slt i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %176
  store i32 0, i32* %6, align 4
  br label %266

180:                                              ; preds = %176, %173
  br label %264

181:                                              ; preds = %74
  %182 = load i64, i64* %13, align 8
  %183 = icmp ne i64 %182, 159
  br i1 %183, label %184, label %191

184:                                              ; preds = %181
  %185 = load i64, i64* %13, align 8
  %186 = icmp ne i64 %185, 158
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i64, i64* %13, align 8
  %189 = icmp ne i64 %188, 128
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  store i32 0, i32* %6, align 4
  br label %266

191:                                              ; preds = %187, %184, %181
  br label %264

192:                                              ; preds = %74, %74
  br label %264

193:                                              ; preds = %74
  %194 = load i64, i64* %13, align 8
  %195 = icmp ne i64 %194, 159
  br i1 %195, label %196, label %209

196:                                              ; preds = %193
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* @EGL_OPENGL_BIT, align 8
  %199 = load i64, i64* @EGL_OPENGL_ES_BIT, align 8
  %200 = or i64 %198, %199
  %201 = load i64, i64* @EGL_OPENGL_ES2_BIT, align 8
  %202 = or i64 %200, %201
  %203 = load i64, i64* @EGL_OPENVG_BIT, align 8
  %204 = or i64 %202, %203
  %205 = xor i64 %204, -1
  %206 = and i64 %197, %205
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %196
  store i32 0, i32* %6, align 4
  br label %266

209:                                              ; preds = %196, %193
  br label %264

210:                                              ; preds = %74, %74, %74
  %211 = load i64, i64* %13, align 8
  %212 = icmp ne i64 %211, 159
  br i1 %212, label %213, label %217

213:                                              ; preds = %210
  %214 = load i64, i64* %13, align 8
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %213
  store i32 0, i32* %6, align 4
  br label %266

217:                                              ; preds = %213, %210
  br label %264

218:                                              ; preds = %74
  %219 = load i32, i32* @EGL_WINDOW_BIT, align 4
  %220 = load i32, i32* @EGL_PIXMAP_BIT, align 4
  %221 = or i32 %219, %220
  %222 = load i32, i32* @EGL_PBUFFER_BIT, align 4
  %223 = or i32 %221, %222
  %224 = load i32, i32* @EGL_MULTISAMPLE_RESOLVE_BOX_BIT, align 4
  %225 = or i32 %223, %224
  %226 = load i32, i32* @EGL_SWAP_BEHAVIOR_PRESERVED_BIT, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @EGL_VG_COLORSPACE_LINEAR_BIT, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @EGL_VG_ALPHA_FORMAT_PRE_BIT, align 4
  %231 = or i32 %229, %230
  store i32 %231, i32* %15, align 4
  %232 = load i64, i64* %13, align 8
  %233 = icmp ne i64 %232, 159
  br i1 %233, label %234, label %242

234:                                              ; preds = %218
  %235 = load i64, i64* %13, align 8
  %236 = load i32, i32* %15, align 4
  %237 = xor i32 %236, -1
  %238 = sext i32 %237 to i64
  %239 = and i64 %235, %238
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %234
  store i32 0, i32* %6, align 4
  br label %266

242:                                              ; preds = %234, %218
  br label %264

243:                                              ; preds = %74
  %244 = load i64, i64* %13, align 8
  %245 = icmp ne i64 %244, 159
  br i1 %245, label %246, label %254

246:                                              ; preds = %243
  %247 = load i64, i64* %13, align 8
  %248 = icmp ne i64 %247, 140
  br i1 %248, label %249, label %254

249:                                              ; preds = %246
  %250 = load i64, i64* %13, align 8
  %251 = load i64, i64* @EGL_TRANSPARENT_RGB, align 8
  %252 = icmp ne i64 %250, %251
  br i1 %252, label %253, label %254

253:                                              ; preds = %249
  store i32 0, i32* %6, align 4
  br label %266

254:                                              ; preds = %249, %246, %243
  br label %264

255:                                              ; preds = %74, %74, %74
  %256 = load i64, i64* %13, align 8
  %257 = icmp ne i64 %256, 159
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load i64, i64* %13, align 8
  %260 = icmp slt i64 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  store i32 0, i32* %6, align 4
  br label %266

262:                                              ; preds = %258, %255
  br label %264

263:                                              ; preds = %74
  store i32 0, i32* %6, align 4
  br label %266

264:                                              ; preds = %262, %254, %242, %217, %209, %192, %191, %180, %172, %171, %157, %156, %148, %131, %123, %107, %94, %83
  br label %20

265:                                              ; preds = %20
  store i32 1, i32* %6, align 4
  br label %266

266:                                              ; preds = %265, %263, %261, %253, %241, %216, %208, %190, %179, %166, %155, %147, %130, %122, %106, %93, %82, %18
  %267 = load i32, i32* %6, align 4
  ret i32 %267
}

declare dso_local i32 @platform_get_pixmap_info(i32, i32*) #1

declare dso_local i32 @khrn_platform_release_pixmap_info(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
