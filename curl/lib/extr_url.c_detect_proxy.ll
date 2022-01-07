; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_url.c_detect_proxy.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_url.c_detect_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"_proxy\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"http_proxy\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"all_proxy\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"ALL_PROXY\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Uses proxy env variable %s == '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.connectdata*)* @detect_proxy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @detect_proxy(%struct.connectdata* %0) #0 {
  %2 = alloca %struct.connectdata*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %2, align 8
  store i8* null, i8** %3, align 8
  %8 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %9 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %5, align 8
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  store i8* %13, i8** %6, align 8
  br label %14

14:                                               ; preds = %18, %1
  %15 = load i8*, i8** %5, align 8
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %5, align 8
  %21 = load i8, i8* %19, align 1
  %22 = sext i8 %21 to i32
  %23 = call i64 @tolower(i32 %22)
  %24 = trunc i64 %23 to i8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %6, align 8
  store i8 %24, i8* %25, align 1
  br label %14

27:                                               ; preds = %14
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @strcpy(i8* %28, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %31 = call i8* @curl_getenv(i8* %30)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %36 = call i32 @strcasecompare(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %41 = call i32 @Curl_strntoupper(i8* %39, i8* %40, i32 128)
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %43 = call i8* @curl_getenv(i8* %42)
  store i8* %43, i8** %7, align 8
  br label %44

44:                                               ; preds = %38, %34, %27
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  store i8* %45, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i8*, i8** %7, align 8
  store i8* %49, i8** %3, align 8
  br label %59

50:                                               ; preds = %44
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i8* @curl_getenv(i8* %51)
  store i8* %52, i8** %3, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = call i8* @curl_getenv(i8* %56)
  store i8* %57, i8** %3, align 8
  br label %58

58:                                               ; preds = %55, %50
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i8*, i8** %3, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.connectdata*, %struct.connectdata** %2, align 8
  %64 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @infof(i32 %65, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %66, i8* %67)
  br label %69

69:                                               ; preds = %62, %59
  %70 = load i8*, i8** %3, align 8
  ret i8* %70
}

declare dso_local i64 @tolower(i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @curl_getenv(i8*) #1

declare dso_local i32 @strcasecompare(i8*, i8*) #1

declare dso_local i32 @Curl_strntoupper(i8*, i8*, i32) #1

declare dso_local i32 @infof(i32, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
