; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_clear_thread_map.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_clear_thread_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@kd_ctrl_page = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@KDBG_MAPINIT = common dso_local global i32 0, align 4
@kd_mapptr = common dso_local global i32* null, align 8
@kernel_map = common dso_local global i32 0, align 4
@kd_mapsize = common dso_local global i64 0, align 8
@kd_mapcount = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @kdbg_clear_thread_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdbg_clear_thread_map() #0 {
  %1 = call i32 (...) @ktrace_assert_lock_held()
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %3 = load i32, i32* @KDBG_MAPINIT, align 4
  %4 = and i32 %2, %3
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %0
  %7 = load i32*, i32** @kd_mapptr, align 8
  %8 = icmp ne i32* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32, i32* @kernel_map, align 4
  %12 = load i32*, i32** @kd_mapptr, align 8
  %13 = ptrtoint i32* %12 to i32
  %14 = load i64, i64* @kd_mapsize, align 8
  %15 = call i32 @kmem_free(i32 %11, i32 %13, i64 %14)
  store i32* null, i32** @kd_mapptr, align 8
  store i64 0, i64* @kd_mapsize, align 8
  store i64 0, i64* @kd_mapcount, align 8
  %16 = load i32, i32* @KDBG_MAPINIT, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @kd_ctrl_page, i32 0, i32 0), align 4
  br label %20

20:                                               ; preds = %6, %0
  ret void
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @kmem_free(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
