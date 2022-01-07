; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_tunsock_get_ifname.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_net_tuntests.c_tunsock_get_ifname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IFXNAMSIZ = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@T_WITH_ERRNO = common dso_local global i32 0, align 4
@SYSPROTO_CONTROL = common dso_local global i32 0, align 4
@g_OPT_IFNAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"got ifname \22%s\22 len %zd expected %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @tunsock_get_ifname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tunsock_get_ifname(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @IFXNAMSIZ, align 4
  %7 = zext i32 %6 to i64
  %8 = load i32, i32* @IFXNAMSIZ, align 4
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @T_QUIET, align 4
  %10 = load i32, i32* @T_WITH_ERRNO, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @SYSPROTO_CONTROL, align 4
  %13 = load i32, i32* @g_OPT_IFNAME, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @getsockopt(i32 %11, i32 %12, i32 %13, i8* %14, i32* %5)
  %16 = call i32 @T_ASSERT_POSIX_ZERO(i32 %15, i32* null)
  %17 = load i32, i32* @T_QUIET, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 (i32, i8*, ...) @T_ASSERT_TRUE(i32 %20, i8* null)
  %22 = load i32, i32* @T_QUIET, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %23, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 (i32, i8*, ...) @T_ASSERT_TRUE(i32 %31, i8* null)
  %33 = load i32, i32* @T_QUIET, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @strlen(i8* %34)
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %36, %37
  %39 = zext i1 %38 to i32
  %40 = load i8*, i8** %4, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 (i32, i8*, ...) @T_ASSERT_TRUE(i32 %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %40, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i32*) #1

declare dso_local i32 @getsockopt(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @T_ASSERT_TRUE(i32, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
