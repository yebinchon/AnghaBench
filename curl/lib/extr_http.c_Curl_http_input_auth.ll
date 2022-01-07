; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_input_auth.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_http.c_Curl_http_input_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { i32, i32, %struct.Curl_easy* }
%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i8*, %struct.auth, %struct.auth }
%struct.auth = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"Digest\00", align 1
@CURLAUTH_DIGEST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"Ignoring duplicate digest auth header.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Authentication problem. Ignoring this.\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"Basic\00", align 1
@CURLAUTH_BASIC = common dso_local global i64 0, align 8
@CURLAUTH_NONE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"Bearer\00", align 1
@CURLAUTH_BEARER = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i64 0, align 8
@CURLAUTH_NEGOTIATE = common dso_local global i64 0, align 8
@CURLAUTH_NTLM = common dso_local global i64 0, align 8
@CURLAUTH_NTLM_WB = common dso_local global i64 0, align 8
@CURLE_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@GSS_AUTHRECV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_http_input_auth(%struct.connectdata* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.auth*, align 8
  %10 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 2
  %13 = load %struct.Curl_easy*, %struct.Curl_easy** %12, align 8
  store %struct.Curl_easy* %13, %struct.Curl_easy** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %3
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %18 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i64* %19, i64** %8, align 8
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 2
  store %struct.auth* %22, %struct.auth** %9, align 8
  br label %30

23:                                               ; preds = %3
  %24 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %25 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  store i64* %26, i64** %8, align 8
  %27 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %28 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  store %struct.auth* %29, %struct.auth** %9, align 8
  br label %30

30:                                               ; preds = %23, %16
  br label %31

31:                                               ; preds = %182, %30
  %32 = load i8*, i8** %6, align 8
  %33 = load i8, i8* %32, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %35, label %183

35:                                               ; preds = %31
  %36 = load i8*, i8** %6, align 8
  %37 = call i64 @checkprefix(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %35
  %40 = load %struct.auth*, %struct.auth** %9, align 8
  %41 = getelementptr inbounds %struct.auth, %struct.auth* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CURLAUTH_DIGEST, align 8
  %44 = and i64 %42, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %48 = call i32 @infof(%struct.Curl_easy* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %77

49:                                               ; preds = %39
  %50 = call i64 (...) @Curl_auth_is_digest_supported()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i64, i64* @CURLAUTH_DIGEST, align 8
  %54 = load i64*, i64** %8, align 8
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, %53
  store i64 %56, i64* %54, align 8
  %57 = load i64, i64* @CURLAUTH_DIGEST, align 8
  %58 = load %struct.auth*, %struct.auth** %9, align 8
  %59 = getelementptr inbounds %struct.auth, %struct.auth* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = or i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i64 @Curl_input_digest(%struct.connectdata* %62, i32 %63, i8* %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %52
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %70 = call i32 @infof(%struct.Curl_easy* %69, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i8*, i8** @TRUE, align 8
  %72 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %73 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i8* %71, i8** %74, align 8
  br label %75

75:                                               ; preds = %68, %52
  br label %76

76:                                               ; preds = %75, %49
  br label %77

77:                                               ; preds = %76, %46
  br label %142

78:                                               ; preds = %35
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 @checkprefix(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %109

82:                                               ; preds = %78
  %83 = load i64, i64* @CURLAUTH_BASIC, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = or i64 %85, %83
  store i64 %86, i64* %84, align 8
  %87 = load i64, i64* @CURLAUTH_BASIC, align 8
  %88 = load %struct.auth*, %struct.auth** %9, align 8
  %89 = getelementptr inbounds %struct.auth, %struct.auth* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.auth*, %struct.auth** %9, align 8
  %93 = getelementptr inbounds %struct.auth, %struct.auth* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @CURLAUTH_BASIC, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %108

97:                                               ; preds = %82
  %98 = load i8*, i8** @CURLAUTH_NONE, align 8
  %99 = ptrtoint i8* %98 to i64
  %100 = load %struct.auth*, %struct.auth** %9, align 8
  %101 = getelementptr inbounds %struct.auth, %struct.auth* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %103 = call i32 @infof(%struct.Curl_easy* %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i8*, i8** @TRUE, align 8
  %105 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %106 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  store i8* %104, i8** %107, align 8
  br label %108

108:                                              ; preds = %97, %82
  br label %141

109:                                              ; preds = %78
  %110 = load i8*, i8** %6, align 8
  %111 = call i64 @checkprefix(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %140

113:                                              ; preds = %109
  %114 = load i64, i64* @CURLAUTH_BEARER, align 8
  %115 = load i64*, i64** %8, align 8
  %116 = load i64, i64* %115, align 8
  %117 = or i64 %116, %114
  store i64 %117, i64* %115, align 8
  %118 = load i64, i64* @CURLAUTH_BEARER, align 8
  %119 = load %struct.auth*, %struct.auth** %9, align 8
  %120 = getelementptr inbounds %struct.auth, %struct.auth* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = or i64 %121, %118
  store i64 %122, i64* %120, align 8
  %123 = load %struct.auth*, %struct.auth** %9, align 8
  %124 = getelementptr inbounds %struct.auth, %struct.auth* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @CURLAUTH_BEARER, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %139

128:                                              ; preds = %113
  %129 = load i8*, i8** @CURLAUTH_NONE, align 8
  %130 = ptrtoint i8* %129 to i64
  %131 = load %struct.auth*, %struct.auth** %9, align 8
  %132 = getelementptr inbounds %struct.auth, %struct.auth* %131, i32 0, i32 0
  store i64 %130, i64* %132, align 8
  %133 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %134 = call i32 @infof(%struct.Curl_easy* %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %135 = load i8*, i8** @TRUE, align 8
  %136 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %137 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  store i8* %135, i8** %138, align 8
  br label %139

139:                                              ; preds = %128, %113
  br label %140

140:                                              ; preds = %139, %109
  br label %141

141:                                              ; preds = %140, %108
  br label %142

142:                                              ; preds = %141, %77
  br label %143

143:                                              ; preds = %155, %142
  %144 = load i8*, i8** %6, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i8*, i8** %6, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 44
  br label %153

153:                                              ; preds = %148, %143
  %154 = phi i1 [ false, %143 ], [ %152, %148 ]
  br i1 %154, label %155, label %158

155:                                              ; preds = %153
  %156 = load i8*, i8** %6, align 8
  %157 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %157, i8** %6, align 8
  br label %143

158:                                              ; preds = %153
  %159 = load i8*, i8** %6, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 44
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i8*, i8** %6, align 8
  %165 = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %165, i8** %6, align 8
  br label %166

166:                                              ; preds = %163, %158
  br label %167

167:                                              ; preds = %179, %166
  %168 = load i8*, i8** %6, align 8
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %167
  %173 = load i8*, i8** %6, align 8
  %174 = load i8, i8* %173, align 1
  %175 = call i64 @ISSPACE(i8 signext %174)
  %176 = icmp ne i64 %175, 0
  br label %177

177:                                              ; preds = %172, %167
  %178 = phi i1 [ false, %167 ], [ %176, %172 ]
  br i1 %178, label %179, label %182

179:                                              ; preds = %177
  %180 = load i8*, i8** %6, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %6, align 8
  br label %167

182:                                              ; preds = %177
  br label %31

183:                                              ; preds = %31
  %184 = load i64, i64* @CURLE_OK, align 8
  ret i64 %184
}

declare dso_local i64 @checkprefix(i8*, i8*) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*) #1

declare dso_local i64 @Curl_auth_is_digest_supported(...) #1

declare dso_local i64 @Curl_input_digest(%struct.connectdata*, i32, i8*) #1

declare dso_local i64 @ISSPACE(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
