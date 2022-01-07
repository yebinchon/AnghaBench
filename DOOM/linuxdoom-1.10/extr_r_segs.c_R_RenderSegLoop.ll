; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_segs.c_R_RenderSegLoop.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_segs.c_R_RenderSegLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32* }

@rw_x = common dso_local global i64 0, align 8
@rw_stopx = common dso_local global i64 0, align 8
@topfrac = common dso_local global i32 0, align 4
@HEIGHTUNIT = common dso_local global i32 0, align 4
@HEIGHTBITS = common dso_local global i32 0, align 4
@ceilingclip = common dso_local global i32* null, align 8
@markceiling = common dso_local global i64 0, align 8
@floorclip = common dso_local global i32* null, align 8
@ceilingplane = common dso_local global %struct.TYPE_4__* null, align 8
@bottomfrac = common dso_local global i32 0, align 4
@markfloor = common dso_local global i64 0, align 8
@floorplane = common dso_local global %struct.TYPE_3__* null, align 8
@segtextured = common dso_local global i64 0, align 8
@rw_centerangle = common dso_local global i64 0, align 8
@xtoviewangle = common dso_local global i64* null, align 8
@ANGLETOFINESHIFT = common dso_local global i64 0, align 8
@rw_offset = common dso_local global i32 0, align 4
@finetangent = common dso_local global i32* null, align 8
@rw_distance = common dso_local global i32 0, align 4
@FRACBITS = common dso_local global i32 0, align 4
@rw_scale = common dso_local global i32 0, align 4
@LIGHTSCALESHIFT = common dso_local global i32 0, align 4
@MAXLIGHTSCALE = common dso_local global i32 0, align 4
@walllights = common dso_local global i32* null, align 8
@dc_colormap = common dso_local global i32 0, align 4
@dc_x = common dso_local global i64 0, align 8
@dc_iscale = common dso_local global i32 0, align 4
@midtexture = common dso_local global i64 0, align 8
@dc_yl = common dso_local global i32 0, align 4
@dc_yh = common dso_local global i32 0, align 4
@rw_midtexturemid = common dso_local global i32 0, align 4
@dc_texturemid = common dso_local global i32 0, align 4
@dc_source = common dso_local global i32 0, align 4
@viewheight = common dso_local global i32 0, align 4
@toptexture = common dso_local global i64 0, align 8
@pixhigh = common dso_local global i32 0, align 4
@pixhighstep = common dso_local global i64 0, align 8
@rw_toptexturemid = common dso_local global i32 0, align 4
@bottomtexture = common dso_local global i64 0, align 8
@pixlow = common dso_local global i32 0, align 4
@pixlowstep = common dso_local global i64 0, align 8
@rw_bottomtexturemid = common dso_local global i32 0, align 4
@maskedtexture = common dso_local global i64 0, align 8
@maskedtexturecol = common dso_local global i32* null, align 8
@rw_scalestep = common dso_local global i64 0, align 8
@topstep = common dso_local global i64 0, align 8
@bottomstep = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_RenderSegLoop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  br label %9

9:                                                ; preds = %332, %0
  %10 = load i64, i64* @rw_x, align 8
  %11 = load i64, i64* @rw_stopx, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %335

13:                                               ; preds = %9
  %14 = load i32, i32* @topfrac, align 4
  %15 = load i32, i32* @HEIGHTUNIT, align 4
  %16 = add nsw i32 %14, %15
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @HEIGHTBITS, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32*, i32** @ceilingclip, align 8
  %22 = load i64, i64* @rw_x, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  %26 = icmp slt i32 %20, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %13
  %28 = load i32*, i32** @ceilingclip, align 8
  %29 = load i64, i64* @rw_x, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %27, %13
  %34 = load i64, i64* @markceiling, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %33
  %37 = load i32*, i32** @ceilingclip, align 8
  %38 = load i64, i64* @rw_x, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32*, i32** @floorclip, align 8
  %46 = load i64, i64* @rw_x, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %44, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %36
  %51 = load i32*, i32** @floorclip, align 8
  %52 = load i64, i64* @rw_x, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %50, %36
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ceilingplane, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @rw_x, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** @ceilingplane, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* @rw_x, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %67, i32* %72, align 4
  br label %73

