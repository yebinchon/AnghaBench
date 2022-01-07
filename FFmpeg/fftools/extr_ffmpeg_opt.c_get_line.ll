; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_get_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg_opt.c_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Could not alloc buffer for reading preset.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*)* @get_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_line(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8, align 1
  store i32* %0, i32** %2, align 8
  %6 = call i64 @avio_open_dyn_buf(i32** %3)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @AV_LOG_FATAL, align 4
  %10 = call i32 @av_log(i32* null, i32 %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @exit_program(i32 1)
  br label %12

12:                                               ; preds = %8, %1
  br label %13

13:                                               ; preds = %24, %12
  %14 = load i32*, i32** %2, align 8
  %15 = call signext i8 @avio_r8(i32* %14)
  store i8 %15, i8* %5, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i8, i8* %5, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 10
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i1 [ false, %13 ], [ %21, %18 ]
  br i1 %23, label %24, label %28

24:                                               ; preds = %22
  %25 = load i32*, i32** %3, align 8
  %26 = load i8, i8* %5, align 1
  %27 = call i32 @avio_w8(i32* %25, i8 signext %26)
  br label %13

28:                                               ; preds = %22
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @avio_w8(i32* %29, i8 signext 0)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @avio_close_dyn_buf(i32* %31, i32** %4)
  %33 = load i32*, i32** %4, align 8
  ret i32* %33
}

declare dso_local i64 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local signext i8 @avio_r8(i32*) #1

declare dso_local i32 @avio_w8(i32*, i8 signext) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
