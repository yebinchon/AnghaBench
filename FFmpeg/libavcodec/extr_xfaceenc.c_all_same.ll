; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfaceenc.c_all_same.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_xfaceenc.c_all_same.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XFACE_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @all_same to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @all_same(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = load i8, i8* %11, align 1
  store i8 %12, i8* %8, align 1
  br label %13

13:                                               ; preds = %34, %3
  %14 = load i32, i32* %7, align 4
  %15 = add nsw i32 %14, -1
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %14, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %13
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** %9, align 8
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %33, %17
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %9, align 8
  %27 = load i8, i8* %25, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %8, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %40

33:                                               ; preds = %24
  br label %20

34:                                               ; preds = %20
  %35 = load i32, i32* @XFACE_WIDTH, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8* %38, i8** %5, align 8
  br label %13

39:                                               ; preds = %13
  store i32 1, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %32
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
