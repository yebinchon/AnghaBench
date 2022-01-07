; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_adler32.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/tests/extr_adler32.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEN = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@START_TIMER = common dso_local global i32 0, align 4
@checksum = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"adler\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%X (expected 50E6E508)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* @LEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %7, align 8
  %12 = alloca i32, i64 %10, align 16
  store i64 %10, i64* %8, align 8
  %13 = load i32, i32* @AV_LOG_DEBUG, align 4
  %14 = call i32 @av_log_set_level(i32 %13)
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %30, %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = mul nsw i32 %20, %21
  %23 = ashr i32 %22, 3
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 123, %24
  %26 = add nsw i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %12, i64 %28
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %15

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 1
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %51, %42
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 1000
  br i1 %45, label %46, label %54

46:                                               ; preds = %43
  %47 = load i32, i32* @START_TIMER, align 4
  %48 = load i32, i32* @LEN, align 4
  %49 = call i32 @av_adler32_update(i32 1, i32* %12, i32 %48)
  store i32 %49, i32* @checksum, align 4
  %50 = call i32 @STOP_TIMER(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %43

54:                                               ; preds = %43
  br label %58

55:                                               ; preds = %36, %33
  %56 = load i32, i32* @LEN, align 4
  %57 = call i32 @av_adler32_update(i32 1, i32* %12, i32 %56)
  store i32 %57, i32* @checksum, align 4
  br label %58

58:                                               ; preds = %55, %54
  %59 = load i32, i32* @AV_LOG_DEBUG, align 4
  %60 = load i32, i32* @checksum, align 4
  %61 = call i32 @av_log(i32* null, i32 %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @checksum, align 4
  %63 = icmp eq i32 %62, 1357309192
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 0, i32 1
  store i32 %65, i32* %3, align 4
  %66 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_log_set_level(i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @av_adler32_update(i32, i32*, i32) #2

declare dso_local i32 @STOP_TIMER(i8*) #2

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
