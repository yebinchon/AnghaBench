; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_check_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdrw.c_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_header(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 40
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %44

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 6
  %16 = call i32 @AV_RB16(i8* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 8
  %19 = call i32 @AV_RB16(i8* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 10
  %22 = call i32 @AV_RB16(i8* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 12
  %25 = call i32 @AV_RB16(i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %13
  store i32 0, i32* %3, align 4
  br label %44

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 4353
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %44

36:                                               ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 17
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 767
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 2, i32* %3, align 4
  br label %44

43:                                               ; preds = %39, %36
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %42, %35, %31, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @AV_RB16(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
