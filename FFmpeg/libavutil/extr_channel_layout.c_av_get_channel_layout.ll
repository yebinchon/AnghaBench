; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_channel_layout.c_av_get_channel_layout.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_channel_layout.c_av_get_channel_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_get_channel_layout(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strlen(i8* %10)
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %9, i64 %12
  store i8* %13, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load i8*, i8** %3, align 8
  store i8* %14, i8** %4, align 8
  br label %15

15:                                               ; preds = %57, %1
  %16 = load i8*, i8** %4, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp ult i8* %16, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %15
  %20 = load i8*, i8** %4, align 8
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %38, %19
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ult i8* %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 43
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i8*, i8** %5, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 124
  br label %35

35:                                               ; preds = %30, %25, %21
  %36 = phi i1 [ false, %25 ], [ false, %21 ], [ %34, %30 ]
  br i1 %36, label %37, label %41

37:                                               ; preds = %35
  br label %38

38:                                               ; preds = %37
  %39 = load i8*, i8** %5, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %5, align 8
  br label %21

41:                                               ; preds = %35
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %4, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  %49 = call i32 @get_channel_layout_single(i8* %42, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %62

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  store i8* %59, i8** %4, align 8
  br label %15

60:                                               ; preds = %15
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %60, %52
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @get_channel_layout_single(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
