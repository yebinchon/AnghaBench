; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_hex_log.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_omadec.c_hex_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i8*, i32*, i32)* @hex_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hex_log(i32* %0, i32 %1, i8* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [33 x i8], align 16
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = call i32 @FFMIN(i32 %12, i32 16)
  store i32 %13, i32* %10, align 4
  %14 = call i32 (...) @av_log_get_level()
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %32

18:                                               ; preds = %5
  %19 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 0
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @ff_data_to_hex(i8* %19, i32* %20, i32 %21, i32 1)
  %23 = load i32, i32* %10, align 4
  %24 = shl i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 %25
  store i8 0, i8* %26, align 1
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds [33 x i8], [33 x i8]* %11, i64 0, i64 0
  %31 = call i32 @av_log(i32* %27, i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_log_get_level(...) #1

declare dso_local i32 @ff_data_to_hex(i8*, i32*, i32, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
