; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_libcurl_generate_mime.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_setopt.c_libcurl_generate_mime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GlobalConfig = type { i32 }
%struct.TYPE_3__ = type { i64 }

@CURLE_OK = common dso_local global i32 0, align 4
@easysrc_mime_count = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"curl_mime *mime%d;\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"mime%d = NULL;\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"mime%d = curl_mime_init(hnd);\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"curl_mime_free(mime%d);\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"curl_mimepart *part%d;\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.GlobalConfig*, %struct.TYPE_3__*, i32*)* @libcurl_generate_mime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @libcurl_generate_mime(i32* %0, %struct.GlobalConfig* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.GlobalConfig*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.GlobalConfig* %1, %struct.GlobalConfig** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* @CURLE_OK, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @easysrc_mime_count, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @easysrc_mime_count, align 4
  %13 = load i32*, i32** %8, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i32*, i32** %8, align 8
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @DECL1(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @DATA1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @CODE1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CLEAN1(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CLEAN1(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @DECL1(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = load %struct.GlobalConfig*, %struct.GlobalConfig** %6, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @libcurl_generate_mime_part(i32* %37, %struct.GlobalConfig* %38, i64 %41, i32 %43)
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %33, %4
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %9, align 4
  ret i32 %47
}

declare dso_local i32 @DECL1(i8*, i32) #1

declare dso_local i32 @DATA1(i8*, i32) #1

declare dso_local i32 @CODE1(i8*, i32) #1

declare dso_local i32 @CLEAN1(i8*, i32) #1

declare dso_local i32 @libcurl_generate_mime_part(i32*, %struct.GlobalConfig*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
