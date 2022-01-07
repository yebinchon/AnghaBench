; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_compare_api_version.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..core_info.c_core_info_compare_api_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32)* @core_info_compare_api_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @core_info_compare_api_version(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %89 [
    i32 133, label %13
    i32 128, label %23
    i32 130, label %33
    i32 129, label %47
    i32 132, label %61
    i32 131, label %75
  ]

13:                                               ; preds = %5
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %13
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %6, align 4
  br label %91

22:                                               ; preds = %17, %13
  br label %90

23:                                               ; preds = %5
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %32, label %31

31:                                               ; preds = %27, %23
  store i32 1, i32* %6, align 4
  br label %91

32:                                               ; preds = %27
  br label %90

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41, %33
  store i32 1, i32* %6, align 4
  br label %91

46:                                               ; preds = %41, %37
  br label %90

47:                                               ; preds = %5
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %47
  store i32 1, i32* %6, align 4
  br label %91

60:                                               ; preds = %55, %51
  br label %90

61:                                               ; preds = %5
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %61
  store i32 1, i32* %6, align 4
  br label %91

74:                                               ; preds = %69, %65
  br label %90

75:                                               ; preds = %5
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %83, %75
  store i32 1, i32* %6, align 4
  br label %91

88:                                               ; preds = %83, %79
  br label %90

89:                                               ; preds = %5
  br label %90

90:                                               ; preds = %89, %88, %74, %60, %46, %32, %22
  store i32 0, i32* %6, align 4
  br label %91

91:                                               ; preds = %90, %87, %73, %59, %45, %31, %21
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
