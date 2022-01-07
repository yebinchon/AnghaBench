; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SetTmemConfig.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c___GX_SetTmemConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @__GX_SetTmemConfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__GX_SetTmemConfig(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %22

5:                                                ; preds = %1
  %6 = call i32 @GX_LOAD_BP_REG(i32 -1945272320)
  %7 = call i32 @GX_LOAD_BP_REG(i32 -1878147072)
  %8 = call i32 @GX_LOAD_BP_REG(i32 -1928494080)
  %9 = call i32 @GX_LOAD_BP_REG(i32 -1861368832)
  %10 = call i32 @GX_LOAD_BP_REG(i32 -1911715840)
  %11 = call i32 @GX_LOAD_BP_REG(i32 -1844590592)
  %12 = call i32 @GX_LOAD_BP_REG(i32 -1894937600)
  %13 = call i32 @GX_LOAD_BP_REG(i32 -1827812352)
  %14 = call i32 @GX_LOAD_BP_REG(i32 -1408397312)
  %15 = call i32 @GX_LOAD_BP_REG(i32 -1341272064)
  %16 = call i32 @GX_LOAD_BP_REG(i32 -1391619072)
  %17 = call i32 @GX_LOAD_BP_REG(i32 -1324493824)
  %18 = call i32 @GX_LOAD_BP_REG(i32 -1374840832)
  %19 = call i32 @GX_LOAD_BP_REG(i32 -1307715584)
  %20 = call i32 @GX_LOAD_BP_REG(i32 -1358062592)
  %21 = call i32 @GX_LOAD_BP_REG(i32 -1290937344)
  br label %62

22:                                               ; preds = %1
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %42

25:                                               ; preds = %22
  %26 = call i32 @GX_LOAD_BP_REG(i32 -1945272320)
  %27 = call i32 @GX_LOAD_BP_REG(i32 -1878147072)
  %28 = call i32 @GX_LOAD_BP_REG(i32 -1928493056)
  %29 = call i32 @GX_LOAD_BP_REG(i32 -1861367808)
  %30 = call i32 @GX_LOAD_BP_REG(i32 -1911713792)
  %31 = call i32 @GX_LOAD_BP_REG(i32 -1844588544)
  %32 = call i32 @GX_LOAD_BP_REG(i32 -1894934528)
  %33 = call i32 @GX_LOAD_BP_REG(i32 -1827809280)
  %34 = call i32 @GX_LOAD_BP_REG(i32 -1408393216)
  %35 = call i32 @GX_LOAD_BP_REG(i32 -1341267968)
  %36 = call i32 @GX_LOAD_BP_REG(i32 -1391613952)
  %37 = call i32 @GX_LOAD_BP_REG(i32 -1324488704)
  %38 = call i32 @GX_LOAD_BP_REG(i32 -1374834688)
  %39 = call i32 @GX_LOAD_BP_REG(i32 -1307709440)
  %40 = call i32 @GX_LOAD_BP_REG(i32 -1358055424)
  %41 = call i32 @GX_LOAD_BP_REG(i32 -1290930176)
  br label %62

42:                                               ; preds = %22
  %43 = load i32, i32* %2, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = call i32 @GX_LOAD_BP_REG(i32 -1945272320)
  %47 = call i32 @GX_LOAD_BP_REG(i32 -1878147072)
  %48 = call i32 @GX_LOAD_BP_REG(i32 -1928493056)
  %49 = call i32 @GX_LOAD_BP_REG(i32 -1861367808)
  %50 = call i32 @GX_LOAD_BP_REG(i32 -1911713792)
  %51 = call i32 @GX_LOAD_BP_REG(i32 -1844588544)
  %52 = call i32 @GX_LOAD_BP_REG(i32 -1894934528)
  %53 = call i32 @GX_LOAD_BP_REG(i32 -1827809280)
  %54 = call i32 @GX_LOAD_BP_REG(i32 -1408393216)
  %55 = call i32 @GX_LOAD_BP_REG(i32 -1341275136)
  %56 = call i32 @GX_LOAD_BP_REG(i32 -1391613952)
  %57 = call i32 @GX_LOAD_BP_REG(i32 -1324495872)
  %58 = call i32 @GX_LOAD_BP_REG(i32 -1374834688)
  %59 = call i32 @GX_LOAD_BP_REG(i32 -1307716608)
  %60 = call i32 @GX_LOAD_BP_REG(i32 -1358055424)
  %61 = call i32 @GX_LOAD_BP_REG(i32 -1290937344)
  br label %62

62:                                               ; preds = %5, %25, %45, %42
  ret void
}

declare dso_local i32 @GX_LOAD_BP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
