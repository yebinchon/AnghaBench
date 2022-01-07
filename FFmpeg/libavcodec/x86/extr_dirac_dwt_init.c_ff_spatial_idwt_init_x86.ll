; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_dirac_dwt_init.c_ff_spatial_idwt_init_x86.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/x86/extr_dirac_dwt_init.c_ff_spatial_idwt_init_x86.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8* }

@AV_CPU_FLAG_MMX = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSE2 = common dso_local global i32 0, align 4
@AV_CPU_FLAG_SSSE3 = common dso_local global i32 0, align 4
@horizontal_compose_dd97i_ssse3 = common dso_local global i32 0, align 4
@horizontal_compose_haar0i_mmx = common dso_local global i32 0, align 4
@horizontal_compose_haar0i_sse2 = common dso_local global i32 0, align 4
@horizontal_compose_haar1i_mmx = common dso_local global i32 0, align 4
@horizontal_compose_haar1i_sse2 = common dso_local global i32 0, align 4
@vertical_compose53iL0_mmx = common dso_local global i64 0, align 8
@vertical_compose53iL0_sse2 = common dso_local global i64 0, align 8
@vertical_compose_dd137iL0_mmx = common dso_local global i64 0, align 8
@vertical_compose_dd137iL0_sse2 = common dso_local global i64 0, align 8
@vertical_compose_dd97iH0_mmx = common dso_local global i64 0, align 8
@vertical_compose_dd97iH0_sse2 = common dso_local global i64 0, align 8
@vertical_compose_dirac53iH0_mmx = common dso_local global i64 0, align 8
@vertical_compose_dirac53iH0_sse2 = common dso_local global i64 0, align 8
@vertical_compose_haar_mmx = common dso_local global i64 0, align 8
@vertical_compose_haar_sse2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_spatial_idwt_init_x86(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
