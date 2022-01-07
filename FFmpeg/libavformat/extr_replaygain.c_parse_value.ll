; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_replaygain.c_parse_value.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_replaygain.c_parse_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c" \09\00", align 1
@INT32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @parse_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_value(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 10000, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %9, align 4
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strspn(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %18 = load i8*, i8** %4, align 8
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  store i8* %20, i8** %4, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 45
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 -1, i32* %9, align 4
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @strtol(i8* %27, i8** %6, i32 0)
  store i32 %28, i32* %10, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 46
  br i1 %33, label %34, label %59

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %45, %34
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = call i64 @av_isdigit(i8 signext %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %40, %35
  %44 = phi i1 [ false, %35 ], [ %42, %40 ]
  br i1 %44, label %45, label %58

45:                                               ; preds = %43
  %46 = load i32, i32* %7, align 4
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = sub nsw i32 %49, 48
  %51 = mul nsw i32 %46, %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sdiv i32 %54, 10
  store i32 %55, i32* %7, align 4
  %56 = load i8*, i8** %6, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %6, align 8
  br label %35

58:                                               ; preds = %43
  br label %59

59:                                               ; preds = %58, %26
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @abs(i32 %60) #3
  %62 = load i32, i32* @INT32_MAX, align 4
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %62, %63
  %65 = sdiv i32 %64, 100000
  %66 = icmp sgt i32 %61, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %3, align 4
  br label %76

69:                                               ; preds = %59
  %70 = load i32, i32* %10, align 4
  %71 = mul nsw i32 %70, 100000
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %72, %73
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %69, %67, %13
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @strspn(i8*, i8*) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @av_isdigit(i8 signext) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
