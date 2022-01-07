; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspRunM68K.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspRunM68K.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@m68k_running = common dso_local global i32 0, align 4
@m68k_saved_cycles = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ScspRunM68K to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ScspRunM68K(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i32, i32* @m68k_running, align 4
  %5 = call i64 @LIKELY(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %1
  %8 = load i64, i64* @m68k_saved_cycles, align 8
  %9 = load i64, i64* %2, align 8
  %10 = add nsw i64 %8, %9
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i64 @LIKELY(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %7
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @m68k_execf(i64 %17)
  %19 = load i64, i64* %3, align 8
  %20 = sub nsw i64 %19, %18
  store i64 %20, i64* %3, align 8
  br label %21

21:                                               ; preds = %16, %7
  %22 = load i64, i64* %3, align 8
  store i64 %22, i64* @m68k_saved_cycles, align 8
  br label %23

23:                                               ; preds = %21, %1
  ret void
}

declare dso_local i64 @LIKELY(i32) #1

declare dso_local i64 @m68k_execf(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
