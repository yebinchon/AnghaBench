; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_copy_header_value.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_copy_header_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @Curl_copy_header_value(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 58
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i8*, i8** %3, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %3, align 8
  br label %8

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %3, align 8
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i8*, i8** %3, align 8
  store i8* %31, i8** %4, align 8
  br label %32

32:                                               ; preds = %44, %30
  %33 = load i8*, i8** %4, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i8*, i8** %4, align 8
  %39 = load i8, i8* %38, align 1
  %40 = call i64 @ISSPACE(i8 signext %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %32
  %43 = phi i1 [ false, %32 ], [ %41, %37 ]
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %4, align 8
  br label %32

47:                                               ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @strchr(i8* %48, i8 signext 13)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %4, align 8
  %54 = call i8* @strchr(i8* %53, i8 signext 10)
  store i8* %54, i8** %5, align 8
  br label %55

55:                                               ; preds = %52, %47
  %56 = load i8*, i8** %5, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i8*, i8** %4, align 8
  %60 = call i8* @strchr(i8* %59, i8 signext 0)
  store i8* %60, i8** %5, align 8
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i8*, i8** %5, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  store i8* null, i8** %2, align 8
  br label %102

65:                                               ; preds = %61
  br label %66

66:                                               ; preds = %77, %65
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %4, align 8
  %69 = icmp ugt i8* %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = load i8, i8* %71, align 1
  %73 = call i64 @ISSPACE(i8 signext %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i1 [ false, %66 ], [ %74, %70 ]
  br i1 %76, label %77, label %80

77:                                               ; preds = %75
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i32 -1
  store i8* %79, i8** %5, align 8
  br label %66

80:                                               ; preds = %75
  %81 = load i8*, i8** %5, align 8
  %82 = load i8*, i8** %4, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = add i64 %87, 1
  %89 = call i8* @malloc(i64 %88)
  store i8* %89, i8** %6, align 8
  %90 = load i8*, i8** %6, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %80
  store i8* null, i8** %2, align 8
  br label %102

93:                                               ; preds = %80
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %4, align 8
  %96 = load i64, i64* %7, align 8
  %97 = call i32 @memcpy(i8* %94, i8* %95, i64 %96)
  %98 = load i8*, i8** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 0, i8* %100, align 1
  %101 = load i8*, i8** %6, align 8
  store i8* %101, i8** %2, align 8
  br label %102

102:                                              ; preds = %93, %92, %64
  %103 = load i8*, i8** %2, align 8
  ret i8* %103
}

declare dso_local i64 @ISSPACE(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
