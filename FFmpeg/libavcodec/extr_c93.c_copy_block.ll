; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_c93.c_copy_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_c93.c_copy_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIDTH = common dso_local global i32 0, align 4
@HEIGHT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"invalid offset %d during C93 decoding\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32, i32)* @copy_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_block(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @WIDTH, align 4
  %22 = srem i32 %20, %21
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @WIDTH, align 4
  %25 = sdiv i32 %23, %24
  store i32 %25, i32* %17, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %15, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @WIDTH, align 4
  %30 = sub nsw i32 %28, %29
  store i32 %30, i32* %18, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %108

34:                                               ; preds = %6
  %35 = load i32, i32* %17, align 4
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* @HEIGHT, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @AV_LOG_ERROR, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @av_log(i32* %41, i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %7, align 4
  br label %108

46:                                               ; preds = %34
  %47 = load i32, i32* %18, align 4
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %46
  %50 = load i32, i32* %18, align 4
  %51 = load i32, i32* %15, align 4
  %52 = sub nsw i32 %51, %50
  store i32 %52, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %53

53:                                               ; preds = %76, %49
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = mul nsw i32 %59, %60
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32*, i32** %10, align 8
  %67 = load i32, i32* %17, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %66, i64 %72
  %74 = load i32, i32* %18, align 4
  %75 = call i32 @memcpy(i32* %65, i32* %73, i32 %74)
  br label %76

76:                                               ; preds = %57
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  br label %53

79:                                               ; preds = %53
  br label %80

80:                                               ; preds = %79, %46
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %104, %80
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %107

85:                                               ; preds = %81
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %14, align 4
  %88 = load i32, i32* %13, align 4
  %89 = mul nsw i32 %87, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %93, %94
  %96 = load i32, i32* %13, align 4
  %97 = mul nsw i32 %95, %96
  %98 = load i32, i32* %16, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %92, i64 %100
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @memcpy(i32* %91, i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %85
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %81

107:                                              ; preds = %81
  store i32 0, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %40, %33
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
