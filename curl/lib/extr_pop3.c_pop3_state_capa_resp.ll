; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_capa_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_pop3_state_capa_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_9__*, %struct.TYPE_6__, %struct.Curl_easy* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"STLS\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@POP3_TYPE_CLEARTEXT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"SASL \00", align 1
@POP3_TYPE_SASL = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i64 0, align 8
@CURLUSESSL_TRY = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"STLS not supported.\00", align 1
@CURLE_USE_SSL_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @pop3_state_capa_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop3_state_capa_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.pop3_conn*, align 8
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
  store %struct.pop3_conn* %21, %struct.pop3_conn** %9, align 8
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
  %30 = icmp eq i32 %29, 42
  br i1 %30, label %31, label %175

31:                                               ; preds = %3
  %32 = load i64, i64* %11, align 8
  %33 = icmp uge i64 %32, 4
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 @memcmp(i8* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @TRUE, align 8
  %40 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %41 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  br label %174

42:                                               ; preds = %34, %31
  %43 = load i64, i64* %11, align 8
  %44 = icmp uge i64 %43, 4
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i8*, i8** %10, align 8
  %47 = call i32 @memcmp(i8* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @POP3_TYPE_CLEARTEXT, align 4
  %51 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %52 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %173

55:                                               ; preds = %45, %42
  %56 = load i64, i64* %11, align 8
  %57 = icmp uge i64 %56, 5
  br i1 %57, label %58, label %172

58:                                               ; preds = %55
  %59 = load i8*, i8** %10, align 8
  %60 = call i32 @memcmp(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %172, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* @POP3_TYPE_SASL, align 4
  %64 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %65 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 5
  store i8* %69, i8** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = sub i64 %70, 5
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %164, %62
  br label %73

73:                                               ; preds = %100, %72
  %74 = load i64, i64* %11, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %73
  %77 = load i8*, i8** %10, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp eq i32 %79, 32
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = load i8*, i8** %10, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 9
  br i1 %85, label %96, label %86

86:                                               ; preds = %81
  %87 = load i8*, i8** %10, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 13
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = load i8*, i8** %10, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 10
  br label %96

96:                                               ; preds = %91, %86, %81, %76
  %97 = phi i1 [ true, %86 ], [ true, %81 ], [ true, %76 ], [ %95, %91 ]
  br label %98

98:                                               ; preds = %96, %73
  %99 = phi i1 [ false, %73 ], [ %97, %96 ]
  br i1 %99, label %100, label %105

100:                                              ; preds = %98
  %101 = load i8*, i8** %10, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %10, align 8
  %103 = load i64, i64* %11, align 8
  %104 = add i64 %103, -1
  store i64 %104, i64* %11, align 8
  br label %73

105:                                              ; preds = %98
  %106 = load i64, i64* %11, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %105
  br label %171

109:                                              ; preds = %105
  store i64 0, i64* %13, align 8
  br label %110

110:                                              ; preds = %144, %109
  %111 = load i64, i64* %13, align 8
  %112 = load i64, i64* %11, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %142

114:                                              ; preds = %110
  %115 = load i8*, i8** %10, align 8
  %116 = load i64, i64* %13, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp ne i32 %119, 32
  br i1 %120, label %121, label %142

121:                                              ; preds = %114
  %122 = load i8*, i8** %10, align 8
  %123 = load i64, i64* %13, align 8
  %124 = getelementptr inbounds i8, i8* %122, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp ne i32 %126, 9
  br i1 %127, label %128, label %142

128:                                              ; preds = %121
  %129 = load i8*, i8** %10, align 8
  %130 = load i64, i64* %13, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 13
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load i8*, i8** %10, align 8
  %137 = load i64, i64* %13, align 8
  %138 = getelementptr inbounds i8, i8* %136, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 10
  br label %142

142:                                              ; preds = %135, %128, %121, %114, %110
  %143 = phi i1 [ false, %128 ], [ false, %121 ], [ false, %114 ], [ false, %110 ], [ %141, %135 ]
  br i1 %143, label %144, label %147

144:                                              ; preds = %142
  %145 = load i64, i64* %13, align 8
  %146 = add i64 %145, 1
  store i64 %146, i64* %13, align 8
  br label %110

147:                                              ; preds = %142
  %148 = load i8*, i8** %10, align 8
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @Curl_sasl_decode_mech(i8* %148, i64 %149, i64* %12)
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %164

153:                                              ; preds = %147
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* %13, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load i32, i32* %14, align 4
  %159 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %160 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = or i32 %162, %158
  store i32 %163, i32* %161, align 8
  br label %164

164:                                              ; preds = %157, %153, %147
  %165 = load i64, i64* %13, align 8
  %166 = load i8*, i8** %10, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 %165
  store i8* %167, i8** %10, align 8
  %168 = load i64, i64* %13, align 8
  %169 = load i64, i64* %11, align 8
  %170 = sub i64 %169, %168
  store i64 %170, i64* %11, align 8
  br label %72

171:                                              ; preds = %108
  br label %172

172:                                              ; preds = %171, %58, %55
  br label %173

173:                                              ; preds = %172, %49
  br label %174

174:                                              ; preds = %173, %38
  br label %230

175:                                              ; preds = %3
  %176 = load i32, i32* %5, align 4
  %177 = icmp eq i32 %176, 43
  br i1 %177, label %178, label %221

178:                                              ; preds = %175
  %179 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %180 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %217

184:                                              ; preds = %178
  %185 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %186 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %185, i32 0, i32 0
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = load i64, i64* @FIRSTSOCKET, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %187, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %217, label %193

193:                                              ; preds = %184
  %194 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %195 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %200 = call i32 @pop3_perform_starttls(%struct.connectdata* %199)
  store i32 %200, i32* %7, align 4
  br label %216

201:                                              ; preds = %193
  %202 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %203 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @CURLUSESSL_TRY, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %201
  %209 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %210 = call i32 @pop3_perform_authentication(%struct.connectdata* %209)
  store i32 %210, i32* %7, align 4
  br label %215

211:                                              ; preds = %201
  %212 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %213 = call i32 @failf(%struct.Curl_easy* %212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %214 = load i32, i32* @CURLE_USE_SSL_FAILED, align 4
  store i32 %214, i32* %7, align 4
  br label %215

215:                                              ; preds = %211, %208
  br label %216

216:                                              ; preds = %215, %198
  br label %220

217:                                              ; preds = %184, %178
  %218 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %219 = call i32 @pop3_perform_authentication(%struct.connectdata* %218)
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %217, %216
  br label %229

221:                                              ; preds = %175
  %222 = load i32, i32* @POP3_TYPE_CLEARTEXT, align 4
  %223 = load %struct.pop3_conn*, %struct.pop3_conn** %9, align 8
  %224 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %228 = call i32 @pop3_perform_authentication(%struct.connectdata* %227)
  store i32 %228, i32* %7, align 4
  br label %229

229:                                              ; preds = %221, %220
  br label %230

230:                                              ; preds = %229, %174
  %231 = load i32, i32* %7, align 4
  ret i32 %231
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @Curl_sasl_decode_mech(i8*, i64, i64*) #1

declare dso_local i32 @pop3_perform_starttls(%struct.connectdata*) #1

declare dso_local i32 @pop3_perform_authentication(%struct.connectdata*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
