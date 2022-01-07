; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_segs.c_R_RenderMaskedSegRange.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_r_segs.c_R_RenderMaskedSegRange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_17__*, %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i64*, %struct.TYPE_16__* }

@curline = common dso_local global %struct.TYPE_16__* null, align 8
@frontsector = common dso_local global %struct.TYPE_15__* null, align 8
@backsector = common dso_local global %struct.TYPE_17__* null, align 8
@texturetranslation = common dso_local global i32* null, align 8
@LIGHTSEGSHIFT = common dso_local global i32 0, align 4
@extralight = common dso_local global i32 0, align 4
@scalelight = common dso_local global i64** null, align 8
@walllights = common dso_local global i64* null, align 8
@LIGHTLEVELS = common dso_local global i32 0, align 4
@maskedtexturecol = common dso_local global i64* null, align 8
@rw_scalestep = common dso_local global i32 0, align 4
@spryscale = common dso_local global i32 0, align 4
@mfloorclip = common dso_local global i32 0, align 4
@mceilingclip = common dso_local global i32 0, align 4
@ML_DONTPEGBOTTOM = common dso_local global i32 0, align 4
@dc_texturemid = common dso_local global i64 0, align 8
@textureheight = common dso_local global i64* null, align 8
@viewz = common dso_local global i64 0, align 8
@fixedcolormap = common dso_local global i64 0, align 8
@dc_colormap = common dso_local global i64 0, align 8
@dc_x = common dso_local global i32 0, align 4
@MAXSHORT = common dso_local global i64 0, align 8
@LIGHTSCALESHIFT = common dso_local global i32 0, align 4
@MAXLIGHTSCALE = common dso_local global i32 0, align 4
@centeryfrac = common dso_local global i64 0, align 8
@sprtopscreen = common dso_local global i64 0, align 8
@dc_iscale = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_RenderMaskedSegRange(%struct.TYPE_14__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** @curline, align 8
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curline, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 5
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** @frontsector, align 8
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curline, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** @backsector, align 8
  %20 = load i32*, i32** @texturetranslation, align 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curline, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32, i32* %20, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** @frontsector, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LIGHTSEGSHIFT, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @extralight, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curline, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curline, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %39, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %3
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %9, align 4
  br label %65

49:                                               ; preds = %3
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curline, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curline, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %54, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %49
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %61, %49
  br label %65

65:                                               ; preds = %64, %46
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i64**, i64*** @scalelight, align 8
  %70 = getelementptr inbounds i64*, i64** %69, i64 0
  %71 = load i64*, i64** %70, align 8
  store i64* %71, i64** @walllights, align 8
  br label %90

72:                                               ; preds = %65
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @LIGHTLEVELS, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %72
  %77 = load i64**, i64*** @scalelight, align 8
  %78 = load i32, i32* @LIGHTLEVELS, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i64*, i64** %77, i64 %80
  %82 = load i64*, i64** %81, align 8
  store i64* %82, i64** @walllights, align 8
  br label %89

83:                                               ; preds = %72
  %84 = load i64**, i64*** @scalelight, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i64*, i64** %84, i64 %86
  %88 = load i64*, i64** %87, align 8
  store i64* %88, i64** @walllights, align 8
  br label %89

89:                                               ; preds = %83, %76
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 5
  %93 = load i64*, i64** %92, align 8
  store i64* %93, i64** @maskedtexturecol, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* @rw_scalestep, align 4
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %100, %103
  %105 = load i32, i32* @rw_scalestep, align 4
  %106 = mul nsw i32 %104, %105
  %107 = add nsw i32 %99, %106
  store i32 %107, i32* @spryscale, align 4
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  store i32 %110, i32* @mfloorclip, align 4
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* @mceilingclip, align 4
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curline, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ML_DONTPEGBOTTOM, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %149

122:                                              ; preds = %90
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** @frontsector, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** @backsector, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp sgt i64 %125, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** @frontsector, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  br label %138

134:                                              ; preds = %122
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** @backsector, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  br label %138

138:                                              ; preds = %134, %130
  %139 = phi i64 [ %133, %130 ], [ %137, %134 ]
  store i64 %139, i64* @dc_texturemid, align 8
  %140 = load i64, i64* @dc_texturemid, align 8
  %141 = load i64*, i64** @textureheight, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %140, %145
  %147 = load i64, i64* @viewz, align 8
  %148 = sub nsw i64 %146, %147
  store i64 %148, i64* @dc_texturemid, align 8
  br label %170

149:                                              ; preds = %90
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** @frontsector, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** @backsector, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp slt i64 %152, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** @frontsector, align 8
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  br label %165

161:                                              ; preds = %149
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** @backsector, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  br label %165

165:                                              ; preds = %161, %157
  %166 = phi i64 [ %160, %157 ], [ %164, %161 ]
  store i64 %166, i64* @dc_texturemid, align 8
  %167 = load i64, i64* @dc_texturemid, align 8
  %168 = load i64, i64* @viewz, align 8
  %169 = sub nsw i64 %167, %168
  store i64 %169, i64* @dc_texturemid, align 8
  br label %170

170:                                              ; preds = %165, %138
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** @curline, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @dc_texturemid, align 8
  %177 = add nsw i64 %176, %175
  store i64 %177, i64* @dc_texturemid, align 8
  %178 = load i64, i64* @fixedcolormap, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load i64, i64* @fixedcolormap, align 8
  store i64 %181, i64* @dc_colormap, align 8
  br label %182

182:                                              ; preds = %180, %170
  %183 = load i32, i32* %5, align 4
  store i32 %183, i32* @dc_x, align 4
  br label %184

184:                                              ; preds = %243, %182
  %185 = load i32, i32* @dc_x, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp sle i32 %185, %186
  br i1 %187, label %188, label %246

188:                                              ; preds = %184
  %189 = load i64*, i64** @maskedtexturecol, align 8
  %190 = load i32, i32* @dc_x, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i64, i64* %189, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @MAXSHORT, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %239

196:                                              ; preds = %188
  %197 = load i64, i64* @fixedcolormap, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %215, label %199

199:                                              ; preds = %196
  %200 = load i32, i32* @spryscale, align 4
  %201 = load i32, i32* @LIGHTSCALESHIFT, align 4
  %202 = ashr i32 %200, %201
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = load i32, i32* @MAXLIGHTSCALE, align 4
  %205 = icmp uge i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = load i32, i32* @MAXLIGHTSCALE, align 4
  %208 = sub i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %209

209:                                              ; preds = %206, %199
  %210 = load i64*, i64** @walllights, align 8
  %211 = load i32, i32* %7, align 4
  %212 = zext i32 %211 to i64
  %213 = getelementptr inbounds i64, i64* %210, i64 %212
  %214 = load i64, i64* %213, align 8
  store i64 %214, i64* @dc_colormap, align 8
  br label %215

215:                                              ; preds = %209, %196
  %216 = load i64, i64* @centeryfrac, align 8
  %217 = load i64, i64* @dc_texturemid, align 8
  %218 = load i32, i32* @spryscale, align 4
  %219 = call i64 @FixedMul(i64 %217, i32 %218)
  %220 = sub nsw i64 %216, %219
  store i64 %220, i64* @sprtopscreen, align 8
  %221 = load i32, i32* @spryscale, align 4
  %222 = udiv i32 -1, %221
  store i32 %222, i32* @dc_iscale, align 4
  %223 = load i32, i32* %10, align 4
  %224 = load i64*, i64** @maskedtexturecol, align 8
  %225 = load i32, i32* @dc_x, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i64, i64* %224, i64 %226
  %228 = load i64, i64* %227, align 8
  %229 = call i64 @R_GetColumn(i32 %223, i64 %228)
  %230 = inttoptr i64 %229 to i32*
  %231 = getelementptr inbounds i32, i32* %230, i64 -3
  store i32* %231, i32** %8, align 8
  %232 = load i32*, i32** %8, align 8
  %233 = call i32 @R_DrawMaskedColumn(i32* %232)
  %234 = load i64, i64* @MAXSHORT, align 8
  %235 = load i64*, i64** @maskedtexturecol, align 8
  %236 = load i32, i32* @dc_x, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i64, i64* %235, i64 %237
  store i64 %234, i64* %238, align 8
  br label %239

239:                                              ; preds = %215, %188
  %240 = load i32, i32* @rw_scalestep, align 4
  %241 = load i32, i32* @spryscale, align 4
  %242 = add nsw i32 %241, %240
  store i32 %242, i32* @spryscale, align 4
  br label %243

243:                                              ; preds = %239
  %244 = load i32, i32* @dc_x, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* @dc_x, align 4
  br label %184

246:                                              ; preds = %184
  ret void
}

declare dso_local i64 @FixedMul(i64, i32) #1

declare dso_local i64 @R_GetColumn(i32, i64) #1

declare dso_local i32 @R_DrawMaskedColumn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
