; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_libauthretry.c_parse_auth_name.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_libauthretry.c_parse_auth_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLAUTH_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@CURLAUTH_BASIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@CURLAUTH_DIGEST = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"ntlm\00", align 1
@CURLAUTH_NTLM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*)* @parse_auth_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @parse_auth_name(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load i64, i64* @CURLAUTH_NONE, align 8
  store i64 %7, i64* %2, align 8
  br label %28

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @curl_strequal(i8* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i64, i64* @CURLAUTH_BASIC, align 8
  store i64 %13, i64* %2, align 8
  br label %28

14:                                               ; preds = %8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @curl_strequal(i8* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @CURLAUTH_DIGEST, align 8
  store i64 %19, i64* %2, align 8
  br label %28

20:                                               ; preds = %14
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @curl_strequal(i8* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @CURLAUTH_NTLM, align 8
  store i64 %25, i64* %2, align 8
  br label %28

26:                                               ; preds = %20
  %27 = load i64, i64* @CURLAUTH_NONE, align 8
  store i64 %27, i64* %2, align 8
  br label %28

28:                                               ; preds = %26, %24, %18, %12, %6
  %29 = load i64, i64* %2, align 8
  ret i64 %29
}

declare dso_local i64 @curl_strequal(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
