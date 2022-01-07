; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_pcbinit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mp_pcb.c_mp_pcbinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mp_pcbinit.mp_initialized = internal global i32 0, align 4
@mp_lock_grp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"multipath\00", align 1
@mp_lock_grp = common dso_local global i32 0, align 4
@mp_lock_attr = common dso_local global i32 0, align 4
@mp_lock = common dso_local global i32 0, align 4
@mp_timeout_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mp_pcbinit() #0 {
  %1 = load i32, i32* @mp_pcbinit.mp_initialized, align 4
  %2 = icmp ne i32 %1, 0
  %3 = xor i1 %2, true
  %4 = zext i1 %3 to i32
  %5 = call i32 @VERIFY(i32 %4)
  store i32 1, i32* @mp_pcbinit.mp_initialized, align 4
  %6 = call i32 (...) @lck_grp_attr_alloc_init()
  store i32 %6, i32* @mp_lock_grp_attr, align 4
  %7 = load i32, i32* @mp_lock_grp_attr, align 4
  %8 = call i32 @lck_grp_alloc_init(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %7)
  store i32 %8, i32* @mp_lock_grp, align 4
  %9 = call i32 (...) @lck_attr_alloc_init()
  store i32 %9, i32* @mp_lock_attr, align 4
  %10 = load i32, i32* @mp_lock_grp, align 4
  %11 = load i32, i32* @mp_lock_attr, align 4
  %12 = call i32 @lck_mtx_init(i32* @mp_lock, i32 %10, i32 %11)
  %13 = load i32, i32* @mp_lock_grp, align 4
  %14 = load i32, i32* @mp_lock_attr, align 4
  %15 = call i32 @lck_mtx_init(i32* @mp_timeout_lock, i32 %13, i32 %14)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_alloc_init(i8*, i32) #1

declare dso_local i32 @lck_attr_alloc_init(...) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
