; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexObjWrapMode.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_InitTexObjWrapMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__gx_texobj = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_InitTexObjWrapMode(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.__gx_texobj*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.__gx_texobj*
  store %struct.__gx_texobj* %9, %struct.__gx_texobj** %7, align 8
  %10 = load %struct.__gx_texobj*, %struct.__gx_texobj** %7, align 8
  %11 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -4
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 3
  %16 = or i32 %13, %15
  %17 = load %struct.__gx_texobj*, %struct.__gx_texobj** %7, align 8
  %18 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.__gx_texobj*, %struct.__gx_texobj** %7, align 8
  %20 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, -13
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @_SHIFTL(i32 %23, i32 2, i32 2)
  %25 = or i32 %22, %24
  %26 = load %struct.__gx_texobj*, %struct.__gx_texobj** %7, align 8
  %27 = getelementptr inbounds %struct.__gx_texobj, %struct.__gx_texobj* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
