; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_Curl_ftpsend.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_Curl_ftpsend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLE_BAD_FUNCTION_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@FIRSTSOCKET = common dso_local global i64 0, align 8
@CURLINFO_HEADER_OUT = common dso_local global i32 0, align 4
@PROT_CMD = common dso_local global i32 0, align 4
@PROT_LAST = common dso_local global i32 0, align 4
@PROT_NONE = common dso_local global i32 0, align 4
@SBUF_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_ftpsend(%struct.connectdata* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [1024 x i8], align 16
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  store i8* %11, i8** %9, align 8
  %12 = load i64, i64* @CURLE_OK, align 8
  store i64 %12, i64* %10, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  store i64 %16, i64* %3, align 8
  br label %93

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strlen(i8* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8
  %24 = icmp ugt i64 %23, 1021
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %17
  %26 = load i64, i64* @CURLE_BAD_FUNCTION_ARGUMENT, align 8
  store i64 %26, i64* %3, align 8
  br label %93

27:                                               ; preds = %22
  %28 = bitcast [1024 x i8]* %7 to i8**
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32 @memcpy(i8** %28, i8* %29, i64 %30)
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 %32
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* %8, align 8
  %36 = add i64 %35, 2
  store i64 %36, i64* %8, align 8
  store i64 0, i64* %6, align 8
  %37 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %38 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds [1024 x i8], [1024 x i8]* %7, i64 0, i64 0
  %41 = load i64, i64* %8, align 8
  %42 = call i64 @Curl_convert_to_network(%struct.TYPE_5__* %39, i8* %40, i64 %41)
  store i64 %42, i64* %10, align 8
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %27
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %3, align 8
  br label %93

47:                                               ; preds = %27
  br label %48

48:                                               ; preds = %90, %47
  %49 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %50 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %51 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @FIRSTSOCKET, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %9, align 8
  %57 = load i64, i64* %8, align 8
  %58 = call i64 @Curl_write(%struct.connectdata* %49, i32 %55, i8* %56, i64 %57, i64* %6)
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %91

62:                                               ; preds = %48
  %63 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %64 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %63, i32 0, i32 1
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %72 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i32, i32* @CURLINFO_HEADER_OUT, align 4
  %75 = load i8*, i8** %9, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i32 @Curl_debug(%struct.TYPE_5__* %73, i32 %74, i8* %75, i64 %76)
  br label %78

78:                                               ; preds = %70, %62
  %79 = load i64, i64* %6, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %78
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub i64 %84, %83
  store i64 %85, i64* %8, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 %86
  store i8* %88, i8** %9, align 8
  br label %90

89:                                               ; preds = %78
  br label %91

90:                                               ; preds = %82
  br label %48

91:                                               ; preds = %89, %61
  %92 = load i64, i64* %10, align 8
  store i64 %92, i64* %3, align 8
  br label %93

93:                                               ; preds = %91, %45, %25, %15
  %94 = load i64, i64* %3, align 8
  ret i64 %94
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8**, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @Curl_convert_to_network(%struct.TYPE_5__*, i8*, i64) #1

declare dso_local i64 @Curl_write(%struct.connectdata*, i32, i8*, i64, i64*) #1

declare dso_local i32 @Curl_debug(%struct.TYPE_5__*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
