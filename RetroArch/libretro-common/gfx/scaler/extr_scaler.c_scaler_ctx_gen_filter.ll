; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler.c_scaler_ctx_gen_filter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler.c_scaler_ctx_gen_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { i32, i64, i64, i64, i64, i32, i32, i8*, i8*, i32, i32, i8*, i32* }

@conv_copy = common dso_local global i8* null, align 8
@conv_0rgb1555_argb8888 = common dso_local global i8* null, align 8
@conv_0rgb1555_rgb565 = common dso_local global i8* null, align 8
@conv_0rgb1555_bgr24 = common dso_local global i8* null, align 8
@conv_rgb565_argb8888 = common dso_local global i8* null, align 8
@conv_rgb565_abgr8888 = common dso_local global i8* null, align 8
@conv_rgb565_bgr24 = common dso_local global i8* null, align 8
@conv_rgb565_0rgb1555 = common dso_local global i8* null, align 8
@conv_bgr24_argb8888 = common dso_local global i8* null, align 8
@conv_bgr24_rgb565 = common dso_local global i8* null, align 8
@conv_argb8888_0rgb1555 = common dso_local global i8* null, align 8
@conv_argb8888_bgr24 = common dso_local global i8* null, align 8
@conv_argb8888_abgr8888 = common dso_local global i8* null, align 8
@conv_argb8888_rgba4444 = common dso_local global i8* null, align 8
@conv_yuyv_argb8888 = common dso_local global i8* null, align 8
@conv_rgba4444_argb8888 = common dso_local global i8* null, align 8
@conv_rgba4444_rgb565 = common dso_local global i8* null, align 8
@conv_abgr8888_bgr24 = common dso_local global i8* null, align 8
@scaler_argb8888_horiz = common dso_local global i32 0, align 4
@scaler_argb8888_vert = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scaler_ctx_gen_filter(%struct.scaler_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scaler_ctx*, align 8
  store %struct.scaler_ctx* %0, %struct.scaler_ctx** %3, align 8
  %4 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %5 = call i32 @scaler_ctx_gen_reset(%struct.scaler_ctx* %4)
  %6 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %6, i32 0, i32 12
  store i32* null, i32** %7, align 8
  %8 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %11 = call i32 @allocate_frames(%struct.scaler_ctx* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %223

14:                                               ; preds = %1
  %15 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %166

22:                                               ; preds = %14
  %23 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %24 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %27 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %166

30:                                               ; preds = %22
  %31 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %32 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %34 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %37 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i8*, i8** @conv_copy, align 8
  %42 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %43 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %42, i32 0, i32 11
  store i8* %41, i8** %43, align 8
  br label %165

44:                                               ; preds = %30
  %45 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %46 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %158 [
    i32 134, label %48
    i32 130, label %66
    i32 131, label %88
    i32 132, label %102
    i32 128, label %124
    i32 129, label %134
    i32 133, label %148
  ]

48:                                               ; preds = %44
  %49 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %50 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %64 [
    i32 132, label %52
    i32 130, label %56
    i32 131, label %60
  ]

52:                                               ; preds = %48
  %53 = load i8*, i8** @conv_0rgb1555_argb8888, align 8
  %54 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %55 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %54, i32 0, i32 11
  store i8* %53, i8** %55, align 8
  br label %65

56:                                               ; preds = %48
  %57 = load i8*, i8** @conv_0rgb1555_rgb565, align 8
  %58 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %59 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %58, i32 0, i32 11
  store i8* %57, i8** %59, align 8
  br label %65

60:                                               ; preds = %48
  %61 = load i8*, i8** @conv_0rgb1555_bgr24, align 8
  %62 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %63 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %62, i32 0, i32 11
  store i8* %61, i8** %63, align 8
  br label %65

64:                                               ; preds = %48
  br label %65

65:                                               ; preds = %64, %60, %56, %52
  br label %158

66:                                               ; preds = %44
  %67 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %86 [
    i32 132, label %70
    i32 133, label %74
    i32 131, label %78
    i32 134, label %82
  ]

70:                                               ; preds = %66
  %71 = load i8*, i8** @conv_rgb565_argb8888, align 8
  %72 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %72, i32 0, i32 11
  store i8* %71, i8** %73, align 8
  br label %87

74:                                               ; preds = %66
  %75 = load i8*, i8** @conv_rgb565_abgr8888, align 8
  %76 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %77 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %76, i32 0, i32 11
  store i8* %75, i8** %77, align 8
  br label %87

78:                                               ; preds = %66
  %79 = load i8*, i8** @conv_rgb565_bgr24, align 8
  %80 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %81 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %80, i32 0, i32 11
  store i8* %79, i8** %81, align 8
  br label %87

82:                                               ; preds = %66
  %83 = load i8*, i8** @conv_rgb565_0rgb1555, align 8
  %84 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %85 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %84, i32 0, i32 11
  store i8* %83, i8** %85, align 8
  br label %87

86:                                               ; preds = %66
  br label %87

87:                                               ; preds = %86, %82, %78, %74, %70
  br label %158

88:                                               ; preds = %44
  %89 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %90 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  switch i32 %91, label %100 [
    i32 132, label %92
    i32 130, label %96
  ]

92:                                               ; preds = %88
  %93 = load i8*, i8** @conv_bgr24_argb8888, align 8
  %94 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %94, i32 0, i32 11
  store i8* %93, i8** %95, align 8
  br label %101

96:                                               ; preds = %88
  %97 = load i8*, i8** @conv_bgr24_rgb565, align 8
  %98 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %99 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %98, i32 0, i32 11
  store i8* %97, i8** %99, align 8
  br label %100

100:                                              ; preds = %88, %96
  br label %101

101:                                              ; preds = %100, %92
  br label %158

102:                                              ; preds = %44
  %103 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %104 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  switch i32 %105, label %122 [
    i32 134, label %106
    i32 131, label %110
    i32 133, label %114
    i32 129, label %118
  ]

106:                                              ; preds = %102
  %107 = load i8*, i8** @conv_argb8888_0rgb1555, align 8
  %108 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %108, i32 0, i32 11
  store i8* %107, i8** %109, align 8
  br label %123

110:                                              ; preds = %102
  %111 = load i8*, i8** @conv_argb8888_bgr24, align 8
  %112 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %113 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %112, i32 0, i32 11
  store i8* %111, i8** %113, align 8
  br label %123

114:                                              ; preds = %102
  %115 = load i8*, i8** @conv_argb8888_abgr8888, align 8
  %116 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %117 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %116, i32 0, i32 11
  store i8* %115, i8** %117, align 8
  br label %123

118:                                              ; preds = %102
  %119 = load i8*, i8** @conv_argb8888_rgba4444, align 8
  %120 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %120, i32 0, i32 11
  store i8* %119, i8** %121, align 8
  br label %123

122:                                              ; preds = %102
  br label %123

123:                                              ; preds = %122, %118, %114, %110, %106
  br label %158

124:                                              ; preds = %44
  %125 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %126 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  switch i32 %127, label %132 [
    i32 132, label %128
  ]

128:                                              ; preds = %124
  %129 = load i8*, i8** @conv_yuyv_argb8888, align 8
  %130 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %131 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %130, i32 0, i32 11
  store i8* %129, i8** %131, align 8
  br label %133

132:                                              ; preds = %124
  br label %133

133:                                              ; preds = %132, %128
  br label %158

134:                                              ; preds = %44
  %135 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %136 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %135, i32 0, i32 6
  %137 = load i32, i32* %136, align 4
  switch i32 %137, label %146 [
    i32 132, label %138
    i32 130, label %142
  ]

138:                                              ; preds = %134
  %139 = load i8*, i8** @conv_rgba4444_argb8888, align 8
  %140 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %141 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %140, i32 0, i32 11
  store i8* %139, i8** %141, align 8
  br label %147

142:                                              ; preds = %134
  %143 = load i8*, i8** @conv_rgba4444_rgb565, align 8
  %144 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %145 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %144, i32 0, i32 11
  store i8* %143, i8** %145, align 8
  br label %147

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %142, %138
  br label %158

148:                                              ; preds = %44
  %149 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %150 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 4
  switch i32 %151, label %156 [
    i32 131, label %152
  ]

152:                                              ; preds = %148
  %153 = load i8*, i8** @conv_abgr8888_bgr24, align 8
  %154 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %155 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %154, i32 0, i32 11
  store i8* %153, i8** %155, align 8
  br label %157

156:                                              ; preds = %148
  br label %157

157:                                              ; preds = %156, %152
  br label %158

158:                                              ; preds = %44, %157, %147, %133, %123, %101, %87, %65
  %159 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %160 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %159, i32 0, i32 11
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %164, label %163

163:                                              ; preds = %158
  store i32 0, i32* %2, align 4
  br label %223

164:                                              ; preds = %158
  br label %165

165:                                              ; preds = %164, %40
  br label %222

166:                                              ; preds = %22, %14
  %167 = load i32, i32* @scaler_argb8888_horiz, align 4
  %168 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %169 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %168, i32 0, i32 10
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @scaler_argb8888_vert, align 4
  %171 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %172 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %171, i32 0, i32 9
  store i32 %170, i32* %172, align 8
  %173 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %174 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %193 [
    i32 132, label %176
    i32 134, label %177
    i32 130, label %181
    i32 131, label %185
    i32 129, label %189
  ]

176:                                              ; preds = %166
  br label %194

177:                                              ; preds = %166
  %178 = load i8*, i8** @conv_0rgb1555_argb8888, align 8
  %179 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %180 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %179, i32 0, i32 8
  store i8* %178, i8** %180, align 8
  br label %194

181:                                              ; preds = %166
  %182 = load i8*, i8** @conv_rgb565_argb8888, align 8
  %183 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %184 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %183, i32 0, i32 8
  store i8* %182, i8** %184, align 8
  br label %194

185:                                              ; preds = %166
  %186 = load i8*, i8** @conv_bgr24_argb8888, align 8
  %187 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %188 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %187, i32 0, i32 8
  store i8* %186, i8** %188, align 8
  br label %194

189:                                              ; preds = %166
  %190 = load i8*, i8** @conv_rgba4444_argb8888, align 8
  %191 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %192 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %191, i32 0, i32 8
  store i8* %190, i8** %192, align 8
  br label %194

193:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %223

194:                                              ; preds = %189, %185, %181, %177, %176
  %195 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %196 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %195, i32 0, i32 6
  %197 = load i32, i32* %196, align 4
  switch i32 %197, label %215 [
    i32 132, label %198
    i32 129, label %199
    i32 134, label %203
    i32 131, label %207
    i32 133, label %211
  ]

198:                                              ; preds = %194
  br label %216

199:                                              ; preds = %194
  %200 = load i8*, i8** @conv_argb8888_rgba4444, align 8
  %201 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %202 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %201, i32 0, i32 7
  store i8* %200, i8** %202, align 8
  br label %216

203:                                              ; preds = %194
  %204 = load i8*, i8** @conv_argb8888_0rgb1555, align 8
  %205 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %206 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %205, i32 0, i32 7
  store i8* %204, i8** %206, align 8
  br label %216

207:                                              ; preds = %194
  %208 = load i8*, i8** @conv_argb8888_bgr24, align 8
  %209 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %210 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %209, i32 0, i32 7
  store i8* %208, i8** %210, align 8
  br label %216

211:                                              ; preds = %194
  %212 = load i8*, i8** @conv_argb8888_abgr8888, align 8
  %213 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %214 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %213, i32 0, i32 7
  store i8* %212, i8** %214, align 8
  br label %216

215:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  br label %223

216:                                              ; preds = %211, %207, %203, %199, %198
  %217 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %218 = call i32 @scaler_gen_filter(%struct.scaler_ctx* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %221, label %220

220:                                              ; preds = %216
  store i32 0, i32* %2, align 4
  br label %223

221:                                              ; preds = %216
  br label %222

222:                                              ; preds = %221, %165
  store i32 1, i32* %2, align 4
  br label %223

223:                                              ; preds = %222, %220, %215, %193, %163, %13
  %224 = load i32, i32* %2, align 4
  ret i32 %224
}

declare dso_local i32 @scaler_ctx_gen_reset(%struct.scaler_ctx*) #1

declare dso_local i32 @allocate_frames(%struct.scaler_ctx*) #1

declare dso_local i32 @scaler_gen_filter(%struct.scaler_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
