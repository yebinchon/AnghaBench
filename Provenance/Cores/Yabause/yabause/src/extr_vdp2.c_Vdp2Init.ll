; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2Init.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vdp2.c_Vdp2Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Vdp2Regs = common dso_local global i32* null, align 8
@Vdp2Ram = common dso_local global i32* null, align 8
@Vdp2ColorRam = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Vdp2Init() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @calloc(i32 1, i32 4)
  %3 = inttoptr i64 %2 to i32*
  store i32* %3, i32** @Vdp2Regs, align 8
  %4 = icmp eq i32* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %16

6:                                                ; preds = %0
  %7 = call i32* @T1MemoryInit(i32 524288)
  store i32* %7, i32** @Vdp2Ram, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  store i32 -1, i32* %1, align 4
  br label %16

10:                                               ; preds = %6
  %11 = call i32* @T2MemoryInit(i32 4096)
  store i32* %11, i32** @Vdp2ColorRam, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 -1, i32* %1, align 4
  br label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @Vdp2Reset()
  store i32 0, i32* %1, align 4
  br label %16

16:                                               ; preds = %14, %13, %9, %5
  %17 = load i32, i32* %1, align 4
  ret i32 %17
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32* @T1MemoryInit(i32) #1

declare dso_local i32* @T2MemoryInit(i32) #1

declare dso_local i32 @Vdp2Reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
