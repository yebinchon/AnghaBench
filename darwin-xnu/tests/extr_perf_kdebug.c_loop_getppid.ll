; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_kdebug.c_loop_getppid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_kdebug.c_loop_getppid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @loop_getppid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_getppid(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @dt_stat_time_begin(i32 %6)
  store i32 %7, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %22, %5
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 100
  br i1 %10, label %11, label %25

11:                                               ; preds = %8
  %12 = call i32 (...) @getppid()
  %13 = call i32 (...) @getppid()
  %14 = call i32 (...) @getppid()
  %15 = call i32 (...) @getppid()
  %16 = call i32 (...) @getppid()
  %17 = call i32 (...) @getppid()
  %18 = call i32 (...) @getppid()
  %19 = call i32 (...) @getppid()
  %20 = call i32 (...) @getppid()
  %21 = call i32 (...) @getppid()
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  br label %8

25:                                               ; preds = %8
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @dt_stat_time_end_batch(i32 %26, i32 1000, i32 %27)
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @dt_stat_stable(i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %5, label %34

34:                                               ; preds = %29
  ret void
}

declare dso_local i32 @dt_stat_time_begin(i32) #1

declare dso_local i32 @getppid(...) #1

declare dso_local i32 @dt_stat_time_end_batch(i32, i32, i32) #1

declare dso_local i32 @dt_stat_stable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
