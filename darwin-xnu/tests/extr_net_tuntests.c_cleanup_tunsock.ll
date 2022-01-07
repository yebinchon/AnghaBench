; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_cleanup_tunsock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_cleanup_tunsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_QUIET = common dso_local global i32 0, align 4
@T_WITH_ERRNO = common dso_local global i32 0, align 4
@g_tunsock = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@g_is_ipsec_test = common dso_local global i64 0, align 8
@g_pfkeyso = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_tunsock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_tunsock() #0 {
  %1 = load i32, i32* @T_QUIET, align 4
  %2 = load i32, i32* @T_WITH_ERRNO, align 4
  %3 = load i32, i32* @g_tunsock, align 4
  %4 = call i32 @close(i32 %3)
  %5 = call i32 @T_EXPECT_POSIX_ZERO(i32 %4, i32* null)
  %6 = load i32, i32* @T_QUIET, align 4
  %7 = load i32, i32* @g_tunsock, align 4
  %8 = call i32 @close(i32 %7)
  %9 = load i32, i32* @EBADF, align 4
  %10 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %8, i32 %9, i32* null)
  %11 = load i64, i64* @g_is_ipsec_test, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %0
  %14 = load i32, i32* @T_QUIET, align 4
  %15 = load i32, i32* @T_WITH_ERRNO, align 4
  %16 = load i32, i32* @g_pfkeyso, align 4
  %17 = call i32 @close(i32 %16)
  %18 = call i32 @T_EXPECT_POSIX_ZERO(i32 %17, i32* null)
  %19 = load i32, i32* @T_QUIET, align 4
  %20 = load i32, i32* @g_pfkeyso, align 4
  %21 = call i32 @close(i32 %20)
  %22 = load i32, i32* @EBADF, align 4
  %23 = call i32 @T_EXPECT_POSIX_FAILURE(i32 %21, i32 %22, i32* null)
  br label %24

24:                                               ; preds = %13, %0
  ret void
}

declare dso_local i32 @T_EXPECT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @T_EXPECT_POSIX_FAILURE(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
