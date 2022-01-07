; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_output_auth_headers.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_output_auth_headers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i8*, %struct.TYPE_4__, i64, %struct.TYPE_3__, %struct.Curl_easy* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.Curl_easy = type { i32 }
%struct.auth = type { i64, i8*, i8* }

@CURLE_OK = common dso_local global i64 0, align 8
@CURLAUTH_DIGEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@CURLAUTH_BASIC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"Proxy-authorization\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Authorization\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Basic\00", align 1
@TRUE = common dso_local global i8* null, align 8
@CURLAUTH_BEARER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [15 x i8] c"Authorization:\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Bearer\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"%s auth using %s with user '%s'\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"Proxy\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Server\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i8* null, align 8
@CURLAUTH_NEGOTIATE = common dso_local global i64 0, align 8
@CURLAUTH_NTLM = common dso_local global i64 0, align 8
@CURLAUTH_NTLM_WB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.connectdata*, %struct.auth*, i8*, i8*, i32)* @output_auth_headers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @output_auth_headers(%struct.connectdata* %0, %struct.auth* %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.connectdata*, align 8
  %8 = alloca %struct.auth*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.Curl_easy*, align 8
  store %struct.connectdata* %0, %struct.connectdata** %7, align 8
  store %struct.auth* %1, %struct.auth** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* null, i8** %12, align 8
  %15 = load i64, i64* @CURLE_OK, align 8
  store i64 %15, i64* %13, align 8
  %16 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 4
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %17, align 8
  store %struct.Curl_easy* %18, %struct.Curl_easy** %14, align 8
  %19 = load %struct.auth*, %struct.auth** %8, align 8
  %20 = getelementptr inbounds %struct.auth, %struct.auth* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CURLAUTH_DIGEST, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %25 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %26 = load i32, i32* %11, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i64 @Curl_output_digest(%struct.connectdata* %25, i32 %26, i8* %27, i8* %28)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i64, i64* %13, align 8
  store i64 %33, i64* %6, align 8
  br label %170

34:                                               ; preds = %24
  br label %81

35:                                               ; preds = %5
  %36 = load %struct.auth*, %struct.auth** %8, align 8
  %37 = getelementptr inbounds %struct.auth, %struct.auth* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @CURLAUTH_BASIC, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %46 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %52 = call i32 @Curl_checkProxyheaders(%struct.connectdata* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %50, %44, %41
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %76, label %57

57:                                               ; preds = %54
  %58 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %59 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %65 = call i32 @Curl_checkheaders(%struct.connectdata* %64, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %76, label %67

67:                                               ; preds = %63, %50
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %12, align 8
  %68 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i64 @http_output_basic(%struct.connectdata* %68, i32 %69)
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i64, i64* %13, align 8
  store i64 %74, i64* %6, align 8
  br label %170

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %63, %57, %54
  %77 = load i8*, i8** @TRUE, align 8
  %78 = load %struct.auth*, %struct.auth** %8, align 8
  %79 = getelementptr inbounds %struct.auth, %struct.auth* %78, i32 0, i32 2
  store i8* %77, i8** %79, align 8
  br label %80

80:                                               ; preds = %76, %35
  br label %81

81:                                               ; preds = %80, %34
  %82 = load %struct.auth*, %struct.auth** %8, align 8
  %83 = getelementptr inbounds %struct.auth, %struct.auth* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CURLAUTH_BEARER, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %111

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %107, label %90

90:                                               ; preds = %87
  %91 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %92 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %90
  %96 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %97 = call i32 @Curl_checkheaders(%struct.connectdata* %96, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %95
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %12, align 8
  %100 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %101 = call i64 @http_output_bearer(%struct.connectdata* %100)
  store i64 %101, i64* %13, align 8
  %102 = load i64, i64* %13, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i64, i64* %13, align 8
  store i64 %105, i64* %6, align 8
  br label %170

106:                                              ; preds = %99
  br label %107

107:                                              ; preds = %106, %95, %90, %87
  %108 = load i8*, i8** @TRUE, align 8
  %109 = load %struct.auth*, %struct.auth** %8, align 8
  %110 = getelementptr inbounds %struct.auth, %struct.auth* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  br label %111

111:                                              ; preds = %107, %81
  %112 = load i8*, i8** %12, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %164

114:                                              ; preds = %111
  %115 = load %struct.Curl_easy*, %struct.Curl_easy** %14, align 8
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  %120 = load i8*, i8** %12, align 8
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %137

123:                                              ; preds = %114
  %124 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %125 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %123
  %130 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %131 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  br label %135

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134, %129
  %136 = phi i8* [ %133, %129 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %134 ]
  br label %149

137:                                              ; preds = %114
  %138 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %139 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.connectdata*, %struct.connectdata** %7, align 8
  %144 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  br label %147

146:                                              ; preds = %137
  br label %147

147:                                              ; preds = %146, %142
  %148 = phi i8* [ %145, %142 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i64 0, i64 0), %146 ]
  br label %149

149:                                              ; preds = %147, %135
  %150 = phi i8* [ %136, %135 ], [ %148, %147 ]
  %151 = call i32 @infof(%struct.Curl_easy* %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i8* %119, i8* %120, i8* %150)
  %152 = load %struct.auth*, %struct.auth** %8, align 8
  %153 = getelementptr inbounds %struct.auth, %struct.auth* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %158, label %156

156:                                              ; preds = %149
  %157 = load i8*, i8** @TRUE, align 8
  br label %160

158:                                              ; preds = %149
  %159 = load i8*, i8** @FALSE, align 8
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i8* [ %157, %156 ], [ %159, %158 ]
  %162 = load %struct.auth*, %struct.auth** %8, align 8
  %163 = getelementptr inbounds %struct.auth, %struct.auth* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  br label %168

164:                                              ; preds = %111
  %165 = load i8*, i8** @FALSE, align 8
  %166 = load %struct.auth*, %struct.auth** %8, align 8
  %167 = getelementptr inbounds %struct.auth, %struct.auth* %166, i32 0, i32 1
  store i8* %165, i8** %167, align 8
  br label %168

168:                                              ; preds = %164, %160
  %169 = load i64, i64* @CURLE_OK, align 8
  store i64 %169, i64* %6, align 8
  br label %170

170:                                              ; preds = %168, %104, %73, %32
  %171 = load i64, i64* %6, align 8
  ret i64 %171
}

declare dso_local i64 @Curl_output_digest(%struct.connectdata*, i32, i8*, i8*) #1

declare dso_local i32 @Curl_checkProxyheaders(%struct.connectdata*, i8*) #1

declare dso_local i32 @Curl_checkheaders(%struct.connectdata*, i8*) #1

declare dso_local i64 @http_output_basic(%struct.connectdata*, i32) #1

declare dso_local i64 @http_output_bearer(%struct.connectdata*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
