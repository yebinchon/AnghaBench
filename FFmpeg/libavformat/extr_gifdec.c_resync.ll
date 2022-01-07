; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_gifdec.c_resync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_gifdec.c_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gif87a_sig = common dso_local global i32* null, align 8
@gif89a_sig = common dso_local global i32* null, align 8
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resync(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 6
  br i1 %8, label %9, label %42

9:                                                ; preds = %6
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @avio_r8(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32*, i32** @gif87a_sig, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %12, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %9
  %20 = load i32, i32* %5, align 4
  %21 = load i32*, i32** @gif89a_sig, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 71
  %30 = zext i1 %29 to i32
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %27, %19, %9
  %33 = load i32*, i32** %3, align 8
  %34 = call i64 @avio_feof(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %37, i32* %2, align 4
  br label %43

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %6

42:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %36
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i64 @avio_feof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
