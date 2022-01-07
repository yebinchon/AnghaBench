; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_grab_shared.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_locks_i386.c_lck_rw_grab_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@memory_order_acquire_smp = common dso_local global i32 0, align 4
@LCK_RW_INTERLOCK = common dso_local global i32 0, align 4
@LCK_RW_WANT_WRITE = common dso_local global i32 0, align 4
@LCK_RW_WANT_UPGRADE = common dso_local global i32 0, align 4
@LCK_RW_SHARED_MASK = common dso_local global i32 0, align 4
@LCK_RW_PRIV_EXCL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@LCK_RW_SHARED_READER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*)* @lck_rw_grab_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lck_rw_grab_shared(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  br label %6

6:                                                ; preds = %16, %1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* @memory_order_acquire_smp, align 4
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
  %23 = load i32, i32* @LCK_RW_WANT_UPGRADE, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @LCK_RW_SHARED_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @LCK_RW_PRIV_EXCL, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32, %27
  %38 = call i32 (...) @atomic_exchange_abort()
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %2, align 4
  br label %53

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %20
  %42 = load i64, i64* @LCK_RW_SHARED_READER, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @memory_order_acquire_smp, align 4
  %52 = call i32 @atomic_exchange_complete32(i32* %48, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %41, %37
  %54 = load i32, i32* %2, align 4
  ret i32 %54
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
