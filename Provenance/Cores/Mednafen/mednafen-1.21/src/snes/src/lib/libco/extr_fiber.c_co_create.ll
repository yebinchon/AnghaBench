; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/snes/src/lib/libco/extr_fiber.c_co_create.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/snes/src/lib/libco/extr_fiber.c_co_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@co_active_ = common dso_local global i64 0, align 8
@co_thunk = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @co_create(i32 %0, void ()* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca void ()*, align 8
  store i32 %0, i32* %3, align 4
  store void ()* %1, void ()** %4, align 8
  %5 = load i64, i64* @co_active_, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = call i32 @ConvertThreadToFiber(i32 0)
  %9 = call i64 (...) @GetCurrentFiber()
  store i64 %9, i64* @co_active_, align 8
  br label %10

10:                                               ; preds = %7, %2
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @co_thunk, align 4
  %13 = load void ()*, void ()** %4, align 8
  %14 = bitcast void ()* %13 to i8*
  %15 = call i32 @CreateFiber(i32 %11, i32 %12, i8* %14)
  ret i32 %15
}

declare dso_local i32 @ConvertThreadToFiber(i32) #1

declare dso_local i64 @GetCurrentFiber(...) #1

declare dso_local i32 @CreateFiber(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
