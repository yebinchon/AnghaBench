; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_isLegalUTF8.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/utils/extr_ConvertUTF.c_isLegalUTF8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @isLegalUTF8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isLegalUTF8(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  store i32* %11, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %13 [
    i32 4, label %14
    i32 3, label %24
    i32 2, label %34
    i32 1, label %69
  ]

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %85

14:                                               ; preds = %2
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 -1
  store i32* %16, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = icmp slt i32 %17, 128
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 191
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %14
  store i32 0, i32* %3, align 4
  br label %85

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %2, %23
  %25 = load i32*, i32** %7, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 -1
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %6, align 4
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 191
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %24
  store i32 0, i32* %3, align 4
  br label %85

33:                                               ; preds = %29
  br label %34

34:                                               ; preds = %2, %33
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 -1
  store i32* %36, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = icmp sgt i32 %37, 191
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %85

40:                                               ; preds = %34
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %63 [
    i32 224, label %43
    i32 237, label %48
    i32 240, label %53
    i32 244, label %58
  ]

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 160
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %85

47:                                               ; preds = %43
  br label %68

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 159
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %85

52:                                               ; preds = %48
  br label %68

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 144
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %85

57:                                               ; preds = %53
  br label %68

58:                                               ; preds = %40
  %59 = load i32, i32* %6, align 4
  %60 = icmp sgt i32 %59, 143
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %85

62:                                               ; preds = %58
  br label %68

63:                                               ; preds = %40
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 128
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %85

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %62, %57, %52, %47
  br label %69

69:                                               ; preds = %2, %68
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %71, 128
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load i32*, i32** %4, align 8
  %75 = load i32, i32* %74, align 4
  %76 = icmp slt i32 %75, 194
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %85

78:                                               ; preds = %73, %69
  br label %79

79:                                               ; preds = %78
  %80 = load i32*, i32** %4, align 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp sgt i32 %81, 244
  br i1 %82, label %83, label %84

83:                                               ; preds = %79
  store i32 0, i32* %3, align 4
  br label %85

84:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %83, %77, %66, %61, %56, %51, %46, %39, %32, %22, %13
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
