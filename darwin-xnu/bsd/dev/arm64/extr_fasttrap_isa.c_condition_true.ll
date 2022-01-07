; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fasttrap_isa.c_condition_true.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_fasttrap_isa.c_condition_true.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSR_ZF = common dso_local global i32 0, align 4
@PSR_NF = common dso_local global i32 0, align 4
@PSR_CF = common dso_local global i32 0, align 4
@PSR_VF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @condition_true to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @condition_true(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @PSR_ZF, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @PSR_NF, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PSR_CF, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PSR_VF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %3, align 4
  switch i32 %34, label %114 [
    i32 0, label %35
    i32 1, label %37
    i32 2, label %42
    i32 3, label %44
    i32 4, label %49
    i32 5, label %51
    i32 6, label %56
    i32 7, label %58
    i32 8, label %63
    i32 9, label %73
    i32 10, label %82
    i32 11, label %87
    i32 12, label %92
    i32 13, label %102
    i32 14, label %112
    i32 15, label %113
  ]

35:                                               ; preds = %2
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %5, align 4
  br label %114

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %5, align 4
  br label %114

42:                                               ; preds = %2
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %5, align 4
  br label %114

44:                                               ; preds = %2
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %5, align 4
  br label %114

49:                                               ; preds = %2
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %5, align 4
  br label %114

51:                                               ; preds = %2
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %5, align 4
  br label %114

56:                                               ; preds = %2
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %5, align 4
  br label %114

58:                                               ; preds = %2
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %114

63:                                               ; preds = %2
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  %69 = xor i1 %68, true
  br label %70

70:                                               ; preds = %66, %63
  %71 = phi i1 [ false, %63 ], [ %69, %66 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %5, align 4
  br label %114

73:                                               ; preds = %2
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %76, %73
  %80 = phi i1 [ true, %73 ], [ %78, %76 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %5, align 4
  br label %114

82:                                               ; preds = %2
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %83, %84
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %5, align 4
  br label %114

87:                                               ; preds = %2
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp ne i32 %88, %89
  %91 = zext i1 %90 to i32
  store i32 %91, i32* %5, align 4
  br label %114

92:                                               ; preds = %2
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %96, %97
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ false, %92 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32
  store i32 %101, i32* %5, align 4
  br label %114

102:                                              ; preds = %2
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %106, %107
  br label %109

109:                                              ; preds = %105, %102
  %110 = phi i1 [ true, %102 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %5, align 4
  br label %114

112:                                              ; preds = %2
  store i32 1, i32* %5, align 4
  br label %114

113:                                              ; preds = %2
  store i32 1, i32* %5, align 4
  br label %114

114:                                              ; preds = %2, %113, %112, %109, %99, %87, %82, %79, %70, %58, %56, %51, %49, %44, %42, %37, %35
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
