; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_setthread_cpupercent.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/libproc/extr_libproc.c_proc_setthread_cpupercent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@RLIMIT_THREAD_CPULIMITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_setthread_cpupercent(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 100
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, -16777216
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %25

15:                                               ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @RLIMIT_THREAD_CPULIMITS, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = call i32 @proc_rlimit_control(i32 -1, i32 %20, i8* %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @proc_rlimit_control(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
