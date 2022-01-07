; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_png_pass_row_shift.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_pngvalid.c_png_pass_row_shift.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@adam7 = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @png_pass_row_shift to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @png_pass_row_shift(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 -1, i32* %6, align 4
  store i32 8, i32* %7, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %72, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %75

13:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %68, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %71

17:                                               ; preds = %14
  %18 = load i32**, i32*** @adam7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %67

29:                                               ; preds = %17
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %6, align 4
  br label %66

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %65

39:                                               ; preds = %34
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %6, align 4
  br label %64

47:                                               ; preds = %39
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 8
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %51, %52
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %6, align 4
  br label %63

55:                                               ; preds = %47
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %57, %58
  %60 = icmp ne i32 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 255, i32* %2, align 4
  br label %89

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %50
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64, %38
  br label %66

66:                                               ; preds = %65, %32
  br label %67

67:                                               ; preds = %66, %17
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %14

71:                                               ; preds = %14
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %10

75:                                               ; preds = %10
  %76 = load i32, i32* %6, align 4
  %77 = icmp eq i32 %76, -1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 254, i32* %2, align 4
  br label %89

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  switch i32 %80, label %84 [
    i32 2, label %81
    i32 4, label %82
    i32 8, label %83
  ]

81:                                               ; preds = %79
  store i32 1, i32* %2, align 4
  br label %89

82:                                               ; preds = %79
  store i32 2, i32* %2, align 4
  br label %89

83:                                               ; preds = %79
  store i32 3, i32* %2, align 4
  br label %89

84:                                               ; preds = %79
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %7, align 4
  %87 = shl i32 %86, 8
  %88 = add nsw i32 %87, 253
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %85, %83, %82, %81, %78, %61
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
