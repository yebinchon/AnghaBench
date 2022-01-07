; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_state_ehlo_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_smtp.c_smtp_state_ehlo_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_9__*, %struct.TYPE_6__, %struct.Curl_easy* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { %struct.smtp_conn }
%struct.smtp_conn = type { i8*, %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@CURLUSESSL_TRY = common dso_local global i64 0, align 8
@FIRSTSOCKET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"Remote access denied: %d\00", align 1
@CURLE_REMOTE_ACCESS_DENIED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"STARTTLS\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"SIZE\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"AUTH \00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"STARTTLS not supported.\00", align 1
@CURLE_USE_SSL_FAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Unexpectedly short EHLO response\00", align 1
@CURLE_WEIRD_SERVER_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @smtp_state_ehlo_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smtp_state_ehlo_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.smtp_conn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* @CURLE_OK, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 2
  %18 = load %struct.Curl_easy*, %struct.Curl_easy** %17, align 8
  store %struct.Curl_easy* %18, %struct.Curl_easy** %8, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %20 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store %struct.smtp_conn* %21, %struct.smtp_conn** %9, align 8
  %22 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %23 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %10, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = sdiv i32 %29, 100
  %31 = icmp ne i32 %30, 2
  br i1 %31, label %32, label %60

32:                                               ; preds = %3
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %37 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CURLUSESSL_TRY, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %51, label %42

42:                                               ; preds = %35
  %43 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %44 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = load i64, i64* @FIRSTSOCKET, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %42, %35
  %52 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %53 = call i32 @smtp_perform_helo(%struct.connectdata* %52)
  store i32 %53, i32* %7, align 4
  br label %59

54:                                               ; preds = %42
  %55 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %55, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @CURLE_REMOTE_ACCESS_DENIED, align 4
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %54, %51
  br label %258

60:                                               ; preds = %32, %3
  %61 = load i64, i64* %11, align 8
  %62 = icmp uge i64 %61, 4
  br i1 %62, label %63, label %253

63:                                               ; preds = %60
  %64 = load i8*, i8** %10, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 4
  store i8* %65, i8** %10, align 8
  %66 = load i64, i64* %11, align 8
  %67 = sub i64 %66, 4
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %11, align 8
  %69 = icmp uge i64 %68, 8
  br i1 %69, label %70, label %78

70:                                               ; preds = %63
  %71 = load i8*, i8** %10, align 8
  %72 = call i32 @memcmp(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i8*, i8** @TRUE, align 8
  %76 = load %struct.smtp_conn*, %struct.smtp_conn** %9, align 8
  %77 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %76, i32 0, i32 0
  store i8* %75, i8** %77, align 8
  br label %206

78:                                               ; preds = %70, %63
  %79 = load i64, i64* %11, align 8
  %80 = icmp uge i64 %79, 4
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = load i8*, i8** %10, align 8
  %83 = call i32 @memcmp(i8* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** @TRUE, align 8
  %87 = load %struct.smtp_conn*, %struct.smtp_conn** %9, align 8
  %88 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  br label %205

89:                                               ; preds = %81, %78
  %90 = load i64, i64* %11, align 8
  %91 = icmp uge i64 %90, 5
  br i1 %91, label %92, label %204

92:                                               ; preds = %89
  %93 = load i8*, i8** %10, align 8
  %94 = call i32 @memcmp(i8* %93, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %204, label %96

96:                                               ; preds = %92
  %97 = load i8*, i8** @TRUE, align 8
  %98 = load %struct.smtp_conn*, %struct.smtp_conn** %9, align 8
  %99 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 5
  store i8* %101, i8** %10, align 8
  %102 = load i64, i64* %11, align 8
  %103 = sub i64 %102, 5
  store i64 %103, i64* %11, align 8
  br label %104

104:                                              ; preds = %196, %96
  br label %105

105:                                              ; preds = %132, %104
  %106 = load i64, i64* %11, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %105
  %109 = load i8*, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = sext i8 %110 to i32
  %112 = icmp eq i32 %111, 32
  br i1 %112, label %128, label %113

113:                                              ; preds = %108
  %114 = load i8*, i8** %10, align 8
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 9
  br i1 %117, label %128, label %118

118:                                              ; preds = %113
  %119 = load i8*, i8** %10, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 13
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load i8*, i8** %10, align 8
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp eq i32 %126, 10
  br label %128

128:                                              ; preds = %123, %118, %113, %108
  %129 = phi i1 [ true, %118 ], [ true, %113 ], [ true, %108 ], [ %127, %123 ]
  br label %130

130:                                              ; preds = %128, %105
  %131 = phi i1 [ false, %105 ], [ %129, %128 ]
  br i1 %131, label %132, label %137

132:                                              ; preds = %130
  %133 = load i8*, i8** %10, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %10, align 8
  %135 = load i64, i64* %11, align 8
  %136 = add i64 %135, -1
  store i64 %136, i64* %11, align 8
  br label %105

137:                                              ; preds = %130
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137
  br label %203

141:                                              ; preds = %137
  store i64 0, i64* %13, align 8
  br label %142

142:                                              ; preds = %176, %141
  %143 = load i64, i64* %13, align 8
  %144 = load i64, i64* %11, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %174

146:                                              ; preds = %142
  %147 = load i8*, i8** %10, align 8
  %148 = load i64, i64* %13, align 8
  %149 = getelementptr inbounds i8, i8* %147, i64 %148
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 32
  br i1 %152, label %153, label %174

153:                                              ; preds = %146
  %154 = load i8*, i8** %10, align 8
  %155 = load i64, i64* %13, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = load i8, i8* %156, align 1
  %158 = sext i8 %157 to i32
  %159 = icmp ne i32 %158, 9
  br i1 %159, label %160, label %174

160:                                              ; preds = %153
  %161 = load i8*, i8** %10, align 8
  %162 = load i64, i64* %13, align 8
  %163 = getelementptr inbounds i8, i8* %161, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 13
  br i1 %166, label %167, label %174

167:                                              ; preds = %160
  %168 = load i8*, i8** %10, align 8
  %169 = load i64, i64* %13, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp ne i32 %172, 10
  br label %174

174:                                              ; preds = %167, %160, %153, %146, %142
  %175 = phi i1 [ false, %160 ], [ false, %153 ], [ false, %146 ], [ false, %142 ], [ %173, %167 ]
  br i1 %175, label %176, label %179

176:                                              ; preds = %174
  %177 = load i64, i64* %13, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %13, align 8
  br label %142

179:                                              ; preds = %174
  %180 = load i8*, i8** %10, align 8
  %181 = load i64, i64* %13, align 8
  %182 = call i32 @Curl_sasl_decode_mech(i8* %180, i64 %181, i64* %12)
  store i32 %182, i32* %14, align 4
  %183 = load i32, i32* %14, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %179
  %186 = load i64, i64* %12, align 8
  %187 = load i64, i64* %13, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %196

189:                                              ; preds = %185
  %190 = load i32, i32* %14, align 4
  %191 = load %struct.smtp_conn*, %struct.smtp_conn** %9, align 8
  %192 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %190
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %189, %185, %179
  %197 = load i64, i64* %13, align 8
  %198 = load i8*, i8** %10, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 %197
  store i8* %199, i8** %10, align 8
  %200 = load i64, i64* %13, align 8
  %201 = load i64, i64* %11, align 8
  %202 = sub i64 %201, %200
  store i64 %202, i64* %11, align 8
  br label %104

203:                                              ; preds = %140
  br label %204

204:                                              ; preds = %203, %92, %89
  br label %205

205:                                              ; preds = %204, %85
  br label %206

206:                                              ; preds = %205, %74
  %207 = load i32, i32* %5, align 4
  %208 = icmp ne i32 %207, 1
  br i1 %208, label %209, label %252

209:                                              ; preds = %206
  %210 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %211 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %248

215:                                              ; preds = %209
  %216 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %217 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %216, i32 0, i32 0
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = load i64, i64* @FIRSTSOCKET, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %248, label %224

224:                                              ; preds = %215
  %225 = load %struct.smtp_conn*, %struct.smtp_conn** %9, align 8
  %226 = getelementptr inbounds %struct.smtp_conn, %struct.smtp_conn* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %224
  %230 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %231 = call i32 @smtp_perform_starttls(%struct.connectdata* %230)
  store i32 %231, i32* %7, align 4
  br label %247

232:                                              ; preds = %224
  %233 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %234 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @CURLUSESSL_TRY, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %232
  %240 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %241 = call i32 @smtp_perform_authentication(%struct.connectdata* %240)
  store i32 %241, i32* %7, align 4
  br label %246

242:                                              ; preds = %232
  %243 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %244 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %243, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %245 = load i32, i32* @CURLE_USE_SSL_FAILED, align 4
  store i32 %245, i32* %7, align 4
  br label %246

246:                                              ; preds = %242, %239
  br label %247

247:                                              ; preds = %246, %229
  br label %251

248:                                              ; preds = %215, %209
  %249 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %250 = call i32 @smtp_perform_authentication(%struct.connectdata* %249)
  store i32 %250, i32* %7, align 4
  br label %251

251:                                              ; preds = %248, %247
  br label %252

252:                                              ; preds = %251, %206
  br label %257

253:                                              ; preds = %60
  %254 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %255 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %254, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %256 = load i32, i32* @CURLE_WEIRD_SERVER_REPLY, align 4
  store i32 %256, i32* %7, align 4
  br label %257

257:                                              ; preds = %253, %252
  br label %258

258:                                              ; preds = %257, %59
  %259 = load i32, i32* %7, align 4
  ret i32 %259
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @smtp_perform_helo(%struct.connectdata*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @Curl_sasl_decode_mech(i8*, i64, i64*) #1

declare dso_local i32 @smtp_perform_starttls(%struct.connectdata*) #1

declare dso_local i32 @smtp_perform_authentication(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
