; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_promote_background.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_ktrace.c_ktrace_promote_background.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ktrace_state = common dso_local global i64 0, align 8
@KTRACE_STATE_BG = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@should_notify_on_init = common dso_local global i32 0, align 4
@KTRACE_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @ktrace_promote_background to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktrace_promote_background() #0 {
  %1 = load i64, i64* @ktrace_state, align 8
  %2 = load i64, i64* @KTRACE_STATE_BG, align 8
  %3 = icmp ne i64 %1, %2
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert(i32 %4)
  %6 = call i64 (...) @ktrace_background_available_notify_user()
  %7 = load i64, i64* @KERN_FAILURE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32 1, i32* @should_notify_on_init, align 4
  br label %11

10:                                               ; preds = %0
  store i32 0, i32* @should_notify_on_init, align 4
  br label %11

11:                                               ; preds = %10, %9
  %12 = call i32 (...) @ktrace_release_ownership()
  %13 = load i64, i64* @KTRACE_STATE_OFF, align 8
  store i64 %13, i64* @ktrace_state, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @ktrace_background_available_notify_user(...) #1

declare dso_local i32 @ktrace_release_ownership(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
