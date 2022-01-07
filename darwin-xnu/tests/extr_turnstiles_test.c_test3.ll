; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstiles_test.c_test3.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_turnstiles_test.c_test3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [95 x i8] c"Test 3: test if lock owner thread exiting without unlocking allows turnstile to work correctly\00", align 1
@QOS_CLASS_USER_INITIATED = common dso_local global i32 0, align 4
@take_lock_and_exit = common dso_local global i32 0, align 4
@QOS_CLASS_USER_INTERACTIVE = common dso_local global i32 0, align 4
@try_to_take_lock_and_unlock = common dso_local global i32 0, align 4
@unlock_an_owner_exited_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @test3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test3(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @T_LOG(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @QOS_CLASS_USER_INITIATED, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @thread_create_at_qos(i32 %4, i32* @take_lock_and_exit, i32 %5)
  %7 = load i32, i32* @QOS_CLASS_USER_INTERACTIVE, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @thread_create_at_qos(i32 %7, i32* @try_to_take_lock_and_unlock, i32 %8)
  %10 = load i32, i32* @QOS_CLASS_USER_INTERACTIVE, align 4
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @thread_create_at_qos(i32 %10, i32* @unlock_an_owner_exited_lock, i32 %11)
  %13 = call i32 @sleep(i32 16)
  ret void
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local i32 @thread_create_at_qos(i32, i32*, i32) #1

declare dso_local i32 @sleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
