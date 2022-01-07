; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_ff_get_line.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_aviobuf.c_ff_get_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_get_line(i32* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %40, %3
  %10 = load i32*, i32** %4, align 8
  %11 = call signext i8 @avio_r8(i32* %10)
  store i8 %11, i8* %8, align 1
  %12 = load i8, i8* %8, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i8, i8* %8, align 1
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  store i8 %21, i8* %26, align 1
  br label %27

27:                                               ; preds = %20, %15, %9
  br label %28

28:                                               ; preds = %27
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 10
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i8, i8* %8, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 13
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8, i8* %8, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br label %40

40:                                               ; preds = %36, %32, %28
  %41 = phi i1 [ false, %32 ], [ false, %28 ], [ %39, %36 ]
  br i1 %41, label %9, label %42

42:                                               ; preds = %40
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 13
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load i32*, i32** %4, align 8
  %48 = call signext i8 @avio_r8(i32* %47)
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 10
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @avio_feof(i32* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32*, i32** %4, align 8
  %57 = call i32 @avio_skip(i32* %56, i32 -1)
  br label %58

58:                                               ; preds = %55, %51, %46, %42
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local signext i8 @avio_r8(i32*) #1

declare dso_local i32 @avio_feof(i32*) #1

declare dso_local i32 @avio_skip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
