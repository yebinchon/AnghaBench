; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_wkspace.c___lwp_wkspace_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_wkspace.c___lwp_wkspace_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__wkspace_heap = common dso_local global i32 0, align 4
@PPC_ALIGNMENT = common dso_local global i32 0, align 4
@__wkspace_heap_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_wkspace_init(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @_CPU_ISR_Disable(i64 %6)
  %8 = call i64 (...) @SYS_GetArenaLo()
  %9 = call i64 @ROUND32UP(i64 %8)
  store i64 %9, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 (...) @SYS_GetArenaLo()
  %13 = sub nsw i64 %11, %12
  %14 = sub nsw i64 %10, %13
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %3, align 8
  %16 = load i64, i64* %5, align 8
  %17 = add nsw i64 %15, %16
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @SYS_SetArenaLo(i8* %18)
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @_CPU_ISR_Restore(i64 %20)
  %22 = load i64, i64* %3, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @memset(i8* %23, i32 0, i64 %24)
  %26 = load i64, i64* %3, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i64, i64* %5, align 8
  %29 = load i32, i32* @PPC_ALIGNMENT, align 4
  %30 = call i64 @__lwp_heap_init(i32* @__wkspace_heap, i8* %27, i64 %28, i32 %29)
  %31 = load i32, i32* @__wkspace_heap_size, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* @__wkspace_heap_size, align 4
  ret void
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i64 @ROUND32UP(i64) #1

declare dso_local i64 @SYS_GetArenaLo(...) #1

declare dso_local i32 @SYS_SetArenaLo(i8*) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i64 @__lwp_heap_init(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
