; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_ifaddr_hook.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_ifaddr_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.pfi_kif* }
%struct.pfi_kif = type { i32 }

@pf_perim_lock = common dso_local global i32 0, align 4
@pf_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_ifaddr_hook(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.pfi_kif*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %4, i32 0, i32 0
  %6 = load %struct.pfi_kif*, %struct.pfi_kif** %5, align 8
  store %struct.pfi_kif* %6, %struct.pfi_kif** %3, align 8
  %7 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %8 = icmp ne %struct.pfi_kif* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i32, i32* @pf_perim_lock, align 4
  %11 = call i32 @lck_rw_lock_shared(i32 %10)
  %12 = load i32, i32* @pf_lock, align 4
  %13 = call i32 @lck_mtx_lock(i32 %12)
  %14 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %15 = call i32 @pfi_kifaddr_update(%struct.pfi_kif* %14)
  %16 = load i32, i32* @pf_lock, align 4
  %17 = call i32 @lck_mtx_unlock(i32 %16)
  %18 = load i32, i32* @pf_perim_lock, align 4
  %19 = call i32 @lck_rw_done(i32 %18)
  br label %20

20:                                               ; preds = %9, %1
  ret i32 0
}

declare dso_local i32 @lck_rw_lock_shared(i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @pfi_kifaddr_update(%struct.pfi_kif*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @lck_rw_done(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
