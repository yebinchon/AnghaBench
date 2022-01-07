; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2Draw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_viddc.c_Vdp2Draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, float, float, float, float, float, float, float, i8*, i8*, i8*, i64, i64, i64, i64, i32 }

@PVR_TA_PM2_USIZE_MASK = common dso_local global i32 0, align 4
@PVR_TA_PM2_VSIZE_MASK = common dso_local global i32 0, align 4
@pt_sprite_hdr = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PVR_TA_PM2_USIZE_SHIFT = common dso_local global i32 0, align 4
@PVR_TA_PM2_VSIZE_SHIFT = common dso_local global i32 0, align 4
@cur_vdp2 = common dso_local global i32 0, align 4
@PVR_TXRFMT_NONTWIDDLED = common dso_local global i32 0, align 4
@PVR_LIST_PT_POLY = common dso_local global i32 0, align 4
@PVR_CMD_VERTEX_EOL = common dso_local global i32 0, align 4
@priority_levels = common dso_local global float* null, align 8
@vdp2width = common dso_local global float 0.000000e+00, align 4
@vdp2height = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @Vdp2Draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Vdp2Draw(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @PVR_TA_PM2_USIZE_MASK, align 4
  %5 = load i32, i32* @PVR_TA_PM2_VSIZE_MASK, align 4
  %6 = or i32 %4, %5
  %7 = xor i32 %6, -1
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pt_sprite_hdr, i32 0, i32 0), align 8
  %9 = and i32 %8, %7
  store i32 %9, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pt_sprite_hdr, i32 0, i32 0), align 8
  %10 = load i32, i32* @PVR_TA_PM2_USIZE_SHIFT, align 4
  %11 = shl i32 6, %10
  %12 = load i32, i32* @PVR_TA_PM2_VSIZE_SHIFT, align 4
  %13 = shl i32 5, %12
  %14 = or i32 %11, %13
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pt_sprite_hdr, i32 0, i32 0), align 8
  %16 = or i32 %15, %14
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pt_sprite_hdr, i32 0, i32 0), align 8
  %17 = load i32, i32* @cur_vdp2, align 4
  %18 = and i32 %17, 16777208
  %19 = ashr i32 %18, 3
  %20 = load i32, i32* @PVR_TXRFMT_NONTWIDDLED, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pt_sprite_hdr, i32 0, i32 1), align 4
  %22 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  %23 = call i32 @pvr_list_prim(i32 %22, %struct.TYPE_4__* @pt_sprite_hdr, i32 4)
  %24 = load i32, i32* @PVR_CMD_VERTEX_EOL, align 4
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 16
  store i32 %24, i32* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 15
  store i64 0, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 14
  store i64 0, i64* %27, align 8
  %28 = load float*, float** @priority_levels, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %28, i64 %30
  %32 = load float, float* %31, align 4
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store float %32, float* %33, align 8
  %34 = load float, float* @vdp2width, align 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 3
  store float %34, float* %35, align 4
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 13
  store i64 0, i64* %36, align 8
  %37 = load float*, float** @priority_levels, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %37, i64 %39
  %41 = load float, float* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 4
  store float %41, float* %42, align 8
  %43 = load float, float* @vdp2width, align 4
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 5
  store float %43, float* %44, align 4
  %45 = load float, float* @vdp2height, align 4
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 6
  store float %45, float* %46, align 8
  %47 = load float*, float** @priority_levels, align 8
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %47, i64 %49
  %51 = load float, float* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 7
  store float %51, float* %52, align 4
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 12
  store i64 0, i64* %53, align 8
  %54 = load float, float* @vdp2height, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 8
  store float %54, float* %55, align 8
  %56 = call i8* @PVR_PACK_16BIT_UV(float 0.000000e+00, float 0.000000e+00)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 11
  store i8* %56, i8** %57, align 8
  %58 = load float, float* @vdp2width, align 4
  %59 = fdiv float %58, 5.120000e+02
  %60 = call i8* @PVR_PACK_16BIT_UV(float %59, float 0.000000e+00)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 10
  store i8* %60, i8** %61, align 8
  %62 = load float, float* @vdp2width, align 4
  %63 = fdiv float %62, 5.120000e+02
  %64 = load float, float* @vdp2height, align 4
  %65 = fdiv float %64, 2.560000e+02
  %66 = call i8* @PVR_PACK_16BIT_UV(float %63, float %65)
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 9
  store i8* %66, i8** %67, align 8
  %68 = load i32, i32* @PVR_LIST_PT_POLY, align 4
  %69 = call i32 @pvr_list_prim(i32 %68, %struct.TYPE_4__* %3, i32 104)
  %70 = load float*, float** @priority_levels, align 8
  %71 = load i32, i32* %2, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds float, float* %70, i64 %72
  %74 = load float, float* %73, align 4
  %75 = fadd float %74, 0x3EB0C6F7A0000000
  store float %75, float* %73, align 4
  ret void
}

declare dso_local i32 @pvr_list_prim(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i8* @PVR_PACK_16BIT_UV(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
