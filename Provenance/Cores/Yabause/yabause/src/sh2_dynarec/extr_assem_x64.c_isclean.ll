; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_isclean.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_isclean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isclean(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = inttoptr i64 %5 to i32*
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp eq i32 %9, 184
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 184
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %92

17:                                               ; preds = %11
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 5
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 187
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 1, i32* %2, align 4
  br label %92

23:                                               ; preds = %17
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 10
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 185
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %2, align 4
  br label %92

29:                                               ; preds = %23
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 15
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 65
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %92

35:                                               ; preds = %29
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 16
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 188
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %92

41:                                               ; preds = %35
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 21
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 232
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  store i32 1, i32* %2, align 4
  br label %92

47:                                               ; preds = %41
  br label %91

48:                                               ; preds = %1
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 72
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 1, i32* %2, align 4
  br label %92

54:                                               ; preds = %48
  %55 = load i32*, i32** %4, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 184
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 1, i32* %2, align 4
  br label %92

60:                                               ; preds = %54
  %61 = load i32*, i32** %4, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 10
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 187
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  store i32 1, i32* %2, align 4
  br label %92

66:                                               ; preds = %60
  %67 = load i32*, i32** %4, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 15
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 185
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 1, i32* %2, align 4
  br label %92

72:                                               ; preds = %66
  %73 = load i32*, i32** %4, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 20
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 65
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  store i32 1, i32* %2, align 4
  br label %92

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 21
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 188
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 1, i32* %2, align 4
  br label %92

84:                                               ; preds = %78
  %85 = load i32*, i32** %4, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 26
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 232
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 1, i32* %2, align 4
  br label %92

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %47
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %89, %83, %77, %71, %65, %59, %53, %46, %40, %34, %28, %22, %16
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
