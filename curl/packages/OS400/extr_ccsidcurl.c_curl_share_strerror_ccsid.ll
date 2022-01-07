; ModuleID = '/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_share_strerror_ccsid.c'
source_filename = "/home/carl/AnghaBench/curl/packages/OS400/extr_ccsidcurl.c_curl_share_strerror_ccsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_CONV_EXPANSION = common dso_local global i32 0, align 4
@LK_SHARE_STRERROR = common dso_local global i32 0, align 4
@ASCII_CCSID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @curl_share_strerror_ccsid(i32 %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i8* @curl_share_strerror(i32 %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %3, align 8
  br label %38

15:                                               ; preds = %2
  %16 = load i32, i32* @MAX_CONV_EXPANSION, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 @strlen(i8* %17)
  %19 = add nsw i32 %18, 1
  %20 = mul nsw i32 %16, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @LK_SHARE_STRERROR, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i8* @Curl_thread_buffer(i32 %21, i32 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  store i8* null, i8** %3, align 8
  br label %38

27:                                               ; preds = %15
  %28 = load i8*, i8** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @ASCII_CCSID, align 4
  %33 = call i64 @convert(i8* %28, i32 %29, i32 %30, i8* %31, i32 -1, i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i8* null, i8** %3, align 8
  br label %38

36:                                               ; preds = %27
  %37 = load i8*, i8** %8, align 8
  store i8* %37, i8** %3, align 8
  br label %38

38:                                               ; preds = %36, %35, %26, %13
  %39 = load i8*, i8** %3, align 8
  ret i8* %39
}

declare dso_local i8* @curl_share_strerror(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @Curl_thread_buffer(i32, i32) #1

declare dso_local i64 @convert(i8*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
