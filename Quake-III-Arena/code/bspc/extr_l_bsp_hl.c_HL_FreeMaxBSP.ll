; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_hl.c_HL_FreeMaxBSP.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_l_bsp_hl.c_HL_FreeMaxBSP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hl_nummodels = common dso_local global i64 0, align 8
@hl_dmodels = common dso_local global i32* null, align 8
@hl_visdatasize = common dso_local global i64 0, align 8
@hl_dvisdata = common dso_local global i32* null, align 8
@hl_lightdatasize = common dso_local global i64 0, align 8
@hl_dlightdata = common dso_local global i32* null, align 8
@hl_texdatasize = common dso_local global i64 0, align 8
@hl_dtexdata = common dso_local global i32* null, align 8
@hl_entdatasize = common dso_local global i64 0, align 8
@hl_dentdata = common dso_local global i32* null, align 8
@hl_numleafs = common dso_local global i64 0, align 8
@hl_dleafs = common dso_local global i32* null, align 8
@hl_numplanes = common dso_local global i64 0, align 8
@hl_dplanes = common dso_local global i32* null, align 8
@hl_numvertexes = common dso_local global i64 0, align 8
@hl_dvertexes = common dso_local global i32* null, align 8
@hl_numnodes = common dso_local global i64 0, align 8
@hl_dnodes = common dso_local global i32* null, align 8
@hl_numtexinfo = common dso_local global i64 0, align 8
@hl_texinfo = common dso_local global i32* null, align 8
@hl_numfaces = common dso_local global i64 0, align 8
@hl_dfaces = common dso_local global i32* null, align 8
@hl_numclipnodes = common dso_local global i64 0, align 8
@hl_dclipnodes = common dso_local global i32* null, align 8
@hl_numedges = common dso_local global i64 0, align 8
@hl_dedges = common dso_local global i32* null, align 8
@hl_nummarksurfaces = common dso_local global i64 0, align 8
@hl_dmarksurfaces = common dso_local global i32* null, align 8
@hl_numsurfedges = common dso_local global i64 0, align 8
@hl_dsurfedges = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"freed \00", align 1
@hl_allocatedbspmem = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c" of BSP memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HL_FreeMaxBSP() #0 {
  store i64 0, i64* @hl_nummodels, align 8
  %1 = load i32*, i32** @hl_dmodels, align 8
  %2 = call i32 @FreeMemory(i32* %1)
  store i32* null, i32** @hl_dmodels, align 8
  store i64 0, i64* @hl_visdatasize, align 8
  %3 = load i32*, i32** @hl_dvisdata, align 8
  %4 = call i32 @FreeMemory(i32* %3)
  store i32* null, i32** @hl_dvisdata, align 8
  store i64 0, i64* @hl_lightdatasize, align 8
  %5 = load i32*, i32** @hl_dlightdata, align 8
  %6 = call i32 @FreeMemory(i32* %5)
  store i32* null, i32** @hl_dlightdata, align 8
  store i64 0, i64* @hl_texdatasize, align 8
  %7 = load i32*, i32** @hl_dtexdata, align 8
  %8 = call i32 @FreeMemory(i32* %7)
  store i32* null, i32** @hl_dtexdata, align 8
  store i64 0, i64* @hl_entdatasize, align 8
  %9 = load i32*, i32** @hl_dentdata, align 8
  %10 = call i32 @FreeMemory(i32* %9)
  store i32* null, i32** @hl_dentdata, align 8
  store i64 0, i64* @hl_numleafs, align 8
  %11 = load i32*, i32** @hl_dleafs, align 8
  %12 = call i32 @FreeMemory(i32* %11)
  store i32* null, i32** @hl_dleafs, align 8
  store i64 0, i64* @hl_numplanes, align 8
  %13 = load i32*, i32** @hl_dplanes, align 8
  %14 = call i32 @FreeMemory(i32* %13)
  store i32* null, i32** @hl_dplanes, align 8
  store i64 0, i64* @hl_numvertexes, align 8
  %15 = load i32*, i32** @hl_dvertexes, align 8
  %16 = call i32 @FreeMemory(i32* %15)
  store i32* null, i32** @hl_dvertexes, align 8
  store i64 0, i64* @hl_numnodes, align 8
  %17 = load i32*, i32** @hl_dnodes, align 8
  %18 = call i32 @FreeMemory(i32* %17)
  store i32* null, i32** @hl_dnodes, align 8
  store i64 0, i64* @hl_numtexinfo, align 8
  %19 = load i32*, i32** @hl_texinfo, align 8
  %20 = call i32 @FreeMemory(i32* %19)
  store i32* null, i32** @hl_texinfo, align 8
  store i64 0, i64* @hl_numfaces, align 8
  %21 = load i32*, i32** @hl_dfaces, align 8
  %22 = call i32 @FreeMemory(i32* %21)
  store i32* null, i32** @hl_dfaces, align 8
  store i64 0, i64* @hl_numclipnodes, align 8
  %23 = load i32*, i32** @hl_dclipnodes, align 8
  %24 = call i32 @FreeMemory(i32* %23)
  store i32* null, i32** @hl_dclipnodes, align 8
  store i64 0, i64* @hl_numedges, align 8
  %25 = load i32*, i32** @hl_dedges, align 8
  %26 = call i32 @FreeMemory(i32* %25)
  store i32* null, i32** @hl_dedges, align 8
  store i64 0, i64* @hl_nummarksurfaces, align 8
  %27 = load i32*, i32** @hl_dmarksurfaces, align 8
  %28 = call i32 @FreeMemory(i32* %27)
  store i32* null, i32** @hl_dmarksurfaces, align 8
  store i64 0, i64* @hl_numsurfedges, align 8
  %29 = load i32*, i32** @hl_dsurfedges, align 8
  %30 = call i32 @FreeMemory(i32* %29)
  store i32* null, i32** @hl_dsurfedges, align 8
  %31 = call i32 @Log_Print(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* @hl_allocatedbspmem, align 8
  %33 = call i32 @PrintMemorySize(i64 %32)
  %34 = call i32 @Log_Print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @hl_allocatedbspmem, align 8
  ret void
}

declare dso_local i32 @FreeMemory(i32*) #1

declare dso_local i32 @Log_Print(i8*) #1

declare dso_local i32 @PrintMemorySize(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
