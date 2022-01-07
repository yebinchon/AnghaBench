; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_error_string.c_do_compat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_error_string.c_do_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPC_SEND_MOD = common dso_local global i32 0, align 4
@IPC_RCV_MOD = common dso_local global i32 0, align 4
@MACH_IPC_MIG_MOD = common dso_local global i32 0, align 4
@SERV_NETNAME_MOD = common dso_local global i32 0, align 4
@SERV_ENV_MOD = common dso_local global i32 0, align 4
@SERV_EXECD_MOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @do_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_compat(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* %4, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 -200, %6
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp sle i32 %9, -100
  br i1 %10, label %11, label %17

11:                                               ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = add nsw i32 %12, 100
  %14 = sub nsw i32 0, %13
  %15 = load i32, i32* @IPC_SEND_MOD, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %3, align 4
  br label %79

17:                                               ; preds = %8, %1
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 -300, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp sle i32 %21, -200
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 200
  %26 = sub nsw i32 0, %25
  %27 = load i32, i32* @IPC_RCV_MOD, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %78

29:                                               ; preds = %20, %17
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 -400, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32, i32* %3, align 4
  %34 = icmp sle i32 %33, -300
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 300
  %38 = sub nsw i32 0, %37
  %39 = load i32, i32* @MACH_IPC_MIG_MOD, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %3, align 4
  br label %77

41:                                               ; preds = %32, %29
  %42 = load i32, i32* %3, align 4
  %43 = icmp sle i32 1000, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32, i32* %3, align 4
  %46 = icmp slt i32 %45, 1100
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load i32, i32* %3, align 4
  %49 = sub nsw i32 %48, 1000
  %50 = load i32, i32* @SERV_NETNAME_MOD, align 4
  %51 = or i32 %49, %50
  store i32 %51, i32* %3, align 4
  br label %76

52:                                               ; preds = %44, %41
  %53 = load i32, i32* %3, align 4
  %54 = icmp sle i32 1600, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* %3, align 4
  %57 = icmp slt i32 %56, 1700
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %59, 1600
  %61 = load i32, i32* @SERV_ENV_MOD, align 4
  %62 = or i32 %60, %61
  store i32 %62, i32* %3, align 4
  br label %75

63:                                               ; preds = %55, %52
  %64 = load i32, i32* %3, align 4
  %65 = icmp sle i32 27600, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %63
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 27700
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i32, i32* %3, align 4
  %71 = sub nsw i32 %70, 27600
  %72 = load i32, i32* @SERV_EXECD_MOD, align 4
  %73 = or i32 %71, %72
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %66, %63
  br label %75

75:                                               ; preds = %74, %58
  br label %76

76:                                               ; preds = %75, %47
  br label %77

77:                                               ; preds = %76, %35
  br label %78

78:                                               ; preds = %77, %23
  br label %79

79:                                               ; preds = %78, %11
  %80 = load i32, i32* %3, align 4
  %81 = load i32*, i32** %2, align 8
  store i32 %80, i32* %81, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