73:                                               ; preds = %60, %56
  br label %74

74:                                               ; preds = %73, %33
  %75 = load i32, i32* @bottomfrac, align 4
  %76 = load i32, i32* @HEIGHTBITS, align 4
  %77 = ashr i32 %75, %76
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32*, i32** @floorclip, align 8
  %80 = load i64, i64* @rw_x, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = icmp sge i32 %78, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %74
  %85 = load i32*, i32** @floorclip, align 8
  %86 = load i64, i64* @rw_x, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = sub nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %84, %74
  %91 = load i64, i64* @markfloor, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %131

93:                                               ; preds = %90
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %7, align 4
  %96 = load i32*, i32** @floorclip, align 8
  %97 = load i64, i64* @rw_x, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** @ceilingclip, align 8
  %103 = load i64, i64* @rw_x, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp sle i32 %101, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %93
  %108 = load i32*, i32** @ceilingclip, align 8
  %109 = load i64, i64* @rw_x, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %107, %93
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp sle i32 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %113
  %118 = load i32, i32* %7, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** @floorplane, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @rw_x, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 %118, i32* %123, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** @floorplane, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = load i64, i64* @rw_x, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32 %124, i32* %129, align 4
  br label %130

130:                                              ; preds = %117, %113
  br label %131

131:                                              ; preds = %130, %90
  %132 = load i64, i64* @segtextured, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %172

134:                                              ; preds = %131
  %135 = load i64, i64* @rw_centerangle, align 8
  %136 = load i64*, i64** @xtoviewangle, align 8
  %137 = load i64, i64* @rw_x, align 8
  %138 = getelementptr inbounds i64, i64* %136, i64 %137
  %139 = load i64, i64* %138, align 8
  %140 = add i64 %135, %139
  %141 = load i64, i64* @ANGLETOFINESHIFT, align 8
  %142 = lshr i64 %140, %141
  store i64 %142, i64* %1, align 8
  %143 = load i32, i32* @rw_offset, align 4
  %144 = load i32*, i32** @finetangent, align 8
  %145 = load i64, i64* %1, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @rw_distance, align 4
  %149 = call i32 @FixedMul(i32 %147, i32 %148)
  %150 = sub nsw i32 %143, %149
  store i32 %150, i32* %6, align 4
  %151 = load i32, i32* @FRACBITS, align 4
  %152 = load i32, i32* %6, align 4
  %153 = ashr i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* @rw_scale, align 4
  %155 = load i32, i32* @LIGHTSCALESHIFT, align 4
  %156 = lshr i32 %154, %155
  store i32 %156, i32* %2, align 4
  %157 = load i32, i32* %2, align 4
  %158 = load i32, i32* @MAXLIGHTSCALE, align 4
  %159 = icmp uge i32 %157, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %134
  %161 = load i32, i32* @MAXLIGHTSCALE, align 4
  %162 = sub i32 %161, 1
  store i32 %162, i32* %2, align 4
  br label %163

163:                                              ; preds = %160, %134
  %164 = load i32*, i32** @walllights, align 8
  %165 = load i32, i32* %2, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* @dc_colormap, align 4
  %169 = load i64, i64* @rw_x, align 8
  store i64 %169, i64* @dc_x, align 8
  %170 = load i32, i32* @rw_scale, align 4
  %171 = udiv i32 -1, %170
  store i32 %171, i32* @dc_iscale, align 4
  br label %172

172:                                              ; preds = %163, %131
  %173 = load i64, i64* @midtexture, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load i32, i32* %3, align 4
  store i32 %176, i32* @dc_yl, align 4
  %177 = load i32, i32* %4, align 4
  store i32 %177, i32* @dc_yh, align 4
  %178 = load i32, i32* @rw_midtexturemid, align 4
  store i32 %178, i32* @dc_texturemid, align 4
  %179 = load i64, i64* @midtexture, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @R_GetColumn(i64 %179, i32 %180)
  store i32 %181, i32* @dc_source, align 4
  %182 = call i32 (...) @colfunc()
  %183 = load i32, i32* @viewheight, align 4
  %184 = load i32*, i32** @ceilingclip, align 8
  %185 = load i64, i64* @rw_x, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  store i32 %183, i32* %186, align 4
  %187 = load i32*, i32** @floorclip, align 8
  %188 = load i64, i64* @rw_x, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 -1, i32* %189, align 4
  br label %316

