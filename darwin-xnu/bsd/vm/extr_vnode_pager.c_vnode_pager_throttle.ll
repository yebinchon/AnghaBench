; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vnode_pager.c_vnode_pager_throttle.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vnode_pager.c_vnode_pager_throttle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnode_pager_throttle() #0 {
  %1 = alloca %struct.uthread*, align 8
  %2 = call i32 (...) @current_thread()
  %3 = call %struct.uthread* @get_bsdthread_info(i32 %2)
  store %struct.uthread* %3, %struct.uthread** %1, align 8
  %4 = load %struct.uthread*, %struct.uthread** %1, align 8
  %5 = getelementptr inbounds %struct.uthread, %struct.uthread* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 @throttle_lowpri_io(i32 1)
  br label %10

10:                                               ; preds = %8, %0
  ret void
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @throttle_lowpri_io(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
