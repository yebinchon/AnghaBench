; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_ucode.c_register_locks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_ucode.c_register_locks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ucode_slock_grp_attr = common dso_local global i64 0, align 8
@ucode_slock_grp = common dso_local global i64 0, align 8
@ucode_slock_attr = common dso_local global i64 0, align 8
@ucode_slock = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"uccode_lock\00", align 1
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @register_locks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_locks() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @ucode_slock_grp_attr, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %15

4:                                                ; preds = %0
  %5 = load i64, i64* @ucode_slock_grp, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %4
  %8 = load i64, i64* @ucode_slock_attr, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load i64, i64* @ucode_slock, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %14, i32* %1, align 4
  br label %65

15:                                               ; preds = %10, %7, %4, %0
  %16 = call i64 (...) @lck_grp_attr_alloc_init()
  store i64 %16, i64* @ucode_slock_grp_attr, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %38

19:                                               ; preds = %15
  %20 = load i64, i64* @ucode_slock_grp_attr, align 8
  %21 = call i32 @lck_grp_attr_setstat(i64 %20)
  %22 = load i64, i64* @ucode_slock_grp_attr, align 8
  %23 = call i64 @lck_grp_alloc_init(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %22)
  store i64 %23, i64* @ucode_slock_grp, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %38

26:                                               ; preds = %19
  %27 = call i64 (...) @lck_attr_alloc_init()
  store i64 %27, i64* @ucode_slock_attr, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  br label %38

30:                                               ; preds = %26
  %31 = load i64, i64* @ucode_slock_grp, align 8
  %32 = load i64, i64* @ucode_slock_attr, align 8
  %33 = call i64 @lck_spin_alloc_init(i64 %31, i64 %32)
  store i64 %33, i64* @ucode_slock, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %37, i32* %1, align 4
  br label %65

38:                                               ; preds = %35, %29, %25, %18
  %39 = load i64, i64* @ucode_slock, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i64, i64* @ucode_slock, align 8
  %43 = load i64, i64* @ucode_slock_grp, align 8
  %44 = call i32 @lck_spin_free(i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i64, i64* @ucode_slock_attr, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* @ucode_slock_attr, align 8
  %50 = call i32 @lck_attr_free(i64 %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i64, i64* @ucode_slock_grp, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* @ucode_slock_grp, align 8
  %56 = call i32 @lck_grp_free(i64 %55)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i64, i64* @ucode_slock_grp_attr, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* @ucode_slock_grp_attr, align 8
  %62 = call i32 @lck_grp_attr_free(i64 %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %64, i32* %1, align 4
  br label %65

65:                                               ; preds = %63, %36, %13
  %66 = load i32, i32* %1, align 4
  ret i32 %66
}

declare dso_local i64 @lck_grp_attr_alloc_init(...) #1

declare dso_local i32 @lck_grp_attr_setstat(i64) #1

declare dso_local i64 @lck_grp_alloc_init(i8*, i64) #1

declare dso_local i64 @lck_attr_alloc_init(...) #1

declare dso_local i64 @lck_spin_alloc_init(i64, i64) #1

declare dso_local i32 @lck_spin_free(i64, i64) #1

declare dso_local i32 @lck_attr_free(i64) #1

declare dso_local i32 @lck_grp_free(i64) #1

declare dso_local i32 @lck_grp_attr_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
