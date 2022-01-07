; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_lock_grab_mutex.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_mtx_lock_grab_mutex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@LCK_MTX_MLOCKED_MSK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @lck_mtx_lock_grab_mutex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lck_mtx_lock_grab_mutex(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @ordered_load_mtx_state(i32* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @LCK_MTX_MLOCKED_MSK, align 4
  %10 = call i32 @lck_mtx_interlock_try_lock_set_flags(i32* %8, i32 %9, i32* %4)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %2, align 4
  br label %21

14:                                               ; preds = %1
  %15 = call %struct.TYPE_3__* (...) @current_thread()
  store %struct.TYPE_3__* %15, %struct.TYPE_3__** %5, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %18 = ptrtoint %struct.TYPE_3__* %17 to i64
  %19 = call i32 @ordered_store_mtx_owner(i32* %16, i64 %18)
  %20 = load i32, i32* @TRUE, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %14, %12
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ordered_load_mtx_state(i32*) #1

declare dso_local i32 @lck_mtx_interlock_try_lock_set_flags(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @current_thread(...) #1

declare dso_local i32 @ordered_store_mtx_owner(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
