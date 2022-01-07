; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_console.c_console_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_serial_console.c_console_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@console_ring = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CPU_CONS_BUF_SIZE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @console_write(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @console_init()
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 0), align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @CPU_CONS_BUF_SIZE, align 4
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %13, %2
  br label %16

16:                                               ; preds = %50, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %61

19:                                               ; preds = %16
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @ml_set_interrupts_enabled(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = call i32 @simple_lock_try_lock_loop(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1))
  br label %23

23:                                               ; preds = %27, %19
  %24 = load i32, i32* %5, align 4
  %25 = call i32 (...) @console_ring_space()
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = call i32 @simple_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1))
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @console_restore_interrupts_state(i32 %29)
  %31 = call i32 (...) @console_ring_try_empty()
  %32 = load i32, i32* @FALSE, align 4
  %33 = call i32 @ml_set_interrupts_enabled(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = call i32 @simple_lock_try_lock_loop(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1))
  br label %23

35:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %47, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i32 @console_ring_put(i8 signext %45)
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %36

50:                                               ; preds = %36
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8* %54, i8** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = call i32 @simple_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @console_ring, i32 0, i32 1))
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @console_restore_interrupts_state(i32 %59)
  br label %16

61:                                               ; preds = %16
  %62 = call i32 (...) @console_ring_try_empty()
  ret void
}

declare dso_local i32 @console_init(...) #1

declare dso_local i32 @ml_set_interrupts_enabled(i32) #1

declare dso_local i32 @simple_lock_try_lock_loop(i32*) #1

declare dso_local i32 @console_ring_space(...) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @console_restore_interrupts_state(i32) #1

declare dso_local i32 @console_ring_try_empty(...) #1

declare dso_local i32 @console_ring_put(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
