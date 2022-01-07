; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_ff_http_averror.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_http.c_ff_http_averror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_HTTP_BAD_REQUEST = common dso_local global i32 0, align 4
@AVERROR_HTTP_UNAUTHORIZED = common dso_local global i32 0, align 4
@AVERROR_HTTP_FORBIDDEN = common dso_local global i32 0, align 4
@AVERROR_HTTP_NOT_FOUND = common dso_local global i32 0, align 4
@AVERROR_HTTP_OTHER_4XX = common dso_local global i32 0, align 4
@AVERROR_HTTP_SERVER_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_http_averror(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %15 [
    i32 400, label %7
    i32 401, label %9
    i32 403, label %11
    i32 404, label %13
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* @AVERROR_HTTP_BAD_REQUEST, align 4
  store i32 %8, i32* %3, align 4
  br label %31

9:                                                ; preds = %2
  %10 = load i32, i32* @AVERROR_HTTP_UNAUTHORIZED, align 4
  store i32 %10, i32* %3, align 4
  br label %31

11:                                               ; preds = %2
  %12 = load i32, i32* @AVERROR_HTTP_FORBIDDEN, align 4
  store i32 %12, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load i32, i32* @AVERROR_HTTP_NOT_FOUND, align 4
  store i32 %14, i32* %3, align 4
  br label %31

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp sge i32 %17, 400
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 499
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @AVERROR_HTTP_OTHER_4XX, align 4
  store i32 %23, i32* %3, align 4
  br label %31

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp sge i32 %25, 500
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @AVERROR_HTTP_SERVER_ERROR, align 4
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %27, %22, %13, %11, %9, %7
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
