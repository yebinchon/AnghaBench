; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqmgr.c_ARQM_Pop.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_arqmgr.c_ARQM_Pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__ARQMStackLocation = common dso_local global i32 0, align 4
@__ARQMStackPointer = common dso_local global i64* null, align 8
@__ARQMFreeBytes = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ARQM_Pop() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* %1, align 4
  %3 = call i32 @_CPU_ISR_Disable(i32 %2)
  %4 = load i32, i32* @__ARQMStackLocation, align 4
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %25

6:                                                ; preds = %0
  %7 = load i64*, i64** @__ARQMStackPointer, align 8
  %8 = load i32, i32* @__ARQMStackLocation, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i64, i64* %7, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = load i64*, i64** @__ARQMStackPointer, align 8
  %13 = load i32, i32* @__ARQMStackLocation, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %11, %17
  %19 = load i32, i32* @__ARQMFreeBytes, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @__ARQMFreeBytes, align 4
  %23 = load i32, i32* @__ARQMStackLocation, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* @__ARQMStackLocation, align 4
  br label %25

25:                                               ; preds = %6, %0
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @_CPU_ISR_Restore(i32 %26)
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
