; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_layouts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_cmdutils.c_show_layouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [49 x i8] c"Individual channels:\0ANAME           DESCRIPTION\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%-14s %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\0AStandard channel layouts:\0ANAME           DECOMPOSITION\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%-14s \00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @show_layouts(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %30, %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 63
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = shl i32 1, %17
  %19 = call i8* @av_get_channel_name(i32 %18)
  store i8* %19, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %30

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  %25 = shl i32 1, %24
  %26 = call i8* @av_get_channel_description(i32 %25)
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %27, i8* %28)
  br label %30

30:                                               ; preds = %23, %22
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  br label %13

33:                                               ; preds = %13
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %72, %33
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @av_get_standard_channel_layout(i32 %36, i32* %8, i8** %10)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %75

40:                                               ; preds = %35
  %41 = load i8*, i8** %10, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %71

43:                                               ; preds = %40
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %44)
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %66, %43
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = sub nsw i32 %56, 1
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %62 = load i32, i32* %9, align 4
  %63 = call i8* @av_get_channel_name(i32 %62)
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* %61, i8* %63)
  br label %65

65:                                               ; preds = %54, %49
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %67, 1
  store i32 %68, i32* %9, align 4
  br label %46

69:                                               ; preds = %46
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %40
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %35

75:                                               ; preds = %35
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @av_get_channel_name(i32) #1

declare dso_local i8* @av_get_channel_description(i32) #1

declare dso_local i32 @av_get_standard_channel_layout(i32, i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
