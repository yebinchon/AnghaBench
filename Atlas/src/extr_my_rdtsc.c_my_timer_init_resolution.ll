; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_my_rdtsc.c_my_timer_init_resolution.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_my_rdtsc.c_my_timer_init_resolution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MY_TIMER_ITERATIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 ()*, i32)* @my_timer_init_resolution to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_timer_init_resolution(i32 ()* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 ()*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 ()* %0, i32 ()** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store i32 1000000, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %61, %2
  %14 = load i32, i32* %10, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @MY_TIMER_ITERATIONS, align 4
  %19 = mul nsw i32 %18, 10
  %20 = icmp slt i32 %17, %19
  br label %21

21:                                               ; preds = %16, %13
  %22 = phi i1 [ false, %13 ], [ %20, %16 ]
  br i1 %22, label %23, label %64

23:                                               ; preds = %21
  %24 = load i32 ()*, i32 ()** %4, align 8
  %25 = call i32 %24()
  store i32 %25, i32* %6, align 4
  %26 = load i32 ()*, i32 ()** %4, align 8
  %27 = call i32 %26()
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %7, align 4
  %37 = srem i32 %36, 1000
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = srem i32 %42, 1000000
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %45, %39
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %64

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %59, %23
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %9, align 4
  br label %13

64:                                               ; preds = %58, %21
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 3
  br i1 %66, label %67, label %78

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1000000, i32* %3, align 4
  br label %85

72:                                               ; preds = %67
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 1000, i32* %3, align 4
  br label %85

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77, %64
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %3, align 4
  br label %85

84:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %82, %76, %71
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
