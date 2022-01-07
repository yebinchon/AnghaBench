; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_grab_want.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_grab_want.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@memory_order_relaxed = common dso_local global i32 0, align 4
@LCK_RW_INTERLOCK = common dso_local global i32 0, align 4
@LCK_RW_WANT_WRITE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @lck_rw_grab_want to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lck_rw_grab_want(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  br label %6

6:                                                ; preds = %16, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* @memory_order_relaxed, align 4
  %10 = call i32 @atomic_exchange_begin32(i32* %8, i32* %5, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @LCK_RW_INTERLOCK, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %20

16:                                               ; preds = %6
  %17 = call i32 (...) @atomic_exchange_abort()
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = call i32 @lck_rw_interlock_spin(%struct.TYPE_4__* %18)
  br label %6

20:                                               ; preds = %15
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @LCK_RW_WANT_WRITE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = call i32 (...) @atomic_exchange_abort()
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %20
  %29 = load i32, i32* @LCK_RW_WANT_WRITE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @memory_order_relaxed, align 4
  %37 = call i32 @atomic_exchange_complete32(i32* %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %28, %25
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @atomic_exchange_begin32(i32*, i32*, i32) #1

declare dso_local i32 @atomic_exchange_abort(...) #1

declare dso_local i32 @lck_rw_interlock_spin(%struct.TYPE_4__*) #1

declare dso_local i32 @atomic_exchange_complete32(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
