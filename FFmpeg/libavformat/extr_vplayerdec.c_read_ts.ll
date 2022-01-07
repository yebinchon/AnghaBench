; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vplayerdec.c_read_ts.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vplayerdec.c_read_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%d:%d:%d.%d%c%n\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%d:%d:%d%c%n\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c": =\00", align 1
@AV_NOPTS_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**)* @read_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_ts(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %11 = load i8**, i8*** %3, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %5, i32* %6, i32* %7, i32* %8, i8* %4, i32* %10)
  store i32 %13, i32* %9, align 4
  %14 = icmp sge i32 %13, 5
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load i8**, i8*** %3, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i8*, i8*, i32*, i32*, i32*, ...) @sscanf(i8* %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %5, i32* %6, i32* %7, i8* %4, i32* %10)
  store i32 %18, i32* %9, align 4
  %19 = icmp sge i32 %18, 4
  br i1 %19, label %20, label %51

20:                                               ; preds = %15, %1
  %21 = load i8, i8* %4, align 1
  %22 = call i64 @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = load i8**, i8*** %3, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = sext i32 %25 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %26, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = mul nsw i64 %31, 3600
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = mul nsw i64 %34, 60
  %36 = add nsw i64 %32, %35
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = mul nsw i64 %39, 100
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 5
  br i1 %42, label %43, label %44

43:                                               ; preds = %24
  br label %46

44:                                               ; preds = %24
  %45 = load i32, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %43
  %47 = phi i32 [ 0, %43 ], [ %45, %44 ]
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %40, %48
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %20, %15
  %52 = load i32, i32* @AV_NOPTS_VALUE, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %51, %46
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, ...) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
