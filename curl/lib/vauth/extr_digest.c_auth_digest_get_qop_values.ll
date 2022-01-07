; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_auth_digest_get_qop_values.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_auth_digest_get_qop_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1
@DIGEST_QOP_VALUE_STRING_AUTH = common dso_local global i32 0, align 4
@DIGEST_QOP_VALUE_AUTH = common dso_local global i32 0, align 4
@DIGEST_QOP_VALUE_STRING_AUTH_INT = common dso_local global i32 0, align 4
@DIGEST_QOP_VALUE_AUTH_INT = common dso_local global i32 0, align 4
@DIGEST_QOP_VALUE_STRING_AUTH_CONF = common dso_local global i32 0, align 4
@DIGEST_QOP_VALUE_AUTH_CONF = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @auth_digest_get_qop_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_digest_get_qop_values(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* null, i8** %8, align 8
  %9 = load i32*, i32** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @strdup(i8* %10)
  store i8* %11, i8** %6, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %15, i32* %3, align 4
  br label %60

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = call i8* @strtok_r(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i8* %18, i8** %7, align 8
  br label %19

19:                                               ; preds = %54, %16
  %20 = load i8*, i8** %7, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @DIGEST_QOP_VALUE_STRING_AUTH, align 4
  %25 = call i64 @strcasecompare(i8* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load i32, i32* @DIGEST_QOP_VALUE_AUTH, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, i32* %29, align 4
  br label %54

32:                                               ; preds = %22
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* @DIGEST_QOP_VALUE_STRING_AUTH_INT, align 4
  %35 = call i64 @strcasecompare(i8* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @DIGEST_QOP_VALUE_AUTH_INT, align 4
  %39 = load i32*, i32** %5, align 8
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %38
  store i32 %41, i32* %39, align 4
  br label %53

42:                                               ; preds = %32
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* @DIGEST_QOP_VALUE_STRING_AUTH_CONF, align 4
  %45 = call i64 @strcasecompare(i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32, i32* @DIGEST_QOP_VALUE_AUTH_CONF, align 4
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %37
  br label %54

54:                                               ; preds = %53, %27
  %55 = call i8* @strtok_r(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %8)
  store i8* %55, i8** %7, align 8
  br label %19

56:                                               ; preds = %19
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @free(i8* %57)
  %59 = load i32, i32* @CURLE_OK, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %14
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @strcasecompare(i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
