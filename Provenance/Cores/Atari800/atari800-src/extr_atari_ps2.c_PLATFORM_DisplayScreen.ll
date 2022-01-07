; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_PLATFORM_DisplayScreen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_atari_ps2.c_PLATFORM_DisplayScreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@Screen_WIDTH = common dso_local global i32 0, align 4
@Screen_HEIGHT = common dso_local global i32 0, align 4
@GS_PSM_T8 = common dso_local global i32 0, align 4
@Screen_atari = common dso_local global i64 0, align 8
@clut = common dso_local global i32 0, align 4
@GS_FILTER_LINEAR = common dso_local global i32 0, align 4
@gsGlobal = common dso_local global %struct.TYPE_12__* null, align 8
@GS_CSR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PLATFORM_DisplayScreen() #0 {
  %1 = alloca %struct.TYPE_10__, align 8
  %2 = load i32, i32* @Screen_WIDTH, align 4
  %3 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 7
  store i32 %2, i32* %3, align 8
  %4 = load i32, i32* @Screen_HEIGHT, align 4
  %5 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 6
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @GS_PSM_T8, align 4
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 5
  store i32 %6, i32* %7, align 8
  %8 = load i64, i64* @Screen_atari, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 4
  store i32* %9, i32** %10, align 8
  %11 = load i32, i32* @clut, align 4
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 3
  store i32 %11, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 0
  store i32 2097152, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 1
  store i32 2621440, i32* %14, align 4
  %15 = load i32, i32* @GS_FILTER_LINEAR, align 4
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1, i32 0, i32 2
  store i32 %15, i32* %16, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %18 = call i32 @gsKit_texture_upload(%struct.TYPE_12__* %17, %struct.TYPE_10__* %1)
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %20 = call i32 @gsKit_prim_sprite_texture(%struct.TYPE_12__* %19, %struct.TYPE_10__* %1, i32 0, i32 0, i32 32, i32 0, i32 640, i32 480, i32 352, i32 240, i32 0, i32 -2139062144)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 8192
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 64
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @GS_SET_DISPFB2(i32 %31, i32 %35, i32 %38, i32 0, i32 0)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = xor i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load i64, i64* @GS_CSR, align 8
  %49 = inttoptr i64 %48 to %struct.TYPE_11__*
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** @gsGlobal, align 8
  %55 = call i32 @gsKit_setactive(%struct.TYPE_12__* %54)
  ret void
}

declare dso_local i32 @gsKit_texture_upload(%struct.TYPE_12__*, %struct.TYPE_10__*) #1

declare dso_local i32 @gsKit_prim_sprite_texture(%struct.TYPE_12__*, %struct.TYPE_10__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @GS_SET_DISPFB2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @gsKit_setactive(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
