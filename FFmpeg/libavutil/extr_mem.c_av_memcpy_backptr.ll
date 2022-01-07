; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem.c_av_memcpy_backptr.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem.c_av_memcpy_backptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @av_memcpy_backptr(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 0, %10
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  store i32* %13, i32** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %130

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @memset(i32* %21, i32 %23, i32 %24)
  br label %130

26:                                               ; preds = %17
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32*, i32** %4, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @fill16(i32* %30, i32 %31)
  br label %129

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 3
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32*, i32** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @fill24(i32* %37, i32 %38)
  br label %128

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 4
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @fill32(i32* %44, i32 %45)
  br label %127

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 16
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %8, align 4
  br label %52

52:                                               ; preds = %56, %50
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %52
  %57 = load i32*, i32** %4, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @memcpy(i32* %57, i32* %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %4, align 8
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32* %64, i32** %4, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %8, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %8, align 4
  br label %52

70:                                               ; preds = %52
  %71 = load i32*, i32** %4, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @memcpy(i32* %71, i32* %72, i32 %73)
  br label %130

75:                                               ; preds = %47
  %76 = load i32, i32* %6, align 4
  %77 = icmp sge i32 %76, 8
  br i1 %77, label %78, label %93

78:                                               ; preds = %75
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %7, align 8
  %81 = call i32 @AV_COPY32U(i32* %79, i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32*, i32** %7, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = call i32 @AV_COPY32U(i32* %83, i32* %85)
  %87 = load i32*, i32** %7, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 8
  store i32* %88, i32** %7, align 8
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 8
  store i32* %90, i32** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 8
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %78, %75
  %94 = load i32, i32* %6, align 4
  %95 = icmp sge i32 %94, 4
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @AV_COPY32U(i32* %97, i32* %98)
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 4
  store i32* %101, i32** %7, align 8
  %102 = load i32*, i32** %4, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32* %103, i32** %4, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %104, 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %96, %93
  %107 = load i32, i32* %6, align 4
  %108 = icmp sge i32 %107, 2
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load i32*, i32** %4, align 8
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @AV_COPY16U(i32* %110, i32* %111)
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  store i32* %114, i32** %7, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 2
  store i32* %116, i32** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, 2
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %109, %106
  %120 = load i32, i32* %6, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load i32*, i32** %7, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %4, align 8
  store i32 %124, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %119
  br label %127

127:                                              ; preds = %126, %43
  br label %128

128:                                              ; preds = %127, %36
  br label %129

129:                                              ; preds = %128, %29
  br label %130

130:                                              ; preds = %16, %70, %129, %20
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fill16(i32*, i32) #1

declare dso_local i32 @fill24(i32*, i32) #1

declare dso_local i32 @fill32(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @AV_COPY32U(i32*, i32*) #1

declare dso_local i32 @AV_COPY16U(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
