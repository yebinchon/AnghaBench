; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextenc.c_utf8_strlen.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_movtextenc.c_utf8_strlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @utf8_strlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_strlen(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %54, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %9
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  store i8 %18, i8* %8, align 1
  %19 = load i8, i8* %8, align 1
  %20 = sext i8 %19 to i32
  %21 = and i32 %20, 128
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %13
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %54

26:                                               ; preds = %13
  %27 = load i8, i8* %8, align 1
  %28 = sext i8 %27 to i32
  %29 = and i32 %28, 224
  %30 = icmp eq i32 %29, 192
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 2
  store i32 %33, i32* %6, align 4
  br label %53

34:                                               ; preds = %26
  %35 = load i8, i8* %8, align 1
  %36 = sext i8 %35 to i32
  %37 = and i32 %36, 240
  %38 = icmp eq i32 %37, 224
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 3
  store i32 %41, i32* %6, align 4
  br label %52

42:                                               ; preds = %34
  %43 = load i8, i8* %8, align 1
  %44 = sext i8 %43 to i32
  %45 = and i32 %44, 248
  %46 = icmp eq i32 %45, 240
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %6, align 4
  br label %51

50:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %59

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51, %39
  br label %53

53:                                               ; preds = %52, %31
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %9

57:                                               ; preds = %9
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %50
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
