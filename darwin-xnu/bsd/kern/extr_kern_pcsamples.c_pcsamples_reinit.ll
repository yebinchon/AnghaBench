; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_pcsamples.c_pcsamples_reinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_pcsamples.c_pcsamples_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pcsample_enable = common dso_local global i64 0, align 8
@pc_bufsize = common dso_local global i64 0, align 8
@pc_buffer = common dso_local global i64 0, align 8
@kernel_map = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcsamples_reinit() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i64 0, i64* @pcsample_enable, align 8
  %2 = load i64, i64* @pc_bufsize, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i64, i64* @pc_buffer, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = load i32, i32* @kernel_map, align 4
  %9 = load i64, i64* @pc_buffer, align 8
  %10 = trunc i64 %9 to i32
  %11 = load i64, i64* @pc_bufsize, align 8
  %12 = call i32 @kmem_free(i32 %8, i32 %10, i64 %11)
  br label %13

13:                                               ; preds = %7, %4, %0
  %14 = call i32 (...) @pcsamples_bootstrap()
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @kmem_free(i32, i32, i64) #1

declare dso_local i32 @pcsamples_bootstrap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
