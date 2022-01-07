; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_PixelIsSpecialPriority.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_PixelIsSpecialPriority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PixelIsSpecialPriority(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 15
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 1
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %11
  store i32 1, i32* %3, align 4
  br label %104

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 2
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 3
  br i1 %28, label %29, label %30

29:                                               ; preds = %26, %23
  store i32 1, i32* %3, align 4
  br label %104

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %30, %19
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 5
  br i1 %40, label %41, label %42

41:                                               ; preds = %38, %35
  store i32 1, i32* %3, align 4
  br label %104

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 6
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 7
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47
  store i32 1, i32* %3, align 4
  br label %104

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54, %43
  %56 = load i32, i32* %4, align 4
  %57 = and i32 %56, 16
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 9
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %59
  store i32 1, i32* %3, align 4
  br label %104

66:                                               ; preds = %62
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  %76 = icmp eq i32 %75, 11
  br i1 %76, label %77, label %78

77:                                               ; preds = %74, %71
  store i32 1, i32* %3, align 4
  br label %104

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %78, %67
  %80 = load i32, i32* %4, align 4
  %81 = and i32 %80, 64
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load i32, i32* %5, align 4
  %85 = icmp eq i32 %84, 12
  br i1 %85, label %89, label %86

86:                                               ; preds = %83
  %87 = load i32, i32* %5, align 4
  %88 = icmp eq i32 %87, 13
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %83
  store i32 1, i32* %3, align 4
  br label %104

90:                                               ; preds = %86
  br label %91

91:                                               ; preds = %90, %79
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 128
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load i32, i32* %5, align 4
  %97 = icmp eq i32 %96, 14
  br i1 %97, label %101, label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %5, align 4
  %100 = icmp eq i32 %99, 15
  br i1 %100, label %101, label %102

101:                                              ; preds = %98, %95
  store i32 1, i32* %3, align 4
  br label %104

102:                                              ; preds = %98
  br label %103

103:                                              ; preds = %102, %91
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %101, %89, %77, %65, %53, %41, %29, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
