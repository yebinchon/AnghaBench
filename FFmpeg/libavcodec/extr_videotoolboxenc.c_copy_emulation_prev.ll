; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_copy_emulation_prev.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_videotoolboxenc.c_copy_emulation_prev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i32, i64)* @copy_emulation_prev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_emulation_prev(i32* %0, i64 %1, i32* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = load i64, i64* %11, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  store i32* %22, i32** %15, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  store i32* %25, i32** %16, align 8
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %29, 2
  br label %32

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i32 [ %30, %28 ], [ 0, %31 ]
  store i32 %33, i32* %17, align 4
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %18, align 4
  br label %35

35:                                               ; preds = %58, %32
  %36 = load i32, i32* %18, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i32, i32* %18, align 4
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %11, align 8
  %43 = icmp ult i64 %41, %42
  br label %44

44:                                               ; preds = %39, %35
  %45 = phi i1 [ false, %35 ], [ %43, %39 ]
  br i1 %45, label %46, label %61

46:                                               ; preds = %44
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %18, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %12, align 4
  br label %57

56:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %56, %53
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %18, align 4
  br label %35

61:                                               ; preds = %44
  %62 = load i32, i32* %10, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32* %65, i32** %9, align 8
  %66 = load i32*, i32** %9, align 8
  store i32* %66, i32** %14, align 8
  br label %67

67:                                               ; preds = %108, %61
  %68 = load i32*, i32** %7, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = icmp ult i32* %68, %69
  br i1 %70, label %71, label %113

71:                                               ; preds = %67
  %72 = load i32, i32* %12, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = icmp sle i32 %76, 3
  %78 = zext i1 %77 to i32
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %74
  %82 = load i32*, i32** %9, align 8
  %83 = load i32*, i32** %15, align 8
  %84 = icmp ult i32* %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32*, i32** %9, align 8
  store i32 3, i32* %86, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %9, align 8
  br label %90

90:                                               ; preds = %87, %74
  store i32 0, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %71
  %92 = load i32*, i32** %9, align 8
  %93 = load i32*, i32** %15, align 8
  %94 = icmp ult i32* %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32*, i32** %7, align 8
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %95, %91
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %12, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %12, align 4
  br label %107

106:                                              ; preds = %99
  store i32 0, i32* %12, align 4
  br label %107

107:                                              ; preds = %106, %103
  br label %108

108:                                              ; preds = %107
  %109 = load i32*, i32** %7, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %7, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %9, align 8
  br label %67

113:                                              ; preds = %67
  %114 = load i32*, i32** %9, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %13, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ugt i32* %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %113
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %6, align 4
  br label %129

127:                                              ; preds = %113
  %128 = load i32, i32* %13, align 4
  store i32 %128, i32* %6, align 4
  br label %129

129:                                              ; preds = %127, %124
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
