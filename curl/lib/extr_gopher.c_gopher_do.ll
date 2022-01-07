; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_gopher.c_gopher_do.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_gopher.c_gopher_do.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32*, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }

@CURLE_OK = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s?%s\00", align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i32 0, align 4
@CLIENTWRITE_HEADER = common dso_local global i32 0, align 4
@CURLE_SEND_ERROR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed sending Gopher request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, i32*)* @gopher_do to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gopher_do(%struct.connectdata* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %18 = load i64, i64* @CURLE_OK, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 1
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %20, align 8
  store %struct.Curl_easy* %21, %struct.Curl_easy** %7, align 8
  %22 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %23 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @FIRSTSOCKET, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %29 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %34 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  %38 = load i32, i32* @TRUE, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @DEBUGASSERT(i8* %40)
  %42 = load i8*, i8** %11, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %2
  %45 = load i8*, i8** %10, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i8* @aprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %46)
  store i8* %47, i8** %9, align 8
  br label %51

48:                                               ; preds = %2
  %49 = load i8*, i8** %10, align 8
  %50 = call i8* @strdup(i8* %49)
  store i8* %50, i8** %9, align 8
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i8*, i8** %9, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %51
  %55 = load i64, i64* @CURLE_OUT_OF_MEMORY, align 8
  store i64 %55, i64* %3, align 8
  br label %152

56:                                               ; preds = %51
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @strlen(i8* %57)
  %59 = icmp sle i32 %58, 2
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %16, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 @free(i8* %64)
  br label %82

66:                                               ; preds = %56
  %67 = load i8*, i8** %9, align 8
  store i8* %67, i8** %17, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 2
  store i8* %69, i8** %17, align 8
  %70 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %71 = load i8*, i8** %17, align 8
  %72 = load i32, i32* @FALSE, align 4
  %73 = call i64 @Curl_urldecode(%struct.Curl_easy* %70, i8* %71, i32 0, i8** %12, i64* %16, i32 %72)
  store i64 %73, i64* %6, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i64, i64* %6, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %66
  %79 = load i64, i64* %6, align 8
  store i64 %79, i64* %3, align 8
  br label %152

80:                                               ; preds = %66
  %81 = load i8*, i8** %12, align 8
  store i8* %81, i8** %13, align 8
  br label %82

82:                                               ; preds = %80, %60
  %83 = load i64, i64* %16, align 8
  %84 = call i32 @curlx_uztosz(i64 %83)
  store i32 %84, i32* %15, align 4
  br label %85

85:                                               ; preds = %121, %82
  %86 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* %15, align 4
  %90 = call i64 @Curl_write(%struct.connectdata* %86, i32 %87, i8* %88, i32 %89, i32* %14)
  store i64 %90, i64* %6, align 8
  %91 = load i64, i64* %6, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %114, label %93

93:                                               ; preds = %85
  %94 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %95 = load i32, i32* @CLIENTWRITE_HEADER, align 4
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i64 @Curl_client_write(%struct.connectdata* %94, i32 %95, i8* %96, i32 %97)
  store i64 %98, i64* %6, align 8
  %99 = load i64, i64* %6, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %122

102:                                              ; preds = %93
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i8*, i8** %12, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %12, align 8
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %110, 1
  br i1 %111, label %112, label %113

112:                                              ; preds = %102
  br label %122

113:                                              ; preds = %102
  br label %115

114:                                              ; preds = %85
  br label %122

115:                                              ; preds = %113
  %116 = load i32, i32* %8, align 4
  %117 = call i64 @SOCKET_WRITABLE(i32 %116, i32 100)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %115
  %120 = load i64, i64* @CURLE_SEND_ERROR, align 8
  store i64 %120, i64* %6, align 8
  br label %122

121:                                              ; preds = %115
  br label %85

122:                                              ; preds = %119, %114, %112, %101
  %123 = load i8*, i8** %13, align 8
  %124 = call i32 @free(i8* %123)
  %125 = load i64, i64* %6, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = load i32, i32* %8, align 4
  %129 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %130 = call i64 @Curl_sendf(i32 %128, %struct.connectdata* %129, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i64 %130, i64* %6, align 8
  br label %131

131:                                              ; preds = %127, %122
  %132 = load i64, i64* %6, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %136 = call i32 @failf(%struct.Curl_easy* %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i64, i64* %6, align 8
  store i64 %137, i64* %3, align 8
  br label %152

138:                                              ; preds = %131
  %139 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %140 = load i32, i32* @CLIENTWRITE_HEADER, align 4
  %141 = call i64 @Curl_client_write(%struct.connectdata* %139, i32 %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  store i64 %141, i64* %6, align 8
  %142 = load i64, i64* %6, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i64, i64* %6, align 8
  store i64 %145, i64* %3, align 8
  br label %152

146:                                              ; preds = %138
  %147 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %148 = load i64, i64* @FIRSTSOCKET, align 8
  %149 = load i32, i32* @FALSE, align 4
  %150 = call i32 @Curl_setup_transfer(%struct.Curl_easy* %147, i64 %148, i32 -1, i32 %149, i32 -1)
  %151 = load i64, i64* @CURLE_OK, align 8
  store i64 %151, i64* %3, align 8
  br label %152

152:                                              ; preds = %146, %144, %134, %78, %54
  %153 = load i64, i64* %3, align 8
  ret i64 %153
}

declare dso_local i32 @DEBUGASSERT(i8*) #1

declare dso_local i8* @aprintf(i8*, i8*, i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @Curl_urldecode(%struct.Curl_easy*, i8*, i32, i8**, i64*, i32) #1

declare dso_local i32 @curlx_uztosz(i64) #1

declare dso_local i64 @Curl_write(%struct.connectdata*, i32, i8*, i32, i32*) #1

declare dso_local i64 @Curl_client_write(%struct.connectdata*, i32, i8*, i32) #1

declare dso_local i64 @SOCKET_WRITABLE(i32, i32) #1

declare dso_local i64 @Curl_sendf(i32, %struct.connectdata*, i8*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

declare dso_local i32 @Curl_setup_transfer(%struct.Curl_easy*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
