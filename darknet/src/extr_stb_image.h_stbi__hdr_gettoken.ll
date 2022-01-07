; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__hdr_gettoken.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__hdr_gettoken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBI__HDR_BUFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*)* @stbi__hdr_gettoken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi__hdr_gettoken(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i8 0, i8* %6, align 1
  %7 = load i32*, i32** %3, align 8
  %8 = call signext i8 @stbi__get8(i32* %7)
  store i8 %8, i8* %6, align 1
  br label %9

9:                                                ; preds = %44, %2
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @stbi__at_eof(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load i8, i8* %6, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 10
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  br i1 %18, label %19, label %47

19:                                               ; preds = %17
  %20 = load i8, i8* %6, align 1
  %21 = load i8*, i8** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  store i8 %20, i8* %25, align 1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @STBI__HDR_BUFLEN, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %42, %30
  %32 = load i32*, i32** %3, align 8
  %33 = call i32 @stbi__at_eof(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load i32*, i32** %3, align 8
  %37 = call signext i8 @stbi__get8(i32* %36)
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 10
  br label %40

40:                                               ; preds = %35, %31
  %41 = phi i1 [ false, %31 ], [ %39, %35 ]
  br i1 %41, label %42, label %43

42:                                               ; preds = %40
  br label %31

43:                                               ; preds = %40
  br label %47

44:                                               ; preds = %19
  %45 = load i32*, i32** %3, align 8
  %46 = call signext i8 @stbi__get8(i32* %45)
  store i8 %46, i8* %6, align 1
  br label %9

47:                                               ; preds = %43, %17
  %48 = load i8*, i8** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  store i8 0, i8* %51, align 1
  %52 = load i8*, i8** %4, align 8
  ret i8* %52
}

declare dso_local signext i8 @stbi__get8(i32*) #1

declare dso_local i32 @stbi__at_eof(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
