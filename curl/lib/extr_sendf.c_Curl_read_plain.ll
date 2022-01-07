; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_sendf.c_Curl_read_plain.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_sendf.c_Curl_read_plain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SOCKERRNO = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@CURLE_AGAIN = common dso_local global i32 0, align 4
@CURLE_RECV_ERROR = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@WSAEWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_read_plain(i32 %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = call i32 @sread(i32 %13, i8* %14, i64 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 -1, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %4
  %20 = load i32, i32* @SOCKERRNO, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @EWOULDBLOCK, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* @EINTR, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp eq i32 %29, %30
  br label %32

32:                                               ; preds = %28, %24, %19
  %33 = phi i1 [ true, %24 ], [ true, %19 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @CURLE_AGAIN, align 4
  store i32 %38, i32* %5, align 4
  br label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @CURLE_RECV_ERROR, align 4
  store i32 %40, i32* %5, align 4
  br label %45

41:                                               ; preds = %4
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @CURLE_OK, align 4
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %39, %37
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @sread(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
