; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_filters.c_ff_acelp_interpolate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_filters.c_ff_acelp_interpolate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"overflow that would need clipping in ff_acelp_interpolate()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_acelp_interpolate(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  store i32 %6, i32* %14, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %7
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %21, %7
  %26 = phi i1 [ false, %7 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @av_assert1(i32 %27)
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %95, %25
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* %14, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %98

33:                                               ; preds = %29
  store i32 0, i32* %17, align 4
  store i32 16384, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %38, %33
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %78

38:                                               ; preds = %34
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = add nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = load i32, i32* %17, align 4
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %45, %52
  %54 = load i32, i32* %18, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %17, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %16, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %16, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %17, align 4
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = mul nsw i32 %67, %74
  %76 = load i32, i32* %18, align 4
  %77 = add nsw i32 %76, %75
  store i32 %77, i32* %18, align 4
  br label %34

78:                                               ; preds = %34
  %79 = load i32, i32* %18, align 4
  %80 = ashr i32 %79, 15
  %81 = call i32 @av_clip_int16(i32 %80)
  %82 = load i32, i32* %18, align 4
  %83 = ashr i32 %82, 15
  %84 = icmp ne i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load i32, i32* @AV_LOG_WARNING, align 4
  %87 = call i32 @av_log(i32* null, i32 %86, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %78
  %89 = load i32, i32* %18, align 4
  %90 = ashr i32 %89, 15
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %88
  %96 = load i32, i32* %15, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %15, align 4
  br label %29

98:                                               ; preds = %29
  ret void
}

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @av_clip_int16(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
