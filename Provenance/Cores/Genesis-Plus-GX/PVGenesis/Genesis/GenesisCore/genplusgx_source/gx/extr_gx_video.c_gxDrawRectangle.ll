; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawRectangle.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/gx/extr_gx_video.c_gxDrawRectangle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GX_TEVSTAGE0 = common dso_local global i32 0, align 4
@GX_PASSCLR = common dso_local global i32 0, align 4
@GX_VA_TEX0 = common dso_local global i32 0, align 4
@GX_NONE = common dso_local global i32 0, align 4
@vmode = common dso_local global %struct.TYPE_5__* null, align 8
@GX_QUADS = common dso_local global i32 0, align 4
@GX_VTXFMT0 = common dso_local global i32 0, align 4
@GX_DIRECT = common dso_local global i32 0, align 4
@GX_MODULATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gxDrawRectangle(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, %struct.TYPE_4__* byval(%struct.TYPE_4__) align 8 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* @GX_TEVSTAGE0, align 4
  %13 = load i32, i32* @GX_PASSCLR, align 4
  %14 = call i32 @GX_SetTevOp(i32 %12, i32 %13)
  %15 = load i32, i32* @GX_VA_TEX0, align 4
  %16 = load i32, i32* @GX_NONE, align 4
  %17 = call i32 @GX_SetVtxDesc(i32 %15, i32 %16)
  %18 = call i32 (...) @GX_Flush()
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 2
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %7, align 8
  %25 = sub nsw i64 %24, %23
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @vmode, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sdiv i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %8, align 8
  %32 = sub nsw i64 %31, %30
  store i64 %32, i64* %8, align 8
  %33 = load i32, i32* @GX_QUADS, align 4
  %34 = load i32, i32* @GX_VTXFMT0, align 4
  %35 = call i32 @GX_Begin(i32 %33, i32 %34, i32 4)
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @GX_Position2s16(i64 %36, i64 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @GX_Color4u8(i32 %42, i32 %44, i32 %46, i32 %47)
  %49 = load i64, i64* %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %49, %50
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @GX_Position2s16(i64 %51, i64 %54)
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @GX_Color4u8(i32 %57, i32 %59, i32 %61, i32 %62)
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @GX_Position2s16(i64 %66, i64 %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @GX_Color4u8(i32 %70, i32 %72, i32 %74, i32 %75)
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @GX_Position2s16(i64 %77, i64 %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @GX_Color4u8(i32 %81, i32 %83, i32 %85, i32 %86)
  %88 = call i32 (...) @GX_End()
  %89 = call i32 (...) @GX_DrawDone()
  %90 = load i32, i32* @GX_VA_TEX0, align 4
  %91 = load i32, i32* @GX_DIRECT, align 4
  %92 = call i32 @GX_SetVtxDesc(i32 %90, i32 %91)
  %93 = load i32, i32* @GX_TEVSTAGE0, align 4
  %94 = load i32, i32* @GX_MODULATE, align 4
  %95 = call i32 @GX_SetTevOp(i32 %93, i32 %94)
  %96 = call i32 (...) @GX_Flush()
  ret void
}

declare dso_local i32 @GX_SetTevOp(i32, i32) #1

declare dso_local i32 @GX_SetVtxDesc(i32, i32) #1

declare dso_local i32 @GX_Flush(...) #1

declare dso_local i32 @GX_Begin(i32, i32, i32) #1

declare dso_local i32 @GX_Position2s16(i64, i64) #1

declare dso_local i32 @GX_Color4u8(i32, i32, i32, i32) #1

declare dso_local i32 @GX_End(...) #1

declare dso_local i32 @GX_DrawDone(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
