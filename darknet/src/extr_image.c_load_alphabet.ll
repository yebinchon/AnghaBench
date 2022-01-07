; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_image.c_load_alphabet.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_image.c_load_alphabet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"data/labels/%d_%d.png\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @load_alphabet() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32**, align 8
  %5 = alloca [256 x i8], align 16
  store i32 8, i32* %3, align 4
  %6 = call i8* @calloc(i32 8, i32 4)
  %7 = bitcast i8* %6 to i32**
  store i32** %7, i32*** %4, align 8
  store i32 0, i32* %2, align 4
  br label %8

8:                                                ; preds = %40, %0
  %9 = load i32, i32* %2, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %43

11:                                               ; preds = %8
  %12 = call i8* @calloc(i32 128, i32 4)
  %13 = bitcast i8* %12 to i32*
  %14 = load i32**, i32*** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32*, i32** %14, i64 %16
  store i32* %13, i32** %17, align 8
  store i32 32, i32* %1, align 4
  br label %18

18:                                               ; preds = %36, %11
  %19 = load i32, i32* %1, align 4
  %20 = icmp slt i32 %19, 127
  br i1 %20, label %21, label %39

21:                                               ; preds = %18
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %27 = call i32 @load_image_color(i8* %26, i32 0, i32 0)
  %28 = load i32**, i32*** %4, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %1, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 %27, i32* %35, align 4
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %1, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %1, align 4
  br label %18

39:                                               ; preds = %18
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %2, align 4
  br label %8

43:                                               ; preds = %8
  %44 = load i32**, i32*** %4, align 8
  ret i32** %44
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32) #1

declare dso_local i32 @load_image_color(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
