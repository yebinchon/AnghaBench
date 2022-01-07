; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstiles_test.c_try_to_take_lock_and_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstiles_test.c_try_to_take_lock_and_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"thread(%llu) priority before acquiring the lock is %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @try_to_take_lock_and_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @try_to_take_lock_and_unlock(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i32
  store i32 %7, i32* %4, align 4
  %8 = call i32 @pthread_threadid_np(i32* null, i32* %3)
  %9 = call i32 @sleep(i32 4)
  %10 = call i32 (...) @mach_thread_self()
  %11 = call i32 @get_pri(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @T_ASSERT_EQ(i32 %12, i32 47, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @turnstile_prim_lock(i32 %16)
  %18 = call i32 @sleep(i32 2)
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @turnstile_prim_unlock(i32 %19)
  ret i8* null
}

declare dso_local i32 @pthread_threadid_np(i32*, i32*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @get_pri(i32) #1

declare dso_local i32 @mach_thread_self(...) #1

declare dso_local i32 @T_ASSERT_EQ(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @turnstile_prim_lock(i32) #1

declare dso_local i32 @turnstile_prim_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
