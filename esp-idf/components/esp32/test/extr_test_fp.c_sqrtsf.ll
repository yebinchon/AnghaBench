; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_fp.c_sqrtsf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_fp.c_sqrtsf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @sqrtsf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @sqrtsf(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca float, align 4
  store float %0, float* %2, align 4
  %4 = load float, float* %2, align 4
  %5 = call float asm sideeffect "wfr f0, $1\0Asqrt0.s f2, f0\0Aconst.s f5, 0\0Amaddn.s f5, f2, f2\0Anexp01.s f3, f0\0Aconst.s f4, 3\0Aaddexp.s f3, f4\0Amaddn.s f4, f5, f3\0Anexp01.s f5, f0\0Aneg.s f6, f5\0Amaddn.s f2, f4, f2\0Aconst.s f1, 0\0Aconst.s f4, 0\0Aconst.s f7, 0\0Amaddn.s f1, f6, f2\0Amaddn.s f4, f2, f3\0Aconst.s f6, 3\0Amaddn.s f7, f6, f2\0Amaddn.s f5, f1, f1\0Amaddn.s f6, f4, f2\0Aneg.s f3, f7\0Amaddn.s f1, f5, f3\0Amaddn.s f7, f6, f7\0Amksadj.s f2, f0\0Anexp01.s f5, f0\0Amaddn.s f5, f1, f1\0Aneg.s f3, f7\0Aaddexpm.s f1, f2\0Aaddexp.s f3, f2\0Adivn.s f1, f5, f3\0Arfr $0, f1\0A", "=r,r,~{dirflag},~{fpsr},~{flags}"(float %4) #1, !srcloc !2
  store float %5, float* %3, align 4
  %6 = load float, float* %3, align 4
  ret float %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 231, i32 255, i32 282, i32 308, i32 339, i32 367, i32 393, i32 421, i32 452, i32 480, i32 505, i32 536, i32 562, i32 588, i32 614, i32 645, i32 676, i32 702, i32 733, i32 764, i32 795, i32 820, i32 851, i32 882, i32 910, i32 938, i32 969, i32 994, i32 1023, i32 1051, i32 1081}
