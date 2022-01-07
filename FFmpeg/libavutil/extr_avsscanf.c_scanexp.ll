; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_scanexp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avsscanf.c_scanexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LLONG_MIN = common dso_local global i64 0, align 8
@INT_MAX = common dso_local global i32 0, align 4
@LLONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32)* @scanexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @scanexp(i32* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @shgetc(i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = icmp eq i32 %15, 45
  br i1 %16, label %17, label %33

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 45
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @shgetc(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 48
  %25 = icmp uge i32 %24, 10
  br i1 %25, label %26, label %32

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @shunget(i32* %30)
  br label %32

32:                                               ; preds = %29, %26, %17
  br label %33

33:                                               ; preds = %32, %14
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %34, 48
  %36 = icmp uge i32 %35, 10
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @shunget(i32* %38)
  %40 = load i64, i64* @LLONG_MIN, align 8
  store i64 %40, i64* %3, align 8
  br label %108

41:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 48
  %45 = icmp ult i32 %44, 10
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @INT_MAX, align 4
  %49 = sdiv i32 %48, 10
  %50 = icmp slt i32 %47, %49
  br label %51

51:                                               ; preds = %46, %42
  %52 = phi i1 [ false, %42 ], [ %50, %46 ]
  br i1 %52, label %53, label %62

53:                                               ; preds = %51
  %54 = load i32, i32* %7, align 4
  %55 = mul nsw i32 10, %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  %58 = sub nsw i32 %57, 48
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %53
  %60 = load i32*, i32** %4, align 8
  %61 = call i32 @shgetc(i32* %60)
  store i32 %61, i32* %6, align 4
  br label %42

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %8, align 8
  br label %65

65:                                               ; preds = %84, %62
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 48
  %68 = icmp ult i32 %67, 10
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @LLONG_MAX, align 4
  %72 = sdiv i32 %71, 100
  %73 = sext i32 %72 to i64
  %74 = icmp slt i64 %70, %73
  br label %75

75:                                               ; preds = %69, %65
  %76 = phi i1 [ false, %65 ], [ %74, %69 ]
  br i1 %76, label %77, label %87

77:                                               ; preds = %75
  %78 = load i64, i64* %8, align 8
  %79 = mul nsw i64 10, %78
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = sub nsw i64 %82, 48
  store i64 %83, i64* %8, align 8
  br label %84

84:                                               ; preds = %77
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @shgetc(i32* %85)
  store i32 %86, i32* %6, align 4
  br label %65

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %93, %87
  %89 = load i32, i32* %6, align 4
  %90 = sub nsw i32 %89, 48
  %91 = icmp ult i32 %90, 10
  br i1 %91, label %92, label %96

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92
  %94 = load i32*, i32** %4, align 8
  %95 = call i32 @shgetc(i32* %94)
  store i32 %95, i32* %6, align 4
  br label %88

96:                                               ; preds = %88
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @shunget(i32* %97)
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %96
  %102 = load i64, i64* %8, align 8
  %103 = sub nsw i64 0, %102
  br label %106

104:                                              ; preds = %96
  %105 = load i64, i64* %8, align 8
  br label %106

106:                                              ; preds = %104, %101
  %107 = phi i64 [ %103, %101 ], [ %105, %104 ]
  store i64 %107, i64* %3, align 8
  br label %108

108:                                              ; preds = %106, %37
  %109 = load i64, i64* %3, align 8
  ret i64 %109
}

declare dso_local i32 @shgetc(i32*) #1

declare dso_local i32 @shunget(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
