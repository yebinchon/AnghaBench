; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_fpga_gfx.c_fpga_gfx_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_fpga_gfx.c_fpga_gfx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@fpga_video_bits = common dso_local global i32 0, align 4
@fpga_video_width = common dso_local global i32 0, align 4
@fpga_video_height = common dso_local global i32 0, align 4
@fpga_video_pitch = common dso_local global i32 0, align 4
@fpga_menu_frame = common dso_local global i8* null, align 8
@fpga_menu_width = common dso_local global i32 0, align 4
@fpga_menu_height = common dso_local global i32 0, align 4
@fpga_menu_pitch = common dso_local global i32 0, align 4
@fpga_menu_bits = common dso_local global i32 0, align 4
@FB_HEIGHT = common dso_local global i32 0, align 4
@FB_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32, i32, i8*, %struct.TYPE_6__*)* @fpga_gfx_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpga_gfx_frame(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, %struct.TYPE_6__* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_7__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i16, align 2
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i16, align 2
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i8* %1, i8** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store %struct.TYPE_6__* %7, %struct.TYPE_6__** %17, align 8
  %41 = load i8*, i8** %11, align 8
  store i8* %41, i8** %19, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %42 = load i32, i32* @fpga_video_bits, align 4
  store i32 %42, i32* %22, align 4
  store i32 1, i32* %23, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = bitcast i8* %43 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %24, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %8
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %50, %47, %8
  store i32 1, i32* %9, align 4
  br label %276

54:                                               ; preds = %50
  %55 = load i32, i32* @fpga_video_width, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %66, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @fpga_video_height, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @fpga_video_pitch, align 4
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %62, %58, %54
  %67 = load i32, i32* %12, align 4
  %68 = icmp ugt i32 %67, 4
  br i1 %68, label %69, label %76

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = icmp ugt i32 %70, 4
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* @fpga_video_width, align 4
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* @fpga_video_height, align 4
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* @fpga_video_pitch, align 4
  br label %76

76:                                               ; preds = %72, %69, %66
  br label %77

77:                                               ; preds = %76, %62
  %78 = load i8*, i8** @fpga_menu_frame, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %91

80:                                               ; preds = %77
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i8*, i8** @fpga_menu_frame, align 8
  store i8* %86, i8** %19, align 8
  %87 = load i32, i32* @fpga_menu_width, align 4
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* @fpga_menu_height, align 4
  store i32 %88, i32* %21, align 4
  %89 = load i32, i32* @fpga_menu_pitch, align 4
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @fpga_menu_bits, align 4
  store i32 %90, i32* %22, align 4
  br label %116

91:                                               ; preds = %80, %77
  %92 = load i32, i32* @fpga_video_width, align 4
  store i32 %92, i32* %20, align 4
  %93 = load i32, i32* @fpga_video_height, align 4
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* @fpga_video_pitch, align 4
  store i32 %94, i32* %15, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp eq i32 %95, 4
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load i32, i32* %13, align 4
  %99 = icmp eq i32 %98, 4
  br i1 %99, label %100, label %109

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %20, align 4
  %103 = icmp ult i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %21, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %23, align 4
  br label %109

109:                                              ; preds = %108, %104, %100, %97, %91
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %109
  store i32 0, i32* %23, align 4
  br label %115

115:                                              ; preds = %114, %109
  br label %116

116:                                              ; preds = %115, %85
  %117 = call i32 @video_context_driver_get_video_size(i32* %18)
  %118 = load i32, i32* %23, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %268

120:                                              ; preds = %116
  %121 = load i32, i32* %22, align 4
  %122 = icmp eq i32 %121, 16
  br i1 %122, label %123, label %266

123:                                              ; preds = %120
  %124 = load i8*, i8** %19, align 8
  %125 = load i8*, i8** @fpga_menu_frame, align 8
  %126 = icmp eq i8* %124, %125
  br i1 %126, label %127, label %196

127:                                              ; preds = %123
  store i32 0, i32* %26, align 4
  br label %128

128:                                              ; preds = %192, %127
  %129 = load i32, i32* %26, align 4
  %130 = load i32, i32* @FB_HEIGHT, align 4
  %131 = icmp ult i32 %129, %130
  br i1 %131, label %132, label %195

132:                                              ; preds = %128
  store i32 0, i32* %25, align 4
  br label %133

133:                                              ; preds = %188, %132
  %134 = load i32, i32* %25, align 4
  %135 = load i32, i32* @FB_WIDTH, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %191

137:                                              ; preds = %133
  %138 = load i32, i32* %20, align 4
  %139 = load i32, i32* %25, align 4
  %140 = mul i32 %138, %139
  %141 = load i32, i32* @FB_WIDTH, align 4
  %142 = udiv i32 %140, %141
  store i32 %142, i32* %27, align 4
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %26, align 4
  %145 = mul i32 %143, %144
  %146 = load i32, i32* @FB_HEIGHT, align 4
  %147 = udiv i32 %145, %146
  store i32 %147, i32* %28, align 4
  %148 = load i8*, i8** %19, align 8
  %149 = bitcast i8* %148 to i16*
  %150 = load i32, i32* %20, align 4
  %151 = load i32, i32* %28, align 4
  %152 = mul i32 %150, %151
  %153 = load i32, i32* %27, align 4
  %154 = add i32 %152, %153
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i16, i16* %149, i64 %155
  %157 = load i16, i16* %156, align 2
  store i16 %157, i16* %29, align 2
  %158 = load i16, i16* %29, align 2
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, 61440
  %161 = ashr i32 %160, 12
  store i32 %161, i32* %30, align 4
  %162 = load i16, i16* %29, align 2
  %163 = zext i16 %162 to i32
  %164 = and i32 %163, 3840
  %165 = ashr i32 %164, 8
  store i32 %165, i32* %31, align 4
  %166 = load i16, i16* %29, align 2
  %167 = zext i16 %166 to i32
  %168 = and i32 %167, 240
  %169 = ashr i32 %168, 4
  store i32 %169, i32* %32, align 4
  %170 = load i32, i32* %30, align 4
  %171 = shl i32 %170, 20
  %172 = load i32, i32* %32, align 4
  %173 = shl i32 %172, 12
  %174 = or i32 %171, %173
  %175 = load i32, i32* %31, align 4
  %176 = shl i32 %175, 4
  %177 = or i32 %174, %176
  %178 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @FB_WIDTH, align 4
  %182 = load i32, i32* %26, align 4
  %183 = mul i32 %181, %182
  %184 = load i32, i32* %25, align 4
  %185 = add i32 %183, %184
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %180, i64 %186
  store i32 %177, i32* %187, align 4
  br label %188

188:                                              ; preds = %137
  %189 = load i32, i32* %25, align 4
  %190 = add i32 %189, 1
  store i32 %190, i32* %25, align 4
  br label %133

191:                                              ; preds = %133
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %26, align 4
  %194 = add i32 %193, 1
  store i32 %194, i32* %26, align 4
  br label %128

195:                                              ; preds = %128
  br label %265

196:                                              ; preds = %123
  store i32 0, i32* %34, align 4
  br label %197

197:                                              ; preds = %261, %196
  %198 = load i32, i32* %34, align 4
  %199 = load i32, i32* @FB_HEIGHT, align 4
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %201, label %264

201:                                              ; preds = %197
  store i32 0, i32* %33, align 4
  br label %202

202:                                              ; preds = %257, %201
  %203 = load i32, i32* %33, align 4
  %204 = load i32, i32* @FB_WIDTH, align 4
  %205 = icmp ult i32 %203, %204
  br i1 %205, label %206, label %260

206:                                              ; preds = %202
  %207 = load i32, i32* %20, align 4
  %208 = load i32, i32* %33, align 4
  %209 = mul i32 %207, %208
  %210 = load i32, i32* @FB_WIDTH, align 4
  %211 = udiv i32 %209, %210
  store i32 %211, i32* %35, align 4
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* %34, align 4
  %214 = mul i32 %212, %213
  %215 = load i32, i32* @FB_HEIGHT, align 4
  %216 = udiv i32 %214, %215
  store i32 %216, i32* %36, align 4
  %217 = load i8*, i8** %19, align 8
  %218 = bitcast i8* %217 to i16*
  %219 = load i32, i32* %20, align 4
  %220 = load i32, i32* %36, align 4
  %221 = mul i32 %219, %220
  %222 = load i32, i32* %35, align 4
  %223 = add i32 %221, %222
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i16, i16* %218, i64 %224
  %226 = load i16, i16* %225, align 2
  store i16 %226, i16* %37, align 2
  %227 = load i16, i16* %37, align 2
  %228 = zext i16 %227 to i32
  %229 = and i32 %228, 63488
  %230 = ashr i32 %229, 11
  store i32 %230, i32* %38, align 4
  %231 = load i16, i16* %37, align 2
  %232 = zext i16 %231 to i32
  %233 = and i32 %232, 2016
  %234 = ashr i32 %233, 5
  store i32 %234, i32* %39, align 4
  %235 = load i16, i16* %37, align 2
  %236 = zext i16 %235 to i32
  %237 = and i32 %236, 31
  %238 = ashr i32 %237, 0
  store i32 %238, i32* %40, align 4
  %239 = load i32, i32* %38, align 4
  %240 = shl i32 %239, 19
  %241 = load i32, i32* %40, align 4
  %242 = shl i32 %241, 11
  %243 = or i32 %240, %242
  %244 = load i32, i32* %39, align 4
  %245 = shl i32 %244, 2
  %246 = or i32 %243, %245
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 0
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* @FB_WIDTH, align 4
  %251 = load i32, i32* %34, align 4
  %252 = mul i32 %250, %251
  %253 = load i32, i32* %33, align 4
  %254 = add i32 %252, %253
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds i32, i32* %249, i64 %255
  store i32 %246, i32* %256, align 4
  br label %257

257:                                              ; preds = %206
  %258 = load i32, i32* %33, align 4
  %259 = add i32 %258, 1
  store i32 %259, i32* %33, align 4
  br label %202

260:                                              ; preds = %202
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %34, align 4
  %263 = add i32 %262, 1
  store i32 %263, i32* %34, align 4
  br label %197

264:                                              ; preds = %197
  br label %265

265:                                              ; preds = %264, %195
  br label %267

266:                                              ; preds = %120
  br label %267

267:                                              ; preds = %266, %265
  br label %268

268:                                              ; preds = %267, %116
  %269 = load i8*, i8** %16, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %271, label %275

271:                                              ; preds = %268
  %272 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %273 = load i8*, i8** %16, align 8
  %274 = call i32 @font_driver_render_msg(%struct.TYPE_6__* %272, i32* null, i8* %273, i32* null)
  br label %275

275:                                              ; preds = %271, %268
  store i32 1, i32* %9, align 4
  br label %276

276:                                              ; preds = %275, %53
  %277 = load i32, i32* %9, align 4
  ret i32 %277
}

declare dso_local i32 @video_context_driver_get_video_size(i32*) #1

declare dso_local i32 @font_driver_render_msg(%struct.TYPE_6__*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
