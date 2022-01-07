; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_surface.c_egl_surface_check_attribs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/egl/extr_egl_client_surface.c_egl_surface_check_attribs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EGL_NONE = common dso_local global i64 0, align 8
@EGL_VG_COLORSPACE_sRGB = common dso_local global i32 0, align 4
@EGL_VG_COLORSPACE_LINEAR = common dso_local global i32 0, align 4
@EGL_VG_ALPHA_FORMAT_NONPRE = common dso_local global i32 0, align 4
@EGL_VG_ALPHA_FORMAT_PRE = common dso_local global i32 0, align 4
@WINDOW = common dso_local global i32 0, align 4
@EGL_SINGLE_BUFFER = common dso_local global i32 0, align 4
@EGL_BACK_BUFFER = common dso_local global i32 0, align 4
@PBUFFER = common dso_local global i32 0, align 4
@EGL_FALSE = common dso_local global i32 0, align 4
@EGL_TRUE = common dso_local global i32 0, align 4
@EGL_NO_TEXTURE = common dso_local global i32 0, align 4
@EGL_TEXTURE_RGB = common dso_local global i32 0, align 4
@EGL_TEXTURE_RGBA = common dso_local global i32 0, align 4
@EGL_TEXTURE_2D = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @egl_surface_check_attribs(i32 %0, i64* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %13, align 4
  store i64* %1, i64** %14, align 8
  store i32* %2, i32** %15, align 8
  store i32* %3, i32** %16, align 8
  store i32* %4, i32** %17, align 8
  store i32* %5, i32** %18, align 8
  store i32* %6, i32** %19, align 8
  store i32* %7, i32** %20, align 8
  store i32* %8, i32** %21, align 8
  store i32* %9, i32** %22, align 8
  store i32* %10, i32** %23, align 8
  %26 = load i64*, i64** %14, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %11
  store i32 1, i32* %12, align 4
  br label %223

29:                                               ; preds = %11
  br label %30

30:                                               ; preds = %221, %29
  %31 = load i64*, i64** %14, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EGL_NONE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %222

35:                                               ; preds = %30
  %36 = load i64*, i64** %14, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %14, align 8
  %38 = load i64, i64* %36, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %24, align 4
  %40 = load i64*, i64** %14, align 8
  %41 = getelementptr inbounds i64, i64* %40, i32 1
  store i64* %41, i64** %14, align 8
  %42 = load i64, i64* %40, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %25, align 4
  %44 = load i32, i32* %24, align 4
  switch i32 %44, label %220 [
    i32 129, label %45
    i32 130, label %64
    i32 133, label %83
    i32 128, label %106
    i32 136, label %121
    i32 135, label %136
    i32 132, label %156
    i32 131, label %180
    i32 134, label %200
  ]

45:                                               ; preds = %35
  %46 = load i32, i32* %25, align 4
  %47 = load i32, i32* @EGL_VG_COLORSPACE_sRGB, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i32, i32* %25, align 4
  %51 = load i32, i32* @EGL_VG_COLORSPACE_LINEAR, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %12, align 4
  br label %223

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %25, align 4
  %56 = load i32, i32* @EGL_VG_COLORSPACE_LINEAR, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32*, i32** %15, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32*, i32** %15, align 8
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %61, %58, %54
  br label %221

64:                                               ; preds = %35
  %65 = load i32, i32* %25, align 4
  %66 = load i32, i32* @EGL_VG_ALPHA_FORMAT_NONPRE, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %25, align 4
  %70 = load i32, i32* @EGL_VG_ALPHA_FORMAT_PRE, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %223

73:                                               ; preds = %68, %64
  %74 = load i32, i32* %25, align 4
  %75 = load i32, i32* @EGL_VG_ALPHA_FORMAT_PRE, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %73
  %78 = load i32*, i32** %16, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i32*, i32** %16, align 8
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %80, %77, %73
  br label %221

83:                                               ; preds = %35
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* @WINDOW, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %25, align 4
  %89 = load i32, i32* @EGL_SINGLE_BUFFER, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load i32, i32* %25, align 4
  %93 = load i32, i32* @EGL_BACK_BUFFER, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %83
  store i32 0, i32* %12, align 4
  br label %223

96:                                               ; preds = %91, %87
  %97 = load i32, i32* %25, align 4
  %98 = load i32, i32* @EGL_SINGLE_BUFFER, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32*, i32** %17, align 8
  %102 = icmp ne i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %100
  %104 = load i32*, i32** %17, align 8
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %103, %100, %96
  br label %221

106:                                              ; preds = %35
  %107 = load i32, i32* %13, align 4
  %108 = load i32, i32* @PBUFFER, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i32, i32* %25, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110, %106
  store i32 0, i32* %12, align 4
  br label %223

114:                                              ; preds = %110
  %115 = load i32*, i32** %18, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i32, i32* %25, align 4
  %119 = load i32*, i32** %18, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %114
  br label %221

121:                                              ; preds = %35
  %122 = load i32, i32* %13, align 4
  %123 = load i32, i32* @PBUFFER, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %128, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %25, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125, %121
  store i32 0, i32* %12, align 4
  br label %223

129:                                              ; preds = %125
  %130 = load i32*, i32** %19, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load i32, i32* %25, align 4
  %134 = load i32*, i32** %19, align 8
  store i32 %133, i32* %134, align 4
  br label %135

135:                                              ; preds = %132, %129
  br label %221

136:                                              ; preds = %35
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @PBUFFER, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %148, label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* @EGL_FALSE, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %140
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* @EGL_TRUE, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144, %136
  store i32 0, i32* %12, align 4
  br label %223

149:                                              ; preds = %144, %140
  %150 = load i32*, i32** %20, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %25, align 4
  %154 = load i32*, i32** %20, align 8
  store i32 %153, i32* %154, align 4
  br label %155

155:                                              ; preds = %152, %149
  br label %221

156:                                              ; preds = %35
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @PBUFFER, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %172, label %160

160:                                              ; preds = %156
  %161 = load i32, i32* %25, align 4
  %162 = load i32, i32* @EGL_NO_TEXTURE, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %160
  %165 = load i32, i32* %25, align 4
  %166 = load i32, i32* @EGL_TEXTURE_RGB, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %164
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* @EGL_TEXTURE_RGBA, align 4
  %171 = icmp ne i32 %169, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %168, %156
  store i32 0, i32* %12, align 4
  br label %223

173:                                              ; preds = %168, %164, %160
  %174 = load i32*, i32** %21, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %179

176:                                              ; preds = %173
  %177 = load i32, i32* %25, align 4
  %178 = load i32*, i32** %21, align 8
  store i32 %177, i32* %178, align 4
  br label %179

179:                                              ; preds = %176, %173
  br label %221

180:                                              ; preds = %35
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @PBUFFER, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %192, label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %25, align 4
  %186 = load i32, i32* @EGL_NO_TEXTURE, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %184
  %189 = load i32, i32* %25, align 4
  %190 = load i32, i32* @EGL_TEXTURE_2D, align 4
  %191 = icmp ne i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188, %180
  store i32 0, i32* %12, align 4
  br label %223

193:                                              ; preds = %188, %184
  %194 = load i32*, i32** %22, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %25, align 4
  %198 = load i32*, i32** %22, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %193
  br label %221

200:                                              ; preds = %35
  %201 = load i32, i32* %13, align 4
  %202 = load i32, i32* @PBUFFER, align 4
  %203 = icmp ne i32 %201, %202
  br i1 %203, label %212, label %204

204:                                              ; preds = %200
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* @EGL_FALSE, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  %209 = load i32, i32* %25, align 4
  %210 = load i32, i32* @EGL_TRUE, align 4
  %211 = icmp ne i32 %209, %210
  br i1 %211, label %212, label %213

212:                                              ; preds = %208, %200
  store i32 0, i32* %12, align 4
  br label %223

213:                                              ; preds = %208, %204
  %214 = load i32*, i32** %23, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %25, align 4
  %218 = load i32*, i32** %23, align 8
  store i32 %217, i32* %218, align 4
  br label %219

219:                                              ; preds = %216, %213
  br label %221

220:                                              ; preds = %35
  store i32 0, i32* %12, align 4
  br label %223

221:                                              ; preds = %219, %199, %179, %155, %135, %120, %105, %82, %63
  br label %30

222:                                              ; preds = %30
  store i32 1, i32* %12, align 4
  br label %223

223:                                              ; preds = %222, %220, %212, %192, %172, %148, %128, %113, %95, %72, %53, %28
  %224 = load i32, i32* %12, align 4
  ret i32 %224
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
