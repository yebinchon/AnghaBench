; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_free_pcb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_utun.c_utun_free_pcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.utun_pcb = type { i32, i32, i32 }

@utun_lck_grp = common dso_local global i32 0, align 4
@utun_lock = common dso_local global i32 0, align 4
@utun_head = common dso_local global i32 0, align 4
@utun_chain = common dso_local global i32 0, align 4
@utun_pcb_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.utun_pcb*, i32)* @utun_free_pcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @utun_free_pcb(%struct.utun_pcb* %0, i32 %1) #0 {
  %3 = alloca %struct.utun_pcb*, align 8
  %4 = alloca i32, align 4
  store %struct.utun_pcb* %0, %struct.utun_pcb** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.utun_pcb*, %struct.utun_pcb** %3, align 8
  %6 = getelementptr inbounds %struct.utun_pcb, %struct.utun_pcb* %5, i32 0, i32 0
  %7 = load i32, i32* @utun_lck_grp, align 4
  %8 = call i32 @lck_rw_destroy(i32* %6, i32 %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = call i32 @lck_mtx_lock(i32* @utun_lock)
  %13 = load %struct.utun_pcb*, %struct.utun_pcb** %3, align 8
  %14 = load i32, i32* @utun_chain, align 4
  %15 = call i32 @TAILQ_REMOVE(i32* @utun_head, %struct.utun_pcb* %13, i32 %14)
  %16 = call i32 @lck_mtx_unlock(i32* @utun_lock)
  br label %17

17:                                               ; preds = %11, %2
  %18 = load i32, i32* @utun_pcb_zone, align 4
  %19 = load %struct.utun_pcb*, %struct.utun_pcb** %3, align 8
  %20 = call i32 @zfree(i32 %18, %struct.utun_pcb* %19)
  ret void
}

declare dso_local i32 @lck_rw_destroy(i32*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.utun_pcb*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @zfree(i32, %struct.utun_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
