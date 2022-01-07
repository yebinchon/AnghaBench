; ModuleID = '/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_Curl_auth_digest_get_pair.c'
source_filename = "/home/carl/AnghaBench/curl/lib/vauth/extr_digest.c_Curl_auth_digest_get_pair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@DIGEST_MAX_VALUE_LENGTH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@DIGEST_MAX_CONTENT_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_auth_digest_get_pair(i8* %0, i8* %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @DIGEST_MAX_VALUE_LENGTH, align 4
  %16 = sub nsw i32 %15, 1
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %33, %4
  %18 = load i8*, i8** %6, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %25, 61
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %28, 0
  br label %31

31:                                               ; preds = %27, %22, %17
  %32 = phi i1 [ false, %22 ], [ false, %17 ], [ %30, %27 ]
  br i1 %32, label %33, label %39

33:                                               ; preds = %31
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %6, align 8
  %36 = load i8, i8* %34, align 1
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  store i8 %36, i8* %37, align 1
  br label %17

39:                                               ; preds = %31
  %40 = load i8*, i8** %7, align 8
  store i8 0, i8* %40, align 1
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %6, align 8
  %43 = load i8, i8* %41, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 61, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @FALSE, align 4
  store i32 %47, i32* %5, align 4
  br label %111

48:                                               ; preds = %39
  %49 = load i8*, i8** %6, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 34, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i8*, i8** %6, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %55, i8** %6, align 8
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* @DIGEST_MAX_CONTENT_LENGTH, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %103, %57
  %61 = load i8*, i8** %6, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = load i32, i32* %10, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %10, align 4
  %68 = icmp ne i32 %66, 0
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi i1 [ false, %60 ], [ %68, %65 ]
  br i1 %70, label %71, label %106

71:                                               ; preds = %69
  %72 = load i8*, i8** %6, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  switch i32 %74, label %97 [
    i32 92, label %75
    i32 44, label %83
    i32 13, label %88
    i32 10, label %88
    i32 34, label %89
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* %12, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %12, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  store i8 92, i8* %80, align 1
  br label %103

82:                                               ; preds = %75
  br label %97

83:                                               ; preds = %71
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 0, i32* %10, align 4
  br label %103

87:                                               ; preds = %83
  br label %97

88:                                               ; preds = %71, %71
  store i32 0, i32* %10, align 4
  br label %103

89:                                               ; preds = %71
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %10, align 4
  br label %103

96:                                               ; preds = %92, %89
  br label %97

97:                                               ; preds = %71, %96, %87, %82
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %12, align 4
  %99 = load i8*, i8** %6, align 8
  %100 = load i8, i8* %99, align 1
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %8, align 8
  store i8 %100, i8* %101, align 1
  br label %103

103:                                              ; preds = %97, %95, %88, %86, %78
  %104 = load i8*, i8** %6, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %6, align 8
  br label %60

106:                                              ; preds = %69
  %107 = load i8*, i8** %8, align 8
  store i8 0, i8* %107, align 1
  %108 = load i8*, i8** %6, align 8
  %109 = load i8**, i8*** %9, align 8
  store i8* %108, i8** %109, align 8
  %110 = load i32, i32* @TRUE, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %106, %46
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
