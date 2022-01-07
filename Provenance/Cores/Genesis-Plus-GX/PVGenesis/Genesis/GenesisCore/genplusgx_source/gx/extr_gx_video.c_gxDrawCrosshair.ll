; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawCrosshair.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawCrosshair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@rmode = common dso_local global %struct.TYPE_9__* null, align 8
@config = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@square = common dso_local global i32* null, align 8
@bitmap = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32, i32)* @gxDrawCrosshair to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gxDrawCrosshair(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rmode, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rmode, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sdiv i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rmode, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** @rmode, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 0), align 4
  %36 = and i32 %35, 2
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = mul nsw i32 %39, 3
  %41 = sdiv i32 %40, 4
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %38, %3
  %43 = load i32*, i32** @square, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** @square, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 9
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32*, i32** @square, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @square, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 10
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bitmap, i32 0, i32 0, i32 0), align 4
  %59 = add nsw i32 %57, %58
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* @vwidth, align 4
  %63 = sdiv i32 %61, %62
  %64 = load i32*, i32** @square, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 9
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %63, %66
  %68 = load i32, i32* %7, align 4
  %69 = sdiv i32 %68, 2
  %70 = sub nsw i32 %67, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @bitmap, i32 0, i32 0, i32 1), align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load i32, i32* @vheight, align 4
  %77 = sdiv i32 %75, %76
  %78 = load i32*, i32** @square, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 10
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  %82 = load i32, i32* %8, align 4
  %83 = sdiv i32 %82, 2
  %84 = sub nsw i32 %81, %83
  store i32 %84, i32* %6, align 4
  %85 = call i32 @gxResetRendering(i32 1)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @GX_TF_RGBA8, align 4
  %96 = load i32, i32* @GX_CLAMP, align 4
  %97 = load i32, i32* @GX_CLAMP, align 4
  %98 = load i32, i32* @GX_FALSE, align 4
  %99 = call i32 @GX_InitTexObj(i32* %11, i32 %88, i32 %91, i32 %94, i32 %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @GX_LINEAR, align 4
  %101 = load i32, i32* @GX_LIN_MIP_LIN, align 4
  %102 = load i32, i32* @GX_FALSE, align 4
  %103 = load i32, i32* @GX_TRUE, align 4
  %104 = load i32, i32* @GX_ANISO_4, align 4
  %105 = call i32 @GX_InitTexObjLOD(i32* %11, i32 %100, i32 %101, double 0.000000e+00, double 1.000000e+01, double 0.000000e+00, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* @GX_TEXMAP0, align 4
  %107 = call i32 @GX_LoadTexObj(i32* %11, i32 %106)
  %108 = call i32 (...) @GX_InvalidateTexAll()
  %109 = load i32, i32* @GX_QUADS, align 4
  %110 = load i32, i32* @GX_VTXFMT0, align 4
  %111 = call i32 @GX_Begin(i32 %109, i32 %110, i32 4)
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %113, %114
  %116 = call i32 @GX_Position2s16(i32 %112, i32 %115)
  %117 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %118 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 1.000000e+00)
  %119 = load i32, i32* %5, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %8, align 4
  %124 = add nsw i32 %122, %123
  %125 = call i32 @GX_Position2s16(i32 %121, i32 %124)
  %126 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %127 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 1.000000e+00)
  %128 = load i32, i32* %5, align 4
  %129 = load i32, i32* %7, align 4
  %130 = add nsw i32 %128, %129
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @GX_Position2s16(i32 %130, i32 %131)
  %133 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %134 = call i32 @GX_TexCoord2f32(double 1.000000e+00, double 0.000000e+00)
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @GX_Position2s16(i32 %135, i32 %136)
  %138 = call i32 @GX_Color4u8(i32 255, i32 255, i32 255, i32 255)
  %139 = call i32 @GX_TexCoord2f32(double 0.000000e+00, double 0.000000e+00)
  %140 = call i32 (...) @GX_End()
  %141 = call i32 @gxResetRendering(i32 0)
  %142 = load i32, i32* @texturemem, align 4
  %143 = load i32, i32* @vwidth, align 4
  %144 = load i32, i32* @vheight, align 4
  %145 = load i32, i32* @GX_TF_RGB565, align 4
  %146 = load i32, i32* @GX_CLAMP, align 4
  %147 = load i32, i32* @GX_CLAMP, align 4
  %148 = load i32, i32* @GX_FALSE, align 4
  %149 = call i32 @GX_InitTexObj(i32* %12, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i32 %148)
  %150 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @config, i32 0, i32 1), align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %159, label %152

152:                                              ; preds = %42
  %153 = load i32, i32* @GX_NEAR, align 4
  %154 = load i32, i32* @GX_NEAR_MIP_NEAR, align 4
  %155 = load i32, i32* @GX_FALSE, align 4
  %156 = load i32, i32* @GX_FALSE, align 4
  %157 = load i32, i32* @GX_ANISO_1, align 4
  %158 = call i32 @GX_InitTexObjLOD(i32* %12, i32 %153, i32 %154, double 0.000000e+00, double 1.000000e+01, double 0.000000e+00, i32 %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %152, %42
  %160 = load i32, i32* @GX_TEXMAP0, align 4
  %161 = call i32 @GX_LoadTexObj(i32* %12, i32 %160)
  %162 = call i32 (...) @GX_InvalidateTexAll()
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
