; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_capability_resp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_state_capability_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_9__*, %struct.TYPE_6__, %struct.Curl_easy* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.imap_conn }
%struct.imap_conn = type { i8*, %struct.TYPE_8__, i8*, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i8* }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"STARTTLS\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"LOGINDISABLED\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"SASL-IR\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"AUTH=\00", align 1
@IMAP_RESP_OK = common dso_local global i32 0, align 4
@FIRSTSOCKET = common dso_local global i64 0, align 8
@CURLUSESSL_TRY = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"STARTTLS not supported.\00", align 1
@CURLE_USE_SSL_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @imap_state_capability_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_state_capability_resp(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.connectdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Curl_easy*, align 8
  %9 = alloca %struct.imap_conn*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @CURLE_OK, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 2
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  store %struct.Curl_easy* %17, %struct.Curl_easy** %8, align 8
  %18 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.imap_conn* %20, %struct.imap_conn** %9, align 8
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %22 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 42
  br i1 %27, label %28, label %180

28:                                               ; preds = %3
  %29 = load i8*, i8** %10, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  store i8* %30, i8** %10, align 8
  br label %31

31:                                               ; preds = %175, %28
  br label %32

32:                                               ; preds = %61, %31
  %33 = load i8*, i8** %10, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %32
  %38 = load i8*, i8** %10, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 32
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load i8*, i8** %10, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 9
  br i1 %46, label %57, label %47

47:                                               ; preds = %42
  %48 = load i8*, i8** %10, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %10, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br label %57

57:                                               ; preds = %52, %47, %42, %37
  %58 = phi i1 [ true, %47 ], [ true, %42 ], [ true, %37 ], [ %56, %52 ]
  br label %59

59:                                               ; preds = %57, %32
  %60 = phi i1 [ false, %32 ], [ %58, %57 ]
  br i1 %60, label %61, label %64

61:                                               ; preds = %59
  %62 = load i8*, i8** %10, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %10, align 8
  br label %32

64:                                               ; preds = %59
  %65 = load i8*, i8** %10, align 8
  %66 = load i8, i8* %65, align 1
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %179

69:                                               ; preds = %64
  store i64 0, i64* %11, align 8
  br label %70

70:                                               ; preds = %107, %69
  %71 = load i8*, i8** %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %70
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 32
  br i1 %83, label %84, label %105

84:                                               ; preds = %77
  %85 = load i8*, i8** %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp ne i32 %89, 9
  br i1 %90, label %91, label %105

91:                                               ; preds = %84
  %92 = load i8*, i8** %10, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 13
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load i8*, i8** %10, align 8
  %100 = load i64, i64* %11, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 10
  br label %105

105:                                              ; preds = %98, %91, %84, %77, %70
  %106 = phi i1 [ false, %91 ], [ false, %84 ], [ false, %77 ], [ false, %70 ], [ %104, %98 ]
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = load i64, i64* %11, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %11, align 8
  br label %70

110:                                              ; preds = %105
  %111 = load i64, i64* %11, align 8
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load i8*, i8** %10, align 8
  %115 = call i32 @memcmp(i8* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %113
  %118 = load i8*, i8** @TRUE, align 8
  %119 = load %struct.imap_conn*, %struct.imap_conn** %9, align 8
  %120 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %119, i32 0, i32 0
  store i8* %118, i8** %120, align 8
  br label %175

121:                                              ; preds = %113, %110
  %122 = load i64, i64* %11, align 8
  %123 = icmp eq i64 %122, 13
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load i8*, i8** %10, align 8
  %126 = call i32 @memcmp(i8* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 13)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

128:                                              ; preds = %124
  %129 = load i8*, i8** @TRUE, align 8
  %130 = load %struct.imap_conn*, %struct.imap_conn** %9, align 8
  %131 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  br label %174

132:                                              ; preds = %124, %121
  %133 = load i64, i64* %11, align 8
  %134 = icmp eq i64 %133, 7
  br i1 %134, label %135, label %143

135:                                              ; preds = %132
  %136 = load i8*, i8** %10, align 8
  %137 = call i32 @memcmp(i8* %136, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %135
  %140 = load i8*, i8** @TRUE, align 8
  %141 = load %struct.imap_conn*, %struct.imap_conn** %9, align 8
  %142 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  br label %173

143:                                              ; preds = %135, %132
  %144 = load i64, i64* %11, align 8
  %145 = icmp ugt i64 %144, 5
  br i1 %145, label %146, label %172

146:                                              ; preds = %143
  %147 = load i8*, i8** %10, align 8
  %148 = call i32 @memcmp(i8* %147, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 5)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %172, label %150

150:                                              ; preds = %146
  %151 = load i8*, i8** %10, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 5
  store i8* %152, i8** %10, align 8
  %153 = load i64, i64* %11, align 8
  %154 = sub i64 %153, 5
  store i64 %154, i64* %11, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = load i64, i64* %11, align 8
  %157 = call i32 @Curl_sasl_decode_mech(i8* %155, i64 %156, i64* %12)
  store i32 %157, i32* %13, align 4
  %158 = load i32, i32* %13, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %150
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %11, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %160
  %165 = load i32, i32* %13, align 4
  %166 = load %struct.imap_conn*, %struct.imap_conn** %9, align 8
  %167 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %165
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %164, %160, %150
  br label %172

172:                                              ; preds = %171, %146, %143
  br label %173

173:                                              ; preds = %172, %139
  br label %174

174:                                              ; preds = %173, %128
  br label %175

175:                                              ; preds = %174, %117
  %176 = load i64, i64* %11, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 %176
  store i8* %178, i8** %10, align 8
  br label %31

179:                                              ; preds = %68
  br label %231

180:                                              ; preds = %3
  %181 = load i32, i32* %5, align 4
  %182 = load i32, i32* @IMAP_RESP_OK, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %227

184:                                              ; preds = %180
  %185 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %186 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %223

190:                                              ; preds = %184
  %191 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %192 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %191, i32 0, i32 0
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = load i64, i64* @FIRSTSOCKET, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %223, label %199

199:                                              ; preds = %190
  %200 = load %struct.imap_conn*, %struct.imap_conn** %9, align 8
  %201 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %206 = call i32 @imap_perform_starttls(%struct.connectdata* %205)
  store i32 %206, i32* %7, align 4
  br label %222

207:                                              ; preds = %199
  %208 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %209 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @CURLUSESSL_TRY, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %216 = call i32 @imap_perform_authentication(%struct.connectdata* %215)
  store i32 %216, i32* %7, align 4
  br label %221

217:                                              ; preds = %207
  %218 = load %struct.Curl_easy*, %struct.Curl_easy** %8, align 8
  %219 = call i32 @failf(%struct.Curl_easy* %218, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %220 = load i32, i32* @CURLE_USE_SSL_FAILED, align 4
  store i32 %220, i32* %7, align 4
  br label %221

221:                                              ; preds = %217, %214
  br label %222

222:                                              ; preds = %221, %204
  br label %226

223:                                              ; preds = %190, %184
  %224 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %225 = call i32 @imap_perform_authentication(%struct.connectdata* %224)
  store i32 %225, i32* %7, align 4
  br label %226

226:                                              ; preds = %223, %222
  br label %230

227:                                              ; preds = %180
  %228 = load %struct.connectdata*, %struct.connectdata** %4, align 8
  %229 = call i32 @imap_perform_authentication(%struct.connectdata* %228)
  store i32 %229, i32* %7, align 4
  br label %230

230:                                              ; preds = %227, %226
  br label %231

231:                                              ; preds = %230, %179
  %232 = load i32, i32* %7, align 4
  ret i32 %232
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @Curl_sasl_decode_mech(i8*, i64, i64*) #1

declare dso_local i32 @imap_perform_starttls(%struct.connectdata*) #1

declare dso_local i32 @imap_perform_authentication(%struct.connectdata*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
