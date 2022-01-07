; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_stackshot_spawn_exit_stress.c_take_stackshot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_stackshot_spawn_exit_stress.c_take_stackshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STACKSHOT_SAVE_LOADINFO = common dso_local global i32 0, align 4
@STACKSHOT_GET_GLOBAL_MEM_STATS = common dso_local global i32 0, align 4
@STACKSHOT_SAVE_IMP_DONATION_PIDS = common dso_local global i32 0, align 4
@STACKSHOT_KCDATA_FORMAT = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"created stackshot config\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"set flags on stackshot config\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"called stackshot_capture_with_config (no retries remaining)\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"called stackshot_capture_with_config\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"deallocated stackshot config\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @take_stackshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @take_stackshot() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @STACKSHOT_SAVE_LOADINFO, align 4
  %6 = load i32, i32* @STACKSHOT_GET_GLOBAL_MEM_STATS, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @STACKSHOT_SAVE_IMP_DONATION_PIDS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @STACKSHOT_KCDATA_FORMAT, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %1, align 4
  %12 = call i8* (...) @stackshot_config_create()
  store i8* %12, i8** %2, align 8
  %13 = load i32, i32* @T_QUIET, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i32 @T_ASSERT_NOTNULL(i8* %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %16 = load i8*, i8** %2, align 8
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @stackshot_config_set_flags(i8* %16, i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @T_QUIET, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @T_ASSERT_POSIX_ZERO(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 5, i32* %4, align 4
  br label %22

22:                                               ; preds = %35, %0
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @stackshot_capture_with_config(i8* %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @EBUSY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @ETIMEDOUT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %4, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %4, align 4
  br label %22

38:                                               ; preds = %32
  %39 = load i32, i32* @T_QUIET, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @T_ASSERT_POSIX_ZERO(i32 %40, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %38
  br label %47

43:                                               ; preds = %28
  %44 = load i32, i32* @T_QUIET, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @T_ASSERT_POSIX_ZERO(i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %43, %42
  %48 = load i8*, i8** %2, align 8
  %49 = call i32 @stackshot_config_dealloc(i8* %48)
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* @T_QUIET, align 4
  %51 = load i32, i32* %3, align 4
  %52 = call i32 @T_EXPECT_POSIX_ZERO(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i8* @stackshot_config_create(...) #1

declare dso_local i32 @T_ASSERT_NOTNULL(i8*, i8*) #1

declare dso_local i32 @stackshot_config_set_flags(i8*, i32) #1

declare dso_local i32 @T_ASSERT_POSIX_ZERO(i32, i8*) #1

declare dso_local i32 @stackshot_capture_with_config(i8*) #1

declare dso_local i32 @stackshot_config_dealloc(i8*) #1

declare dso_local i32 @T_EXPECT_POSIX_ZERO(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
