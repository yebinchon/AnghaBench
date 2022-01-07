; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_bresenham.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_bresenham.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32*)* @bresenham to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bresenham(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  store i32 %28, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %33

29:                                               ; preds = %6
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %10, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %14, align 4
  store i32 -1, i32* %16, align 4
  br label %33

33:                                               ; preds = %29, %25
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %15, align 4
  store i32 1, i32* %17, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %15, align 4
  store i32 -1, i32* %17, align 4
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i32, i32* %14, align 4
  %47 = icmp sgt i32 %46, 999
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %15, align 4
  %50 = icmp sgt i32 %49, 999
  br i1 %50, label %51, label %53

51:                                               ; preds = %48, %45
  %52 = load i32, i32* @INT_MAX, align 4
  store i32 %52, i32* %7, align 4
  br label %153

53:                                               ; preds = %48
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %105

57:                                               ; preds = %53
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %14, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %20, align 4
  %64 = load i32, i32* %20, align 4
  %65 = load i32, i32* %14, align 4
  %66 = sub nsw i32 %64, %65
  store i32 %66, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %67

67:                                               ; preds = %99, %57
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %102

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = load i32*, i32** %12, align 8
  %74 = load i32, i32* %21, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %21, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %20, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %71
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %20, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %20, align 4
  br label %98

91:                                               ; preds = %71
  %92 = load i32, i32* %19, align 4
  %93 = load i32, i32* %20, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %20, align 4
  %95 = load i32, i32* %17, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %91, %87
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %21, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %21, align 4
  br label %67

102:                                              ; preds = %67
  %103 = load i32, i32* %14, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %7, align 4
  br label %153

105:                                              ; preds = %53
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %15, align 4
  %111 = sub nsw i32 %109, %110
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %20, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %112, %113
  store i32 %114, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %115

115:                                              ; preds = %147, %105
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %15, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %115
  %120 = load i32, i32* %8, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %21, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32*, i32** %13, align 8
  %127 = load i32, i32* %21, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %125, i32* %129, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %20, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %119
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %20, align 4
  %138 = add nsw i32 %137, %136
  store i32 %138, i32* %20, align 4
  br label %146

139:                                              ; preds = %119
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* %20, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %20, align 4
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %8, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %8, align 4
  br label %146

146:                                              ; preds = %139, %135
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %21, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %21, align 4
  br label %115

150:                                              ; preds = %115
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %7, align 4
  br label %153

153:                                              ; preds = %150, %102, %51
  %154 = load i32, i32* %7, align 4
  ret i32 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
