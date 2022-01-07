; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_fp.c_divsf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_fp.c_divsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float)* @divsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @divsf(float %0, float %1) #0 {
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store float %0, float* %3, align 4
  store float %1, float* %4, align 4
  %6 = load float, float* %3, align 4
  %7 = load float, float* %4, align 4
  %8 = call float asm sideeffect "wfr f0, $1\0Awfr f1, $2\0Adiv0.s f3, f1 \0Anexp01.s f4, f1 \0Aconst.s f5, 1 \0Amaddn.s f5, f4, f3 \0Amov.s f6, f3 \0Amov.s f7, f1 \0Anexp01.s f8, f0 \0Amaddn.s f6, f5, f3 \0Aconst.s f5, 1 \0Aconst.s f2, 0 \0Aneg.s f9, f8 \0Amaddn.s f5,f4,f6 \0Amaddn.s f2, f9, f3 \0Amkdadj.s f7, f0 \0Amaddn.s f6,f5,f6 \0Amaddn.s f9,f4,f2 \0Aconst.s f5, 1 \0Amaddn.s f5,f4,f6 \0Amaddn.s f2,f9,f6 \0Aneg.s f9, f8 \0Amaddn.s f6,f5,f6 \0Amaddn.s f9,f4,f2 \0Aaddexpm.s f2, f7 \0Aaddexp.s f6, f7 \0Adivn.s f2,f9,f6\0Arfr $0, f2\0A", "=r,r,r,~{dirflag},~{fpsr},~{flags}"(float %6, float %7) #1, !srcloc !2
  store float %8, float* %5, align 4
  %9 = load float, float* %5, align 4
  ret float %9
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 239, i32 263, i32 286, i32 313, i32 342, i32 369, i32 401, i32 427, i32 453, i32 482, i32 514, i32 541, i32 568, i32 594, i32 624, i32 656, i32 685, i32 715, i32 745, i32 772, i32 802, i32 832, i32 858, i32 888, i32 918, i32 948, i32 977, i32 1005}
