; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_permute_enables.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_permute_enables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@T_QUIET = common dso_local global i32 0, align 4
@T_WITH_ERRNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @permute_enables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @permute_enables() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @create_tunsock(i32 0, i32 0, i32 0)
  store i32 %2, i32* %1, align 4
  %3 = call i32 @T_EXPECT_GE(i32 %2, i32 0, i32* null)
  %4 = load i32, i32* @T_QUIET, align 4
  %5 = load i32, i32* @T_WITH_ERRNO, align 4
  %6 = load i32, i32* %1, align 4
  %7 = call i32 @close(i32 %6)
  %8 = call i32 @T_EXPECT_POSIX_ZERO(i32 %7, i32* null)
  %9 = call i32 @create_tunsock(i32 0, i32 0, i32 1)
  store i32 %9, i32* %1, align 4
  %10 = call i32 @T_EXPECT_GE(i32 %9, i32 0, i32* null)
  %11 = load i32, i32* @T_QUIET, align 4
  %12 = load i32, i32* @T_WITH_ERRNO, align 4
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @close(i32 %13)
  %15 = call i32 @T_EXPECT_POSIX_ZERO(i32 %14, i32* null)
  %16 = call i32 @create_tunsock(i32 0, i32 1, i32 0)
  store i32 %16, i32* %1, align 4
  %17 = call i32 @T_EXPECT_GE(i32 %16, i32 0, i32* null)
  %18 = load i32, i32* @T_QUIET, align 4
  %19 = load i32, i32* @T_WITH_ERRNO, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @close(i32 %20)
  %22 = call i32 @T_EXPECT_POSIX_ZERO(i32 %21, i32* null)
  %23 = call i32 @create_tunsock(i32 0, i32 1, i32 1)
  store i32 %23, i32* %1, align 4
  %24 = call i32 @T_EXPECT_GE(i32 %23, i32 0, i32* null)
  %25 = load i32, i32* @T_QUIET, align 4
  %26 = load i32, i32* @T_WITH_ERRNO, align 4
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @close(i32 %27)
  %29 = call i32 @T_EXPECT_POSIX_ZERO(i32 %28, i32* null)
  %30 = call i32 @create_tunsock(i32 1, i32 0, i32 0)
  store i32 %30, i32* %1, align 4
  %31 = call i32 @T_EXPECT_GE(i32 %30, i32 0, i32* null)
  %32 = load i32, i32* @T_QUIET, align 4
  %33 = load i32, i32* @T_WITH_ERRNO, align 4
  %34 = load i32, i32* %1, align 4
  %35 = call i32 @close(i32 %34)
  %36 = call i32 @T_EXPECT_POSIX_ZERO(i32 %35, i32* null)
  %37 = call i32 @create_tunsock(i32 1, i32 0, i32 1)
  store i32 %37, i32* %1, align 4
  %38 = call i32 @T_EXPECT_GE(i32 %37, i32 0, i32* null)
  %39 = load i32, i32* @T_QUIET, align 4
  %40 = load i32, i32* @T_WITH_ERRNO, align 4
  %41 = load i32, i32* %1, align 4
  %42 = call i32 @close(i32 %41)
  %43 = call i32 @T_EXPECT_POSIX_ZERO(i32 %42, i32* null)
  %44 = call i32 @create_tunsock(i32 1, i32 1, i32 0)
  store i32 %44, i32* %1, align 4
  %45 = call i32 @T_EXPECT_GE(i32 %44, i32 0, i32* null)
  %46 = load i32, i32* @T_QUIET, align 4
  %47 = load i32, i32* @T_WITH_ERRNO, align 4
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @close(i32 %48)
  %50 = call i32 @T_EXPECT_POSIX_ZERO(i32 %49, i32* null)
  %51 = call i32 @create_tunsock(i32 1, i32 1, i32 1)
  store i32 %51, i32* %1, align 4
  %52 = call i32 @T_EXPECT_GE(i32 %51, i32 0, i32* null)
  %53 = load i32, i32* @T_QUIET, align 4
  %54 = load i32, i32* @T_WITH_ERRNO, align 4
  %55 = load i32, i32* %1, align 4
  %56 = call i32 @close(i32 %55)
  %57 = call i32 @T_EXPECT_POSIX_ZERO(i32 %56, i32* null)
  ret void
}

declare dso_local i32 @T_EXPECT_GE(i32, i32, i32*) #1

declare dso_local i32 @create_tunsock(i32, i32, i32) #1

declare dso_local i32 @T_EXPECT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
