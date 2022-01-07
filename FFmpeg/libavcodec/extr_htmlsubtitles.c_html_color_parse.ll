; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_htmlsubtitles.c_html_color_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_htmlsubtitles.c_html_color_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"\22 >\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @html_color_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @html_color_parse(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %16, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 35
  br i1 %15, label %16, label %19

16:                                               ; preds = %8
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %7, align 4
  br label %8

19:                                               ; preds = %8
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @FFMAX(i32 0, i32 %21)
  %23 = load i8*, i8** %5, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %5, align 8
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcspn(i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @av_parse_color(i32* %26, i8* %27, i32 %29, i8* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %45

34:                                               ; preds = %19
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %36 = load i32, i32* %35, align 16
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %36, %39
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %42 = load i32, i32* %41, align 8
  %43 = shl i32 %42, 16
  %44 = or i32 %40, %43
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %33
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i64 @av_parse_color(i32*, i8*, i32, i8*) #1

declare dso_local i32 @strcspn(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
