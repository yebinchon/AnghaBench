; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawCdLeds.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawCdLeds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@rmode = common dso_local global %struct.TYPE_10__* null, align 8
@config = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@square = common dso_local global i32* null, align 8
@bitmap = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@vwidth = common dso_local global i32 0, align 4
@vheight = common dso_local global i32 0, align 4
@GX_TF_RGBA8 = common dso_local global i32 0, align 4
@GX_CLAMP = common dso_local global i32 0, align 4
@GX_FALSE = common dso_local global i32 0, align 4
@GX_LINEAR = common dso_local global i32 0, align 4
@GX_LIN_MIP_LIN = common dso_local global i32 0, align 4
@GX_TRUE = common dso_local global i32 0, align 4
@GX_ANISO_4 = common dso_local global i32 0, align 4
@GX_TEXMAP0 = common dso_local global i32 0, align 4
@GX_QUADS = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4
@texturemem = common dso_local global i32 0, align 4
@GX_TF_RGB565 = common dso_local global i32 0, align 4
@GX_NEAR = common dso_local global i32 0, align 4
@GX_NEAR_MIP_NEAR = common dso_local global i32 0, align 4
@GX_ANISO_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*)* @gxDrawCdLeds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxDrawCdLeds(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rmode, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 %16, %19
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rmode, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sdiv i32 %20, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rmode, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = mul nsw i32 %27, %30
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** @rmode, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 0), align 4
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %2
  %40 = load i32, i32* %5, align 4
  %41 = mul nsw i32 %40, 3
  %42 = sdiv i32 %41, 4
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %2
  %44 = load i32*, i32** @square, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** @square, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 9
  %49 = load i32, i32* %48, align 4
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %7, align 4
  %51 = load i32*, i32** @square, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** @square, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 10
  %56 = load i32, i32* %55, align 4
  %57 = sub nsw i32 %53, %56
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 4
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %58, %59
  %61 = load i32, i32* @vwidth, align 4
  %62 = sdiv i32 %60, %61
  %63 = load i32*, i32** @square, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = add nsw i32 %66, 8
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 0), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 1), align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %70, %71
  %73 = load i32, i32* @vwidth, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i32*, i32** @square, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 9
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %74, %77
  %79 = sub nsw i32 %78, 8
  %80 = load i32, i32* %5, align 4
  %81 = sub nsw i32 %79, %80
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 2), align 4
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @bitmap, i32 0, i32 0, i32 3), align 4
  %84 = add nsw i32 %82, %83
  %85 = sub nsw i32 %84, 4
  %86 = load i32, i32* %8, align 4
  %87 = mul nsw i32 %85, %86
  %88 = load i32, i32* @vheight, align 4
  %89 = sdiv i32 %87, %88
  %90 = load i32*, i32** @square, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 10
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %89, %92
  %94 = load i32, i32* %6, align 4
  %95 = sub nsw i32 %93, %94
  store i32 %95, i32* %11, align 4
  %96 = call i32 @gxResetRendering(i32 1)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @GX_TF_RGBA8, align 4
  %107 = load i32, i32* @GX_CLAMP, align 4
  %108 = load i32, i32* @GX_CLAMP, align 4
  %109 = load i32, i32* @GX_FALSE, align 4
  %110 = call i32 @GX_InitTexObj(i32* %12, i32 %99, i32 %102, i32 %105, i32 %106, i32 %107, i32 %108, i32 %109)
  %111 = load i32, i32* @GX_LINEAR, align 4
  %112 = load i32, i32* @GX_LIN_MIP_LIN, align 4
  %113 = load i32, i32* @GX_FALSE, align 4
  %114 = load i32, i32* @GX_TRUE, align 4
  %115 = load i32, i32* @GX_ANISO_4, align 4
  %116 = call i32 @GX_InitTexObjLOD(i32* %12, i32 %111, i32 %112, double 0.000000e+00, double 1.000000e+01, double 0.000000e+00, i32 %113, i32 %114, i32 %115)
  %117 = load i32, i32* @GX_TEXMAP0, align 4
  %118 = call i32 @GX_LoadTexObj(i32* %12, i32 %117)
  %119 = call i32 (...) @GX_InvalidateTexAll()
  %120 = load i32, i32* @GX_QUADS, align 4
  %121 = load i32, i32* @GX_VTXFMT0, align 4
  %122 = call i32 @GX_Begin(i32 %120, i32 %121, i32 4)
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %6, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @GX_Position2s16(i32 %123, i32 %126)
  %128 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %129 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 1.000000e+00)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %133, %134
  %136 = call i32 @GX_Position2s16(i32 %132, i32 %135)
  %137 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %138 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 1.000000e+00)
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %5, align 4
  %141 = add nsw i32 %139, %140
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @GX_Position2s16(i32 %141, i32 %142)
  %144 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %145 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 0.000000e+00)
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @GX_Position2s16(i32 %146, i32 %147)
  %149 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %150 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 0.000000e+00)
  %151 = call i32 (...) @GX_End()
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @GX_TF_RGBA8, align 4
  %162 = load i32, i32* @GX_CLAMP, align 4
  %163 = load i32, i32* @GX_CLAMP, align 4
  %164 = load i32, i32* @GX_FALSE, align 4
  %165 = call i32 @GX_InitTexObj(i32* %12, i32 %154, i32 %157, i32 %160, i32 %161, i32 %162, i32 %163, i32 %164)
  %166 = load i32, i32* @GX_LINEAR, align 4
  %167 = load i32, i32* @GX_LIN_MIP_LIN, align 4
  %168 = load i32, i32* @GX_FALSE, align 4
  %169 = load i32, i32* @GX_TRUE, align 4
  %170 = load i32, i32* @GX_ANISO_4, align 4
  %171 = call i32 @GX_InitTexObjLOD(i32* %12, i32 %166, i32 %167, double 0.000000e+00, double 1.000000e+01, double 0.000000e+00, i32 %168, i32 %169, i32 %170)
  %172 = load i32, i32* @GX_TEXMAP0, align 4
  %173 = call i32 @GX_LoadTexObj(i32* %12, i32 %172)
  %174 = call i32 (...) @GX_InvalidateTexAll()
  %175 = load i32, i32* @GX_QUADS, align 4
  %176 = load i32, i32* @GX_VTXFMT0, align 4
  %177 = call i32 @GX_Begin(i32 %175, i32 %176, i32 4)
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %179, %180
  %182 = call i32 @GX_Position2s16(i32 %178, i32 %181)
  %183 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %184 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 1.000000e+00)
  %185 = load i32, i32* %10, align 4
  %186 = load i32, i32* %5, align 4
  %187 = add nsw i32 %185, %186
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %6, align 4
  %190 = add nsw i32 %188, %189
  %191 = call i32 @GX_Position2s16(i32 %187, i32 %190)
  %192 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %193 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 1.000000e+00)
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %5, align 4
  %196 = add nsw i32 %194, %195
  %197 = load i32, i32* %11, align 4
  %198 = call i32 @GX_Position2s16(i32 %196, i32 %197)
  %199 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %200 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 0.000000e+00)
  %201 = load i32, i32* %10, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i32 @GX_Position2s16(i32 %201, i32 %202)
  %204 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %205 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 0.000000e+00)
  %206 = call i32 (...) @GX_End()
  %207 = call i32 @gxResetRendering(i32 0)
  %208 = load i32, i32* @texturemem, align 4
  %209 = load i32, i32* @vwidth, align 4
  %210 = load i32, i32* @vheight, align 4
  %211 = load i32, i32* @GX_TF_RGB565, align 4
  %212 = load i32, i32* @GX_CLAMP, align 4
  %213 = load i32, i32* @GX_CLAMP, align 4
  %214 = load i32, i32* @GX_FALSE, align 4
  %215 = call i32 @GX_InitTexObj(i32* %13, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214)
  %216 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @config, i32 0, i32 1), align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %43
  %219 = load i32, i32* @GX_NEAR, align 4
  %220 = load i32, i32* @GX_NEAR_MIP_NEAR, align 4
  %221 = load i32, i32* @GX_FALSE, align 4
  %222 = load i32, i32* @GX_FALSE, align 4
  %223 = load i32, i32* @GX_ANISO_1, align 4
  %224 = call i32 @GX_InitTexObjLOD(i32* %13, i32 %219, i32 %220, double 0.000000e+00, double 1.000000e+01, double 0.000000e+00, i32 %221, i32 %222, i32 %223)
  br label %225

225:                                              ; preds = %218, %43
  %226 = load i32, i32* @GX_TEXMAP0, align 4
  %227 = call i32 @GX_LoadTexObj(i32* %13, i32 %226)
  %228 = call i32 (...) @GX_InvalidateTexAll()
  ret void
}

declare dso_local i32 @gxResetRendering(i32) #1

declare dso_local i32 @GX_InitTexObj(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GX_InitTexObjLOD(i32*, i32, i32, double, double, double, i32, i32, i32) #1

declare dso_local i32 @GX_LoadTexObj(i32*, i32) #1

declare dso_local i32 @GX_InvalidateTexAll(...) #1

declare dso_local i32 @GX_Begin(i32, i32, i32) #1

declare dso_local i32 @GX_Position2s16(i32, i32) #1

declare dso_local i32 @GX_Color4u8(i32, i32, i32, i32) #1

declare dso_local i32 @GX_TexCoord2f32(double, double) #1

declare dso_local i32 @GX_End(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