190:                                              ; preds = %172
  %191 = load i64, i64* @toptexture, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %237

193:                                              ; preds = %190
  %194 = load i32, i32* @pixhigh, align 4
  %195 = load i32, i32* @HEIGHTBITS, align 4
  %196 = ashr i32 %194, %195
  store i32 %196, i32* %5, align 4
  %197 = load i64, i64* @pixhighstep, align 8
  %198 = load i32, i32* @pixhigh, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* @pixhigh, align 4
  %202 = load i32, i32* %5, align 4
  %203 = load i32*, i32** @floorclip, align 8
  %204 = load i64, i64* @rw_x, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp sge i32 %202, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %193
  %209 = load i32*, i32** @floorclip, align 8
  %210 = load i64, i64* @rw_x, align 8
  %211 = getelementptr inbounds i32, i32* %209, i64 %210
  %212 = load i32, i32* %211, align 4
  %213 = sub nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %208, %193
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* %3, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %230

218:                                              ; preds = %214
  %219 = load i32, i32* %3, align 4
  store i32 %219, i32* @dc_yl, align 4
  %220 = load i32, i32* %5, align 4
  store i32 %220, i32* @dc_yh, align 4
  %221 = load i32, i32* @rw_toptexturemid, align 4
  store i32 %221, i32* @dc_texturemid, align 4
  %222 = load i64, i64* @toptexture, align 8
  %223 = load i32, i32* %6, align 4
  %224 = call i32 @R_GetColumn(i64 %222, i32 %223)
  store i32 %224, i32* @dc_source, align 4
  %225 = call i32 (...) @colfunc()
  %226 = load i32, i32* %5, align 4
  %227 = load i32*, i32** @ceilingclip, align 8
  %228 = load i64, i64* @rw_x, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  store i32 %226, i32* %229, align 4
  br label %236

230:                                              ; preds = %214
  %231 = load i32, i32* %3, align 4
  %232 = sub nsw i32 %231, 1
  %233 = load i32*, i32** @ceilingclip, align 8
  %234 = load i64, i64* @rw_x, align 8
  %235 = getelementptr inbounds i32, i32* %233, i64 %234
  store i32 %232, i32* %235, align 4
  br label %236

236:                                              ; preds = %230, %218
  br label %247

237:                                              ; preds = %190
  %238 = load i64, i64* @markceiling, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %237
  %241 = load i32, i32* %3, align 4
  %242 = sub nsw i32 %241, 1
  %243 = load i32*, i32** @ceilingclip, align 8
  %244 = load i64, i64* @rw_x, align 8
  %245 = getelementptr inbounds i32, i32* %243, i64 %244
  store i32 %242, i32* %245, align 4
  br label %246

246:                                              ; preds = %240, %237
  br label %247

247:                                              ; preds = %246, %236
  %248 = load i64, i64* @bottomtexture, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %297

250:                                              ; preds = %247
  %251 = load i32, i32* @pixlow, align 4
  %252 = load i32, i32* @HEIGHTUNIT, align 4
  %253 = add nsw i32 %251, %252
  %254 = sub nsw i32 %253, 1
  %255 = load i32, i32* @HEIGHTBITS, align 4
  %256 = ashr i32 %254, %255
  store i32 %256, i32* %5, align 4
  %257 = load i64, i64* @pixlowstep, align 8
  %258 = load i32, i32* @pixlow, align 4
  %259 = sext i32 %258 to i64
  %260 = add nsw i64 %259, %257
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* @pixlow, align 4
  %262 = load i32, i32* %5, align 4
  %263 = load i32*, i32** @ceilingclip, align 8
  %264 = load i64, i64* @rw_x, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  %266 = load i32, i32* %265, align 4
  %267 = icmp sle i32 %262, %266
  br i1 %267, label %268, label %274

