; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_webvttdec.c_read_ts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_webvttdec.c_read_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%u:%u:%u.%u\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%u:%u.%u\00", align 1
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ts(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %4, i32* %5, i32* %6, i32* %7)
  %10 = icmp eq i32 %9, 4
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = mul nsw i64 %13, 3600
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = mul nsw i64 %16, 60
  %18 = add nsw i64 %14, %17
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = mul nsw i64 %21, 1000
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %1
  %28 = load i8*, i8** %3, align 8
  %29 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %6, i32* %7)
  %30 = icmp eq i32 %29, 3
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %33, 60
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = mul nsw i64 %37, 1000
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %27
  %44 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %31, %11
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
