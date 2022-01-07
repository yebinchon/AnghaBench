; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___mem_onreset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___mem_onreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8
@_memReg = common dso_local global i32* null, align 8
@IM_MEM0 = common dso_local global i32 0, align 4
@IM_MEM1 = common dso_local global i32 0, align 4
@IM_MEM2 = common dso_local global i32 0, align 4
@IM_MEM3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__mem_onreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__mem_onreset(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @TRUE, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = load i32*, i32** @_memReg, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 8
  store i32 255, i32* %8, align 4
  %9 = load i32, i32* @IM_MEM0, align 4
  %10 = load i32, i32* @IM_MEM1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @IM_MEM2, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @IM_MEM3, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @__UnmaskIrq(i32 %15)
  br label %17

17:                                               ; preds = %6, %1
  ret i64 1
}

declare dso_local i32 @__UnmaskIrq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
