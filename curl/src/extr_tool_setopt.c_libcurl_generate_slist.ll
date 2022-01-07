; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_libcurl_generate_slist.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_libcurl_generate_slist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.curl_slist = type { i32, %struct.curl_slist* }

@CURLE_OK = common dso_local global i32 0, align 4
@easysrc_slist_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"struct curl_slist *slist%d;\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"slist%d = NULL;\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"curl_slist_free_all(slist%d);\00", align 1
@CURL_ZERO_TERMINATED = common dso_local global i32 0, align 4
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"slist%d = curl_slist_append(slist%d, \22%s\22);\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.curl_slist*, i32*)* @libcurl_generate_slist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libcurl_generate_slist(%struct.curl_slist* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.curl_slist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.curl_slist* %0, %struct.curl_slist** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32, i32* @CURLE_OK, align 4
  store i32 %8, i32* %6, align 4
  store i8* null, i8** %7, align 8
  %9 = load i32, i32* @easysrc_slist_count, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @easysrc_slist_count, align 4
  %11 = load i32*, i32** %5, align 8
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DECL1(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DATA1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @CLEAN1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @CLEAN1(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %46, %2
  %25 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %26 = icmp ne %struct.curl_slist* %25, null
  br i1 %26, label %27, label %50

27:                                               ; preds = %24
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @Curl_safefree(i8* %28)
  %30 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %31 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @CURL_ZERO_TERMINATED, align 4
  %34 = call i8* @c_escape(i32 %32, i32 %33)
  store i8* %34, i8** %7, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %39, label %37

37:                                               ; preds = %27
  %38 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %38, i32* %3, align 4
  br label %55

39:                                               ; preds = %27
  %40 = load i32*, i32** %5, align 8
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @DATA3(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %41, i32 %43, i8* %44)
  br label %46

46:                                               ; preds = %39
  %47 = load %struct.curl_slist*, %struct.curl_slist** %4, align 8
  %48 = getelementptr inbounds %struct.curl_slist, %struct.curl_slist* %47, i32 0, i32 1
  %49 = load %struct.curl_slist*, %struct.curl_slist** %48, align 8
  store %struct.curl_slist* %49, %struct.curl_slist** %4, align 8
  br label %24

50:                                               ; preds = %24
  br label %51

51:                                               ; preds = %50
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @Curl_safefree(i8* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %37
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @DECL1(i8*, i32) #1

declare dso_local i32 @DATA1(i8*, i32) #1

declare dso_local i32 @CLEAN1(i8*, i32) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i8* @c_escape(i32, i32) #1

declare dso_local i32 @DATA3(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
