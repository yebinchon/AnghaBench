; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gopher.c_gopher_connect.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gopher.c_gopher_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Gopher protocol type '%c' not supported yet!\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s\0D\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @gopher_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gopher_connect(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [1024 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @EINVAL, align 4
  %12 = call i32 @AVERROR(i32 %11)
  store i32 %12, i32* %3, align 4
  br label %49

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  switch i32 %17, label %27 [
    i32 53, label %18
    i32 57, label %18
  ]

18:                                               ; preds = %13, %13
  %19 = load i8*, i8** %5, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 47)
  store i8* %20, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = call i32 @AVERROR(i32 %24)
  store i32 %25, i32* %3, align 4
  br label %49

26:                                               ; preds = %18
  br label %35

27:                                               ; preds = %13
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @AV_LOG_WARNING, align 4
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32 @av_log(i32* %28, i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8 signext %31)
  %33 = load i32, i32* @EINVAL, align 4
  %34 = call i32 @AVERROR(i32 %33)
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %26
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %37 = load i8*, i8** %5, align 8
  %38 = call i32 @snprintf(i8* %36, i32 1024, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %42 = call i32 @strlen(i8* %41)
  %43 = call i64 @gopher_write(i32* %39, i8* %40, i32 %42)
  %44 = icmp slt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @EIO, align 4
  %47 = call i32 @AVERROR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %49

48:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %45, %27, %23, %10
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @gopher_write(i32*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
