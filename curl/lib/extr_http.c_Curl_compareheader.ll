; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_compareheader.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_compareheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_compareheader(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strlen(i8* %13)
  store i64 %14, i64* %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @strncasecompare(i8* %15, i8* %16, i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %4, align 4
  br label %83

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %11, align 8
  br label %26

26:                                               ; preds = %38, %22
  %27 = load i8*, i8** %11, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = call i64 @ISSPACE(i8 signext %33)
  %35 = icmp ne i64 %34, 0
  br label %36

36:                                               ; preds = %31, %26
  %37 = phi i1 [ false, %26 ], [ %35, %31 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i8*, i8** %11, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %11, align 8
  br label %26

41:                                               ; preds = %36
  %42 = load i8*, i8** %11, align 8
  %43 = call i8* @strchr(i8* %42, i8 signext 13)
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load i8*, i8** %11, align 8
  %48 = call i8* @strchr(i8* %47, i8 signext 10)
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %46
  %52 = load i8*, i8** %11, align 8
  %53 = call i8* @strchr(i8* %52, i8 signext 0)
  store i8* %53, i8** %12, align 8
  br label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %54, %41
  %56 = load i8*, i8** %12, align 8
  %57 = load i8*, i8** %11, align 8
  %58 = ptrtoint i8* %56 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  store i64 %60, i64* %10, align 8
  %61 = load i8*, i8** %7, align 8
  %62 = call i64 @strlen(i8* %61)
  store i64 %62, i64* %9, align 8
  br label %63

63:                                               ; preds = %76, %55
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp uge i64 %64, %65
  br i1 %66, label %67, label %81

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i64, i64* %9, align 8
  %71 = call i64 @strncasecompare(i8* %68, i8* %69, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @TRUE, align 4
  store i32 %74, i32* %4, align 4
  br label %83

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, -1
  store i64 %78, i64* %10, align 8
  %79 = load i8*, i8** %11, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %11, align 8
  br label %63

81:                                               ; preds = %63
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %81, %73, %20
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strncasecompare(i8*, i8*, i64) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
