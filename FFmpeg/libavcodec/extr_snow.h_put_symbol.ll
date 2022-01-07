; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.h_put_symbol.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow.h_put_symbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @put_symbol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_symbol(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %117

15:                                               ; preds = %4
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @FFABS(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @av_log2(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @FFMIN(i32 %20, i32 10)
  store i32 %21, i32* %12, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = call i32 @put_rac(i32* %22, i32* %24, i32 0)
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %38, %15
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i32*, i32** %5, align 8
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32, i32* %9, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @put_rac(i32* %31, i32* %36, i32 1)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %26

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %52, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32*, i32** %5, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = getelementptr inbounds i32, i32* %49, i64 9
  %51 = call i32 @put_rac(i32* %47, i32* %50, i32 1)
  br label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %42

55:                                               ; preds = %42
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @FFMIN(i32 %59, i32 9)
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  %63 = call i32 @put_rac(i32* %56, i32* %62, i32 0)
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %80, %55
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 22
  %74 = getelementptr inbounds i32, i32* %73, i64 9
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %75, %76
  %78 = and i32 %77, 1
  %79 = call i32 @put_rac(i32* %71, i32* %74, i32 %78)
  br label %80

80:                                               ; preds = %70
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %9, align 4
  br label %66

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %99, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp sge i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 22
  %91 = load i32, i32* %9, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %9, align 4
  %96 = ashr i32 %94, %95
  %97 = and i32 %96, 1
  %98 = call i32 @put_rac(i32* %88, i32* %93, i32 %97)
  br label %99

99:                                               ; preds = %87
  %100 = load i32, i32* %9, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %9, align 4
  br label %84

102:                                              ; preds = %84
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %102
  %106 = load i32*, i32** %5, align 8
  %107 = load i32*, i32** %6, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 11
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %7, align 4
  %113 = icmp slt i32 %112, 0
  %114 = zext i1 %113 to i32
  %115 = call i32 @put_rac(i32* %106, i32* %111, i32 %114)
  br label %116

116:                                              ; preds = %105, %102
  br label %122

117:                                              ; preds = %4
  %118 = load i32*, i32** %5, align 8
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = call i32 @put_rac(i32* %118, i32* %120, i32 1)
  br label %122

122:                                              ; preds = %117, %116
  ret void
}

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @put_rac(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