268:                                              ; preds = %250
  %269 = load i32*, i32** @ceilingclip, align 8
  %270 = load i64, i64* @rw_x, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %5, align 4
  br label %274

274:                                              ; preds = %268, %250
  %275 = load i32, i32* %5, align 4
  %276 = load i32, i32* %4, align 4
  %277 = icmp sle i32 %275, %276
  br i1 %277, label %278, label %290

278:                                              ; preds = %274
  %279 = load i32, i32* %5, align 4
  store i32 %279, i32* @dc_yl, align 4
  %280 = load i32, i32* %4, align 4
  store i32 %280, i32* @dc_yh, align 4
  %281 = load i32, i32* @rw_bottomtexturemid, align 4
  store i32 %281, i32* @dc_texturemid, align 4
  %282 = load i64, i64* @bottomtexture, align 8
  %283 = load i32, i32* %6, align 4
  %284 = call i32 @R_GetColumn(i64 %282, i32 %283)
  store i32 %284, i32* @dc_source, align 4
  %285 = call i32 (...) @colfunc()
  %286 = load i32, i32* %5, align 4
  %287 = load i32*, i32** @floorclip, align 8
  %288 = load i64, i64* @rw_x, align 8
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  store i32 %286, i32* %289, align 4
  br label %296

290:                                              ; preds = %274
  %291 = load i32, i32* %4, align 4
  %292 = add nsw i32 %291, 1
  %293 = load i32*, i32** @floorclip, align 8
  %294 = load i64, i64* @rw_x, align 8
  %295 = getelementptr inbounds i32, i32* %293, i64 %294
  store i32 %292, i32* %295, align 4
  br label %296

296:                                              ; preds = %290, %278
  br label %307

297:                                              ; preds = %247
  %298 = load i64, i64* @markfloor, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %297
  %301 = load i32, i32* %4, align 4
  %302 = add nsw i32 %301, 1
  %303 = load i32*, i32** @floorclip, align 8
  %304 = load i64, i64* @rw_x, align 8
  %305 = getelementptr inbounds i32, i32* %303, i64 %304
  store i32 %302, i32* %305, align 4
  br label %306

306:                                              ; preds = %300, %297
  br label %307

307:                                              ; preds = %306, %296
  %308 = load i64, i64* @maskedtexture, align 8
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %307
  %311 = load i32, i32* %6, align 4
  %312 = load i32*, i32** @maskedtexturecol, align 8
  %313 = load i64, i64* @rw_x, align 8
  %314 = getelementptr inbounds i32, i32* %312, i64 %313
  store i32 %311, i32* %314, align 4
  br label %315

315:                                              ; preds = %310, %307
  br label %316

316:                                              ; preds = %315, %175
  %317 = load i64, i64* @rw_scalestep, align 8
  %318 = load i32, i32* @rw_scale, align 4
  %319 = zext i32 %318 to i64
  %320 = add nsw i64 %319, %317
  %321 = trunc i64 %320 to i32
  store i32 %321, i32* @rw_scale, align 4
  %322 = load i64, i64* @topstep, align 8
  %323 = load i32, i32* @topfrac, align 4
  %324 = sext i32 %323 to i64
  %325 = add nsw i64 %324, %322
  %326 = trunc i64 %325 to i32
  store i32 %326, i32* @topfrac, align 4
  %327 = load i64, i64* @bottomstep, align 8
  %328 = load i32, i32* @bottomfrac, align 4
  %329 = sext i32 %328 to i64
  %330 = add nsw i64 %329, %327
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* @bottomfrac, align 4
  br label %332

332:                                              ; preds = %316
  %333 = load i64, i64* @rw_x, align 8
  %334 = add i64 %333, 1
  store i64 %334, i64* @rw_x, align 8
  br label %9

335:                                              ; preds = %9
  ret void
}

declare dso_local i32 @FixedMul(i32, i32) #1

declare dso_local i32 @R_GetColumn(i64, i32) #1

declare dso_local i32 @colfunc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
