; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_mtx_spin_uncontended.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_test_lock.c_lck_mtx_test_mtx_spin_uncontended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WARMUP_ITER = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @lck_mtx_test_mtx_spin_uncontended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lck_mtx_test_mtx_spin_uncontended(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @disable_all_test_mtx_stats()
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %12, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @WARMUP_ITER, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %5
  %10 = call i32 (...) @lck_mtx_test_lock_spin()
  %11 = call i32 (...) @lck_mtx_test_unlock_spin()
  br label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %5

15:                                               ; preds = %5
  %16 = call i32 (...) @enable_all_test_mtx_stats()
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %24, %15
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = call i32 (...) @lck_mtx_test_lock_spin()
  %23 = call i32 (...) @lck_mtx_test_unlock_spin()
  br label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %17

27:                                               ; preds = %17
  %28 = call i32 (...) @disable_all_test_mtx_stats()
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %36, %27
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @WARMUP_ITER, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = call i32 (...) @lck_mtx_test_try_lock_spin()
  %35 = call i32 (...) @lck_mtx_test_unlock_spin()
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %29

39:                                               ; preds = %29
  %40 = call i32 (...) @enable_all_test_mtx_stats()
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %48, %39
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %2, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = call i32 (...) @lck_mtx_test_try_lock_spin()
  %47 = call i32 (...) @lck_mtx_test_unlock_spin()
  br label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %41

51:                                               ; preds = %41
  %52 = call i32 (...) @disable_all_test_mtx_stats()
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %60, %51
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @WARMUP_ITER, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = call i32 (...) @lck_mtx_test_lock_spin_always()
  %59 = call i32 (...) @lck_mtx_test_unlock_spin()
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %53

63:                                               ; preds = %53
  %64 = call i32 (...) @enable_all_test_mtx_stats()
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %72, %63
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* %2, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = call i32 (...) @lck_mtx_test_lock_spin_always()
  %71 = call i32 (...) @lck_mtx_test_unlock_spin()
  br label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %3, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %3, align 4
  br label %65

75:                                               ; preds = %65
  %76 = call i32 (...) @disable_all_test_mtx_stats()
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %84, %75
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @WARMUP_ITER, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = call i32 (...) @lck_mtx_test_try_lock_spin_always()
  %83 = call i32 (...) @lck_mtx_test_unlock_spin()
  br label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %77

87:                                               ; preds = %77
  %88 = call i32 (...) @enable_all_test_mtx_stats()
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %96, %87
  %90 = load i32, i32* %3, align 4
  %91 = load i32, i32* %2, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = call i32 (...) @lck_mtx_test_try_lock_spin_always()
  %95 = call i32 (...) @lck_mtx_test_unlock_spin()
  br label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %89

99:                                               ; preds = %89
  %100 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %100
}

declare dso_local i32 @disable_all_test_mtx_stats(...) #1

declare dso_local i32 @lck_mtx_test_lock_spin(...) #1

declare dso_local i32 @lck_mtx_test_unlock_spin(...) #1

declare dso_local i32 @enable_all_test_mtx_stats(...) #1

declare dso_local i32 @lck_mtx_test_try_lock_spin(...) #1

declare dso_local i32 @lck_mtx_test_lock_spin_always(...) #1

declare dso_local i32 @lck_mtx_test_try_lock_spin_always(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
