; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexPreloadRegion.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexPreloadRegion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_texregion = type { i32, i32, i32, i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitTexPreloadRegion(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.__gx_texregion*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to %struct.__gx_texregion*
  store %struct.__gx_texregion* %13, %struct.__gx_texregion** %11, align 8
  %14 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %15 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %17 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, -32768
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @_SHIFTR(i32 %20, i32 5, i32 15)
  %22 = or i32 %19, %21
  %23 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %24 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %26 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, -2097153
  %29 = or i32 %28, 2097152
  %30 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %31 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %33 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %35 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, -32768
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @_SHIFTR(i32 %38, i32 5, i32 15)
  %40 = or i32 %37, %39
  %41 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %42 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @_SHIFTR(i32 %43, i32 5, i32 16)
  %45 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %46 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @_SHIFTR(i32 %47, i32 5, i32 16)
  %49 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %50 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %52 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.__gx_texregion*, %struct.__gx_texregion** %11, align 8
  %54 = getelementptr inbounds %struct.__gx_texregion, %struct.__gx_texregion* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  ret void
}

declare dso_local i32 @_SHIFTR(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
