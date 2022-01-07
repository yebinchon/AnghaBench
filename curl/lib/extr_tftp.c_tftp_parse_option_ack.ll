; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_parse_option_ack.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_parse_option_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@TFTP_BLKSIZE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Malformed ACK packet, rejecting\00", align 1
@CURLE_TFTP_ILLEGAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"got option=(%s) value=(%s)\0A\00", align 1
@TFTP_OPTION_BLKSIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"invalid blocksize value in OACK packet\00", align 1
@TFTP_BLKSIZE_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"%s (%d)\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"blksize is larger than max supported\00", align 1
@TFTP_BLKSIZE_MIN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"blksize is smaller than min supported\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s (%ld)\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"server requested blksize larger than allocated\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"%s (%d) %s (%d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"blksize parsed from OACK\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"requested\00", align 1
@TFTP_OPTION_TSIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [10 x i8] c"%s (%ld)\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"tsize parsed from OACK\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"invalid tsize -:%s:- value in OACK packet\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i8*, i32)* @tftp_parse_option_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_parse_option_ack(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  store i8* %14, i8** %8, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %18, align 8
  store %struct.Curl_easy* %19, %struct.Curl_easy** %9, align 8
  %20 = load i32, i32* @TFTP_BLKSIZE_DEFAULT, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %140, %3
  %24 = load i8*, i8** %8, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = icmp ult i8* %24, %28
  br i1 %29, label %30, label %141

30:                                               ; preds = %23
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8*, i8** %8, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  %41 = call i8* @tftp_option_get(i8* %31, i32 %40, i8** %10, i8** %11)
  store i8* %41, i8** %8, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %30
  %45 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %46 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @CURLE_TFTP_ILLEGAL, align 4
  store i32 %47, i32* %4, align 4
  br label %143

48:                                               ; preds = %30
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i8*, i8** %11, align 8
  %52 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51)
  %53 = load i8*, i8** %10, align 8
  %54 = load i32, i32* @TFTP_OPTION_BLKSIZE, align 4
  %55 = call i64 @checkprefix(i8* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %110

57:                                               ; preds = %48
  %58 = load i8*, i8** %11, align 8
  %59 = call i64 @strtol(i8* %58, i32* null, i32 10)
  store i64 %59, i64* %12, align 8
  %60 = load i64, i64* %12, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %57
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %64 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @CURLE_TFTP_ILLEGAL, align 4
  store i32 %65, i32* %4, align 4
  br label %143

66:                                               ; preds = %57
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @TFTP_BLKSIZE_MAX, align 8
  %69 = icmp sgt i64 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %72 = load i64, i64* @TFTP_BLKSIZE_MAX, align 8
  %73 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  %74 = load i32, i32* @CURLE_TFTP_ILLEGAL, align 4
  store i32 %74, i32* %4, align 4
  br label %143

75:                                               ; preds = %66
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* @TFTP_BLKSIZE_MIN, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %81 = load i64, i64* @TFTP_BLKSIZE_MIN, align 8
  %82 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @CURLE_TFTP_ILLEGAL, align 4
  store i32 %83, i32* %4, align 4
  br label %143

84:                                               ; preds = %75
  %85 = load i64, i64* %12, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp sgt i64 %85, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %92 = load i64, i64* %12, align 8
  %93 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %91, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i64 %92)
  %94 = load i32, i32* @CURLE_TFTP_ILLEGAL, align 4
  store i32 %94, i32* %4, align 4
  br label %143

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %12, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %105, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i64 %108)
  br label %140

110:                                              ; preds = %48
  %111 = load i8*, i8** %10, align 8
  %112 = load i32, i32* @TFTP_OPTION_TSIZE, align 4
  %113 = call i64 @checkprefix(i8* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %139

115:                                              ; preds = %110
  store i64 0, i64* %13, align 8
  %116 = load i8*, i8** %11, align 8
  %117 = call i64 @strtol(i8* %116, i32* null, i32 10)
  store i64 %117, i64* %13, align 8
  %118 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i32 (%struct.Curl_easy*, i8*, i8*, ...) @infof(%struct.Curl_easy* %118, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i64 %119)
  %121 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %122 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %138, label %126

126:                                              ; preds = %115
  %127 = load i64, i64* %13, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %126
  %130 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %130, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i8* %131)
  %133 = load i32, i32* @CURLE_TFTP_ILLEGAL, align 4
  store i32 %133, i32* %4, align 4
  br label %143

134:                                              ; preds = %126
  %135 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %136 = load i64, i64* %13, align 8
  %137 = call i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy* %135, i64 %136)
  br label %138

138:                                              ; preds = %134, %115
  br label %139

139:                                              ; preds = %138, %110
  br label %140

140:                                              ; preds = %139, %97
  br label %23

141:                                              ; preds = %23
  %142 = load i32, i32* @CURLE_OK, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %141, %129, %90, %79, %70, %62, %44
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i8* @tftp_option_get(i8*, i32, i8**, i8**) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*, ...) #1

declare dso_local i64 @checkprefix(i8*, i32) #1

declare dso_local i64 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
