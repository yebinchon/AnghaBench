; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib540.c_init.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib540.c_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type opaque

@eh = common dso_local global i32** null, align 8
@CURLOPT_URL = common dso_local global i32 0, align 4
@CURLOPT_PROXY = common dso_local global i32 0, align 4
@PROXY = common dso_local global i8* null, align 8
@CURLOPT_PROXYUSERPWD = common dso_local global i32 0, align 4
@CURLOPT_PROXYAUTH = common dso_local global i32 0, align 4
@CURLAUTH_ANY = common dso_local global i64 0, align 8
@CURLOPT_VERBOSE = common dso_local global i32 0, align 4
@CURLOPT_HEADER = common dso_local global i32 0, align 4
@CURLOPT_HTTPHEADER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i8*, %struct.curl_slist*)* @init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init(i32 %0, i32* %1, i8* %2, i8* %3, %struct.curl_slist* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.curl_slist*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.curl_slist* %4, %struct.curl_slist** %11, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32**, i32*** @eh, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @res_easy_init(i32* %17)
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  br label %116

22:                                               ; preds = %5
  %23 = load i32**, i32*** @eh, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* @CURLOPT_URL, align 4
  %29 = load i8*, i8** %9, align 8
  %30 = call i32 (i32*, i32, ...) @res_easy_setopt(i32* %27, i32 %28, i8* %29)
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %116

34:                                               ; preds = %22
  %35 = load i32**, i32*** @eh, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* @CURLOPT_PROXY, align 4
  %41 = load i8*, i8** @PROXY, align 8
  %42 = call i32 (i32*, i32, ...) @res_easy_setopt(i32* %39, i32 %40, i8* %41)
  %43 = load i32, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %116

46:                                               ; preds = %34
  %47 = load i32**, i32*** @eh, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* @CURLOPT_PROXYUSERPWD, align 4
  %53 = load i8*, i8** %10, align 8
  %54 = call i32 (i32*, i32, ...) @res_easy_setopt(i32* %51, i32 %52, i8* %53)
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %116

58:                                               ; preds = %46
  %59 = load i32**, i32*** @eh, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @CURLOPT_PROXYAUTH, align 4
  %65 = load i64, i64* @CURLAUTH_ANY, align 8
  %66 = call i32 (i32*, i32, ...) @res_easy_setopt(i32* %63, i32 %64, i64 %65)
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %58
  br label %116

70:                                               ; preds = %58
  %71 = load i32**, i32*** @eh, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* @CURLOPT_VERBOSE, align 4
  %77 = call i32 (i32*, i32, ...) @res_easy_setopt(i32* %75, i32 %76, i64 1)
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %116

81:                                               ; preds = %70
  %82 = load i32**, i32*** @eh, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* @CURLOPT_HEADER, align 4
  %88 = call i32 (i32*, i32, ...) @res_easy_setopt(i32* %86, i32 %87, i64 1)
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %116

92:                                               ; preds = %81
  %93 = load i32**, i32*** @eh, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @CURLOPT_HTTPHEADER, align 4
  %99 = load %struct.curl_slist*, %struct.curl_slist** %11, align 8
  %100 = call i32 (i32*, i32, ...) @res_easy_setopt(i32* %97, i32 %98, %struct.curl_slist* %99)
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %92
  br label %116

104:                                              ; preds = %92
  %105 = load i32*, i32** %8, align 8
  %106 = load i32**, i32*** @eh, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32*, i32** %106, i64 %108
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @res_multi_add_handle(i32* %105, i32* %110)
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %104
  br label %116

115:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %128

116:                                              ; preds = %114, %103, %91, %80, %69, %57, %45, %33, %21
  %117 = load i32**, i32*** @eh, align 8
  %118 = load i32, i32* %7, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @curl_easy_cleanup(i32* %121)
  %123 = load i32**, i32*** @eh, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32*, i32** %123, i64 %125
  store i32* null, i32** %126, align 8
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %116, %115
  %129 = load i32, i32* %6, align 4
  ret i32 %129
}

declare dso_local i32 @res_easy_init(i32*) #1

declare dso_local i32 @res_easy_setopt(i32*, i32, ...) #1

declare dso_local i32 @res_multi_add_handle(i32*, i32*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
