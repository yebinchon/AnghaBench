; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_caches.c_platform_cache_disable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_caches.c_platform_cache_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCTLR_DCACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_cache_disable() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 asm sideeffect "mrc p15, 0, $0, c1, c0, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @SCTLR_DCACHE, align 4
  %4 = xor i32 %3, -1
  %5 = load i32, i32* %1, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* %1, align 4
  call void asm sideeffect "mcr p15, 0, $0, c1, c0, 0\0Aisb", "r,~{dirflag},~{fpsr},~{flags}"(i32 %7) #1, !srcloc !3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 269}
!3 = !{i32 388, i32 437}
