; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elbg.c_avpriv_init_elbg.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_elbg.c_avpriv_init_elbg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@BIG_PRIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avpriv_init_elbg(i32* %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store i32* %0, i32** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %20, align 4
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %14, align 4
  %24 = mul nsw i32 24, %23
  %25 = icmp sgt i32 %22, %24
  br i1 %25, label %26, label %102

26:                                               ; preds = %8
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %12, align 4
  %29 = sdiv i32 %28, 8
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = call i32* @av_malloc_array(i32 %27, i32 %32)
  store i32* %33, i32** %21, align 8
  %34 = load i32*, i32** %21, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %26
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %9, align 4
  br label %135

39:                                               ; preds = %26
  store i32 0, i32* %18, align 4
  br label %40

40:                                               ; preds = %68, %39
  %41 = load i32, i32* %18, align 4
  %42 = load i32, i32* %12, align 4
  %43 = sdiv i32 %42, 8
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %71

45:                                               ; preds = %40
  %46 = load i32, i32* %18, align 4
  %47 = load i32, i32* @BIG_PRIME, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %12, align 4
  %50 = srem i32 %48, %49
  store i32 %50, i32* %19, align 4
  %51 = load i32*, i32** %21, align 8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %11, align 4
  %54 = mul nsw i32 %52, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load i32*, i32** %10, align 8
  %58 = load i32, i32* %19, align 4
  %59 = load i32, i32* %11, align 4
  %60 = mul nsw i32 %58, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %11, align 4
  %64 = sext i32 %63 to i64
  %65 = mul i64 %64, 4
  %66 = trunc i64 %65 to i32
  %67 = call i32 @memcpy(i32* %56, i32* %62, i32 %66)
  br label %68

68:                                               ; preds = %45
  %69 = load i32, i32* %18, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %18, align 4
  br label %40

71:                                               ; preds = %40
  %72 = load i32*, i32** %21, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = sdiv i32 %74, 8
  %76 = load i32*, i32** %13, align 8
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %15, align 4
  %79 = mul nsw i32 2, %78
  %80 = load i32*, i32** %16, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = call i32 @avpriv_init_elbg(i32* %72, i32 %73, i32 %75, i32* %76, i32 %77, i32 %79, i32* %80, i32* %81)
  store i32 %82, i32* %20, align 4
  %83 = load i32, i32* %20, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %71
  %86 = call i32 @av_freep(i32** %21)
  %87 = load i32, i32* %20, align 4
  store i32 %87, i32* %9, align 4
  br label %135

88:                                               ; preds = %71
  %89 = load i32*, i32** %21, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %12, align 4
  %92 = sdiv i32 %91, 8
  %93 = load i32*, i32** %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %15, align 4
  %96 = mul nsw i32 2, %95
  %97 = load i32*, i32** %16, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = call i32 @avpriv_do_elbg(i32* %89, i32 %90, i32 %92, i32* %93, i32 %94, i32 %96, i32* %97, i32* %98)
  store i32 %99, i32* %20, align 4
  %100 = load i32*, i32** %21, align 8
  %101 = call i32 @av_free(i32* %100)
  br label %133

102:                                              ; preds = %8
  store i32 0, i32* %18, align 4
  br label %103

103:                                              ; preds = %129, %102
  %104 = load i32, i32* %18, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %132

107:                                              ; preds = %103
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %18, align 4
  %110 = load i32, i32* %11, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32*, i32** %10, align 8
  %115 = load i32, i32* %18, align 4
  %116 = load i32, i32* @BIG_PRIME, align 4
  %117 = mul nsw i32 %115, %116
  %118 = load i32, i32* %12, align 4
  %119 = srem i32 %117, %118
  %120 = load i32, i32* %11, align 4
  %121 = mul nsw i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %114, i64 %122
  %124 = load i32, i32* %11, align 4
  %125 = sext i32 %124 to i64
  %126 = mul i64 %125, 4
  %127 = trunc i64 %126 to i32
  %128 = call i32 @memcpy(i32* %113, i32* %123, i32 %127)
  br label %129

129:                                              ; preds = %107
  %130 = load i32, i32* %18, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %18, align 4
  br label %103

132:                                              ; preds = %103
  br label %133

133:                                              ; preds = %132, %88
  %134 = load i32, i32* %20, align 4
  store i32 %134, i32* %9, align 4
  br label %135

135:                                              ; preds = %133, %85, %36
  %136 = load i32, i32* %9, align 4
  ret i32 %136
}

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_freep(i32**) #1

declare dso_local i32 @avpriv_do_elbg(i32*, i32, i32, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
