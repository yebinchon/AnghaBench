; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_eval_binary_op_ull.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_eval_binary_op_ull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @eval_binary_op_ull(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %97 [
    i32 133, label %9
    i32 141, label %13
    i32 134, label %23
    i32 142, label %33
    i32 137, label %37
    i32 130, label %41
    i32 143, label %45
    i32 129, label %49
    i32 131, label %53
    i32 128, label %57
    i32 140, label %61
    i32 132, label %67
    i32 136, label %73
    i32 135, label %79
    i32 139, label %85
    i32 138, label %91
  ]

9:                                                ; preds = %3
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = mul i64 %10, %11
  store i64 %12, i64* %4, align 8
  br label %100

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* %7, align 8
  %19 = udiv i64 %17, %18
  br label %21

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20, %16
  %22 = phi i64 [ %19, %16 ], [ 0, %20 ]
  store i64 %22, i64* %4, align 8
  br label %100

23:                                               ; preds = %3
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = urem i64 %27, %28
  br label %31

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %26
  %32 = phi i64 [ %29, %26 ], [ 0, %30 ]
  store i64 %32, i64* %4, align 8
  br label %100

33:                                               ; preds = %3
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* %7, align 8
  %36 = and i64 %34, %35
  store i64 %36, i64* %4, align 8
  br label %100

37:                                               ; preds = %3
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = shl i64 %38, %39
  store i64 %40, i64* %4, align 8
  br label %100

41:                                               ; preds = %3
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = lshr i64 %42, %43
  store i64 %44, i64* %4, align 8
  br label %100

45:                                               ; preds = %3
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* %7, align 8
  %48 = add i64 %46, %47
  store i64 %48, i64* %4, align 8
  br label %100

49:                                               ; preds = %3
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = sub i64 %50, %51
  store i64 %52, i64* %4, align 8
  br label %100

53:                                               ; preds = %3
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = or i64 %54, %55
  store i64 %56, i64* %4, align 8
  br label %100

57:                                               ; preds = %3
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %7, align 8
  %60 = xor i64 %58, %59
  store i64 %60, i64* %4, align 8
  br label %100

61:                                               ; preds = %3
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %4, align 8
  br label %100

67:                                               ; preds = %3
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %4, align 8
  br label %100

73:                                               ; preds = %3
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* %7, align 8
  %76 = icmp ult i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  store i64 %78, i64* %4, align 8
  br label %100

79:                                               ; preds = %3
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = icmp ule i64 %80, %81
  %83 = zext i1 %82 to i32
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %4, align 8
  br label %100

85:                                               ; preds = %3
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ugt i64 %86, %87
  %89 = zext i1 %88 to i32
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %4, align 8
  br label %100

91:                                               ; preds = %3
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = icmp uge i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  store i64 %96, i64* %4, align 8
  br label %100

97:                                               ; preds = %3
  %98 = call i32 @assert(i32 0)
  br label %99

99:                                               ; preds = %97
  store i64 0, i64* %4, align 8
  br label %100

100:                                              ; preds = %99, %91, %85, %79, %73, %67, %61, %57, %53, %49, %45, %41, %37, %33, %31, %21, %9
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
