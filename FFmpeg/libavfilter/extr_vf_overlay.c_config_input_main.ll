; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_config_input_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_overlay.c_config_input_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i8*, i32, %struct.TYPE_11__*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@alpha_pix_fmts = common dso_local global i32 0, align 4
@blend_slice_yuva420 = common dso_local global i8* null, align 8
@blend_slice_yuv420 = common dso_local global i8* null, align 8
@blend_slice_yuva422 = common dso_local global i8* null, align 8
@blend_slice_yuv422 = common dso_local global i8* null, align 8
@blend_slice_yuva444 = common dso_local global i8* null, align 8
@blend_slice_yuv444 = common dso_local global i8* null, align 8
@blend_slice_rgba = common dso_local global i8* null, align 8
@blend_slice_rgb = common dso_local global i8* null, align 8
@blend_slice_gbrap = common dso_local global i8* null, align 8
@blend_slice_gbrp = common dso_local global i8* null, align 8
@blend_slice_yuva420_pm = common dso_local global i8* null, align 8
@blend_slice_yuv420_pm = common dso_local global i8* null, align 8
@blend_slice_yuva422_pm = common dso_local global i8* null, align 8
@blend_slice_yuv422_pm = common dso_local global i8* null, align 8
@blend_slice_yuva444_pm = common dso_local global i8* null, align 8
@blend_slice_yuv444_pm = common dso_local global i8* null, align 8
@blend_slice_rgba_pm = common dso_local global i8* null, align 8
@blend_slice_rgb_pm = common dso_local global i8* null, align 8
@blend_slice_gbrap_pm = common dso_local global i8* null, align 8
@blend_slice_gbrp_pm = common dso_local global i8* null, align 8
@ARCH_X86 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @config_input_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_input_main(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %5 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.TYPE_11__* @av_pix_fmt_desc_get(i32 %12)
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %4, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = call i32 @av_image_fill_max_pixsteps(i32 %16, i32* null, %struct.TYPE_11__* %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 7
  store i32 %26, i32* %28, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 6
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @ff_fill_rgba_map(i32 %34, i32 %37)
  %39 = icmp sge i64 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @alpha_pix_fmts, align 4
  %47 = call i32 @ff_fmt_is_in(i32 %45, i32 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %145 [
    i32 130, label %53
    i32 129, label %66
    i32 128, label %79
    i32 131, label %92
    i32 132, label %105
    i32 133, label %118
  ]

53:                                               ; preds = %1
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i8*, i8** @blend_slice_yuva420, align 8
  br label %62

60:                                               ; preds = %53
  %61 = load i8*, i8** @blend_slice_yuv420, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i8* [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  br label %145

66:                                               ; preds = %1
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i8*, i8** @blend_slice_yuva422, align 8
  br label %75

73:                                               ; preds = %66
  %74 = load i8*, i8** @blend_slice_yuv422, align 8
  br label %75

75:                                               ; preds = %73, %71
  %76 = phi i8* [ %72, %71 ], [ %74, %73 ]
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  br label %145

79:                                               ; preds = %1
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i8*, i8** @blend_slice_yuva444, align 8
  br label %88

86:                                               ; preds = %79
  %87 = load i8*, i8** @blend_slice_yuv444, align 8
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i8* [ %85, %84 ], [ %87, %86 ]
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 4
  store i8* %89, i8** %91, align 8
  br label %145

92:                                               ; preds = %1
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92
  %98 = load i8*, i8** @blend_slice_rgba, align 8
  br label %101

99:                                               ; preds = %92
  %100 = load i8*, i8** @blend_slice_rgb, align 8
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i8* [ %98, %97 ], [ %100, %99 ]
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 4
  store i8* %102, i8** %104, align 8
  br label %145

105:                                              ; preds = %1
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %105
  %111 = load i8*, i8** @blend_slice_gbrap, align 8
  br label %114

112:                                              ; preds = %105
  %113 = load i8*, i8** @blend_slice_gbrp, align 8
  br label %114

114:                                              ; preds = %112, %110
  %115 = phi i8* [ %111, %110 ], [ %113, %112 ]
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 4
  store i8* %115, i8** %117, align 8
  br label %145

118:                                              ; preds = %1
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  switch i32 %121, label %142 [
    i32 136, label %122
    i32 135, label %126
    i32 134, label %130
    i32 140, label %134
    i32 137, label %134
    i32 139, label %134
    i32 141, label %134
    i32 138, label %138
  ]

122:                                              ; preds = %118
  %123 = load i8*, i8** @blend_slice_yuva420, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  br label %144

126:                                              ; preds = %118
  %127 = load i8*, i8** @blend_slice_yuva422, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 4
  store i8* %127, i8** %129, align 8
  br label %144

130:                                              ; preds = %118
  %131 = load i8*, i8** @blend_slice_yuva444, align 8
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 4
  store i8* %131, i8** %133, align 8
  br label %144

134:                                              ; preds = %118, %118, %118, %118
  %135 = load i8*, i8** @blend_slice_rgba, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  store i8* %135, i8** %137, align 8
  br label %144

138:                                              ; preds = %118
  %139 = load i8*, i8** @blend_slice_gbrap, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  store i8* %139, i8** %141, align 8
  br label %144

142:                                              ; preds = %118
  %143 = call i32 @av_assert0(i32 0)
  br label %144

144:                                              ; preds = %142, %138, %134, %130, %126, %122
  br label %145

145:                                              ; preds = %1, %144, %114, %101, %88, %75, %62
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  br label %248

151:                                              ; preds = %145
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  switch i32 %154, label %247 [
    i32 130, label %155
    i32 129, label %168
    i32 128, label %181
    i32 131, label %194
    i32 132, label %207
    i32 133, label %220
  ]

155:                                              ; preds = %151
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %155
  %161 = load i8*, i8** @blend_slice_yuva420_pm, align 8
  br label %164

162:                                              ; preds = %155
  %163 = load i8*, i8** @blend_slice_yuv420_pm, align 8
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i8* [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 4
  store i8* %165, i8** %167, align 8
  br label %247

168:                                              ; preds = %151
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = load i8*, i8** @blend_slice_yuva422_pm, align 8
  br label %177

175:                                              ; preds = %168
  %176 = load i8*, i8** @blend_slice_yuv422_pm, align 8
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i8* [ %174, %173 ], [ %176, %175 ]
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 4
  store i8* %178, i8** %180, align 8
  br label %247

181:                                              ; preds = %151
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i8*, i8** @blend_slice_yuva444_pm, align 8
  br label %190

188:                                              ; preds = %181
  %189 = load i8*, i8** @blend_slice_yuv444_pm, align 8
  br label %190

190:                                              ; preds = %188, %186
  %191 = phi i8* [ %187, %186 ], [ %189, %188 ]
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 4
  store i8* %191, i8** %193, align 8
  br label %247

194:                                              ; preds = %151
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = load i8*, i8** @blend_slice_rgba_pm, align 8
  br label %203

201:                                              ; preds = %194
  %202 = load i8*, i8** @blend_slice_rgb_pm, align 8
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i8* [ %200, %199 ], [ %202, %201 ]
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 4
  store i8* %204, i8** %206, align 8
  br label %247

207:                                              ; preds = %151
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i8*, i8** @blend_slice_gbrap_pm, align 8
  br label %216

214:                                              ; preds = %207
  %215 = load i8*, i8** @blend_slice_gbrp_pm, align 8
  br label %216

216:                                              ; preds = %214, %212
  %217 = phi i8* [ %213, %212 ], [ %215, %214 ]
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 4
  store i8* %217, i8** %219, align 8
  br label %247

220:                                              ; preds = %151
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  switch i32 %223, label %244 [
    i32 136, label %224
    i32 135, label %228
    i32 134, label %232
    i32 140, label %236
    i32 137, label %236
    i32 139, label %236
    i32 141, label %236
    i32 138, label %240
  ]

224:                                              ; preds = %220
  %225 = load i8*, i8** @blend_slice_yuva420_pm, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 4
  store i8* %225, i8** %227, align 8
  br label %246

228:                                              ; preds = %220
  %229 = load i8*, i8** @blend_slice_yuva422_pm, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 4
  store i8* %229, i8** %231, align 8
  br label %246

232:                                              ; preds = %220
  %233 = load i8*, i8** @blend_slice_yuva444_pm, align 8
  %234 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 4
  store i8* %233, i8** %235, align 8
  br label %246

236:                                              ; preds = %220, %220, %220, %220
  %237 = load i8*, i8** @blend_slice_rgba_pm, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 4
  store i8* %237, i8** %239, align 8
  br label %246

240:                                              ; preds = %220
  %241 = load i8*, i8** @blend_slice_gbrap_pm, align 8
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %242, i32 0, i32 4
  store i8* %241, i8** %243, align 8
  br label %246

244:                                              ; preds = %220
  %245 = call i32 @av_assert0(i32 0)
  br label %246

246:                                              ; preds = %244, %240, %236, %232, %228, %224
  br label %247

247:                                              ; preds = %151, %246, %216, %203, %190, %177, %164
  br label %248

248:                                              ; preds = %247, %150
  %249 = load i64, i64* @ARCH_X86, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %266

251:                                              ; preds = %248
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @ff_overlay_init_x86(%struct.TYPE_10__* %252, i32 %255, i32 %258, i32 %261, i32 %264)
  br label %266

266:                                              ; preds = %251, %248
  ret i32 0
}

declare dso_local %struct.TYPE_11__* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @av_image_fill_max_pixsteps(i32, i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @ff_fill_rgba_map(i32, i32) #1

declare dso_local i32 @ff_fmt_is_in(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @ff_overlay_init_x86(%struct.TYPE_10__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
