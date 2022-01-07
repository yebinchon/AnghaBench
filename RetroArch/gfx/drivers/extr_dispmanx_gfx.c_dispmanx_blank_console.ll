; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_blank_console.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_dispmanx_gfx.c_dispmanx_blank_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dispmanx_video = type { i32, i64, i64 }

@VC_IMAGE_RGB565 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dispmanx_video*)* @dispmanx_blank_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispmanx_blank_console(%struct.dispmanx_video* %0) #0 {
  %2 = alloca %struct.dispmanx_video*, align 8
  %3 = alloca [16 x i32], align 16
  %4 = alloca float, align 4
  store %struct.dispmanx_video* %0, %struct.dispmanx_video** %2, align 8
  %5 = bitcast [16 x i32]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 64, i1 false)
  %6 = load %struct.dispmanx_video*, %struct.dispmanx_video** %2, align 8
  %7 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = sitofp i64 %8 to float
  %10 = load %struct.dispmanx_video*, %struct.dispmanx_video** %2, align 8
  %11 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = sitofp i64 %12 to float
  %14 = fdiv float %9, %13
  store float %14, float* %4, align 4
  %15 = load %struct.dispmanx_video*, %struct.dispmanx_video** %2, align 8
  %16 = load i32, i32* @VC_IMAGE_RGB565, align 4
  %17 = load float, float* %4, align 4
  %18 = load %struct.dispmanx_video*, %struct.dispmanx_video** %2, align 8
  %19 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %18, i32 0, i32 0
  %20 = call i32 @dispmanx_surface_setup(%struct.dispmanx_video* %15, i32 16, i32 1, i32 32, i32 16, i32 %16, i32 255, float %17, i32 1, i32 -1, i32* %19)
  %21 = getelementptr inbounds [16 x i32], [16 x i32]* %3, i64 0, i64 0
  %22 = load %struct.dispmanx_video*, %struct.dispmanx_video** %2, align 8
  %23 = getelementptr inbounds %struct.dispmanx_video, %struct.dispmanx_video* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dispmanx_surface_update_async(i32* %21, i32 %24)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dispmanx_surface_setup(%struct.dispmanx_video*, i32, i32, i32, i32, i32, i32, float, i32, i32, i32*) #2

declare dso_local i32 @dispmanx_surface_update_async(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
