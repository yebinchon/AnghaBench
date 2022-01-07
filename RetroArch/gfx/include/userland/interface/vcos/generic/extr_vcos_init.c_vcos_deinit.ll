; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_init.c_vcos_deinit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_init.c_vcos_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@init_refcount = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vcos_deinit() #0 {
  %1 = call i32 (...) @vcos_global_lock()
  %2 = load i64, i64* @init_refcount, align 8
  %3 = icmp sgt i64 %2, 0
  %4 = zext i1 %3 to i32
  %5 = call i32 @vcos_assert(i32 %4)
  %6 = load i64, i64* @init_refcount, align 8
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %0
  %9 = load i64, i64* @init_refcount, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* @init_refcount, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = call i32 (...) @vcos_platform_deinit()
  br label %14

14:                                               ; preds = %12, %8, %0
  %15 = call i32 (...) @vcos_global_unlock()
  ret void
}

declare dso_local i32 @vcos_global_lock(...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vcos_platform_deinit(...) #1

declare dso_local i32 @vcos_global_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
