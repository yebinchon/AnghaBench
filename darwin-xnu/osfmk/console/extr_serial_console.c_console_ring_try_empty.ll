; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_console.c_console_ring_try_empty.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_console.c_console_ring_try_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@console_ring = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@console_output = common dso_local global i32 0, align 4
@MAX_INT_DISABLED_FLUSH_SIZE = common dso_local global i32 0, align 4
@kernel_debugger_entry_count = common dso_local global i32 0, align 4
@console_suspended = common dso_local global i32 0, align 4
@MAX_TOTAL_FLUSH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @console_ring_try_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @console_ring_try_empty() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i64 (...) @ml_get_interrupts_enabled()
  %7 = load i64, i64* @FALSE, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %77, %0
  %11 = load i32, i32* %1, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = call i32 (...) @handle_pending_TLB_flushes()
  br label %15

15:                                               ; preds = %13, %10
  %16 = call i32 @simple_lock_try(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 4))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = call i32 @delay(i32 1)
  br label %80

20:                                               ; preds = %15
  %21 = load i64, i64* @FALSE, align 8
  %22 = call i32 @ml_set_interrupts_enabled(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = call i32 @hw_atomic_add(i32* @console_output, i32 1)
  %24 = call i32 @simple_lock_try_lock_loop(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 5))
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 0), align 4
  %26 = load i32, i32* @MAX_INT_DISABLED_FLUSH_SIZE, align 4
  %27 = call i32 @MIN(i32 %25, i32 %26)
  store i32 %27, i32* %2, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1), align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 2), align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 3), align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %20
  %39 = load i32, i32* %2, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 3), align 4
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @_cnputs(i32 %42, i32 %43)
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 3), align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1), align 4
  %48 = sub nsw i32 %46, %47
  %49 = load i32, i32* %2, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 2), align 4
  %52 = srem i32 %50, %51
  %53 = add nsw i32 %45, %52
  store i32 %53, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 3), align 4
  %54 = load i32, i32* %2, align 4
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 0), align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 0), align 4
  %57 = load i32, i32* %2, align 4
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %41, %38
  %61 = call i32 @simple_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 5))
  %62 = call i32 @hw_atomic_sub(i32* @console_output, i32 1)
  %63 = call i32 @simple_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 4))
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @console_restore_interrupts_state(i32 %64)
  %66 = load i32, i32* @kernel_debugger_entry_count, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* @console_suspended, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @MAX_TOTAL_FLUSH_SIZE, align 4
  %74 = icmp sge i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %80

76:                                               ; preds = %71, %68, %60
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %2, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %10, label %80

80:                                               ; preds = %18, %77, %75
  ret void
}

declare dso_local i64 @ml_get_interrupts_enabled(...) #1

declare dso_local i32 @handle_pending_TLB_flushes(...) #1

declare dso_local i32 @simple_lock_try(i32*) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @ml_set_interrupts_enabled(i64) #1

declare dso_local i32 @hw_atomic_add(i32*, i32) #1

declare dso_local i32 @simple_lock_try_lock_loop(i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @_cnputs(i32, i32) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @hw_atomic_sub(i32*, i32) #1

declare dso_local i32 @console_restore_interrupts_state(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
