; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-fakestack.c_kasan_fakestack_resume.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-fakestack.c_kasan_fakestack_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@suspend_count = common dso_local global i32 0, align 4
@fakestack_enabled = common dso_local global i64 0, align 8
@suspend_threshold = common dso_local global i64 0, align 8
@__asan_option_detect_stack_use_after_return = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kasan_fakestack_resume() #0 {
  %1 = alloca i64, align 8
  %2 = call i64 @OSDecrementAtomicLong(i32* @suspend_count)
  store i64 %2, i64* %1, align 8
  %3 = load i64, i64* %1, align 8
  %4 = icmp sge i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i64, i64* @fakestack_enabled, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = load i64, i64* %1, align 8
  %11 = load i64, i64* @suspend_threshold, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  store i32 1, i32* @__asan_option_detect_stack_use_after_return, align 4
  br label %14

14:                                               ; preds = %13, %9, %0
  ret void
}

declare dso_local i64 @OSDecrementAtomicLong(i32*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
