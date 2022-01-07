; ModuleID = '/home/carl/AnghaBench/capstone/extr_SStream.c_printInt32.c'
source_filename = "/home/carl/AnghaBench/capstone/extr_SStream.c_printInt32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HEX_THRESHOLD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"0x%x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@INT_MIN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"-0x%x\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"-%u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printInt32(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @HEX_THRESHOLD, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %7
  %12 = load i32*, i32** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @SStream_concat(i32* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %13)
  br label %19

15:                                               ; preds = %7
  %16 = load i32*, i32** %3, align 8
  %17 = load i64, i64* %4, align 8
  %18 = call i32 @SStream_concat(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i64 %17)
  br label %19

19:                                               ; preds = %15, %11
  br label %45

20:                                               ; preds = %2
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @HEX_THRESHOLD, align 8
  %23 = sub nsw i64 0, %22
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %20
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @INT_MIN, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32*, i32** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @SStream_concat(i32* %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %31)
  br label %38

33:                                               ; preds = %25
  %34 = load i32*, i32** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = sub nsw i64 0, %35
  %37 = call i32 @SStream_concat(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %33, %29
  br label %44

39:                                               ; preds = %20
  %40 = load i32*, i32** %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub nsw i64 0, %41
  %43 = call i32 @SStream_concat(i32* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %42)
  br label %44

44:                                               ; preds = %39, %38
  br label %45

45:                                               ; preds = %44, %19
  ret void
}

declare dso_local i32 @SStream_concat(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
