; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_strtoofft.c_curlx_strtoofft.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_strtoofft.c_curlx_strtoofft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@CURL_OFFT_INVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@CURL_OFFT_FLOW = common dso_local global i32 0, align 4
@CURL_OFFT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curlx_strtoofft(i8* %0, i8** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 0, i64* @errno, align 8
  %12 = load i32*, i32** %9, align 8
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %25, %4
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load i8*, i8** %6, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @ISSPACE(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ]
  br i1 %24, label %25, label %28

25:                                               ; preds = %23
  %26 = load i8*, i8** %6, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %6, align 8
  br label %13

28:                                               ; preds = %23
  %29 = load i8*, i8** %6, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 45, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i8**, i8*** %7, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i8*, i8** %6, align 8
  %38 = load i8**, i8*** %7, align 8
  store i8* %37, i8** %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* @CURL_OFFT_INVAL, align 4
  store i32 %40, i32* %5, align 4
  br label %67

41:                                               ; preds = %28
  %42 = load i8*, i8** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @strtooff(i8* %42, i8** %10, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i8**, i8*** %7, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i8*, i8** %10, align 8
  %49 = load i8**, i8*** %7, align 8
  store i8* %48, i8** %49, align 8
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i64, i64* @errno, align 8
  %52 = load i64, i64* @ERANGE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @CURL_OFFT_FLOW, align 4
  store i32 %55, i32* %5, align 4
  br label %67

56:                                               ; preds = %50
  %57 = load i8*, i8** %6, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = icmp eq i8* %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @CURL_OFFT_INVAL, align 4
  store i32 %61, i32* %5, align 4
  br label %67

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %11, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* @CURL_OFFT_OK, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %60, %54, %39
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i32 @strtooff(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
