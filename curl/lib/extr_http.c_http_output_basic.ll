; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_http_output_basic.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_http_output_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i8*, i8*, %struct.TYPE_4__, %struct.TYPE_3__, %struct.Curl_easy* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.Curl_easy = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@CURLE_REMOTE_ACCESS_DENIED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"%sAuthorization: Basic %s\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Proxy-\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32)* @http_output_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @http_output_basic(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  store i8* null, i8** %7, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 4
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %15, align 8
  store %struct.Curl_easy* %16, %struct.Curl_easy** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %21 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i8** %22, i8*** %9, align 8
  %23 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %24 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %10, align 8
  %27 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %28 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %11, align 8
  br label %41

31:                                               ; preds = %2
  %32 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %33 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  store i8** %34, i8*** %9, align 8
  %35 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %36 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %10, align 8
  %38 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %39 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  store i8* %40, i8** %11, align 8
  br label %41

41:                                               ; preds = %31, %19
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i8* @aprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %42, i8* %43)
  store i8* %44, i8** %13, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %41
  %48 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %48, i64* %3, align 8
  br label %86

49:                                               ; preds = %41
  %50 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %51 = load i8*, i8** %13, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = call i64 @Curl_base64_encode(%struct.Curl_easy* %50, i8* %51, i32 %53, i8** %7, i64* %6)
  store i64 %54, i64* %12, align 8
  %55 = load i64, i64* %12, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %82

58:                                               ; preds = %49
  %59 = load i8*, i8** %7, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* @CURLE_REMOTE_ACCESS_DENIED, align 8
  store i64 %62, i64* %12, align 8
  br label %82

63:                                               ; preds = %58
  %64 = load i8**, i8*** %9, align 8
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @free(i8* %65)
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %71 = load i8*, i8** %7, align 8
  %72 = call i8* @aprintf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %70, i8* %71)
  %73 = load i8**, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i8**, i8*** %9, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %63
  %80 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %80, i64* %12, align 8
  br label %82

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %79, %61, %57
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @free(i8* %83)
  %85 = load i64, i64* %12, align 8
  store i64 %85, i64* %3, align 8
  br label %86

86:                                               ; preds = %82, %47
  %87 = load i64, i64* %3, align 8
  ret i64 %87
}

declare dso_local i8* @aprintf(i8*, i8*, i8*) #1

declare dso_local i64 @Curl_base64_encode(%struct.Curl_easy*, i8*, i32, i8**, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
