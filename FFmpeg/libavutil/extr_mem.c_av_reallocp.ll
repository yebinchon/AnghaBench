; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem.c_av_reallocp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_mem.c_av_reallocp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_reallocp(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @av_freep(i8* %10)
  store i32 0, i32* %3, align 4
  br label %30

12:                                               ; preds = %2
  %13 = bitcast i8** %6 to i8*
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to i8**
  %16 = call i32 @memcpy(i8* %13, i8** %15, i32 8)
  %17 = load i8*, i8** %6, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i8* @av_realloc(i8* %17, i64 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %12
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @av_freep(i8* %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = call i32 @AVERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %12
  %28 = load i8*, i8** %4, align 8
  %29 = call i32 @memcpy(i8* %28, i8** %6, i32 8)
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %27, %22, %9
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @av_freep(i8*) #1

declare dso_local i32 @memcpy(i8*, i8**, i32) #1

declare dso_local i8* @av_realloc(i8*, i64) #1

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
