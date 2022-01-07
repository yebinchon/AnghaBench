; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_pop3.c_Curl_pop3_write.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_pop3.c_Curl_pop3_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__, %struct.Curl_easy* }
%struct.TYPE_2__ = type { %struct.pop3_conn }
%struct.pop3_conn = type { i64, i64 }
%struct.Curl_easy = type { %struct.SingleRequest }
%struct.SingleRequest = type { i32 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CLIENTWRITE_BODY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@POP3_EOB = common dso_local global i64 0, align 8
@POP3_EOB_LEN = common dso_local global i64 0, align 8
@KEEP_RECV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @Curl_pop3_write(%struct.connectdata* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.Curl_easy*, align 8
  %10 = alloca %struct.SingleRequest*, align 8
  %11 = alloca %struct.pop3_conn*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i64, i64* @CURLE_OK, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %18 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %17, i32 0, i32 1
  %19 = load %struct.Curl_easy*, %struct.Curl_easy** %18, align 8
  store %struct.Curl_easy* %19, %struct.Curl_easy** %9, align 8
  %20 = load %struct.Curl_easy*, %struct.Curl_easy** %9, align 8
  %21 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %20, i32 0, i32 0
  store %struct.SingleRequest* %21, %struct.SingleRequest** %10, align 8
  %22 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %23 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.pop3_conn* %24, %struct.pop3_conn** %11, align 8
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %12, align 4
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %26

26:                                               ; preds = %183, %3
  %27 = load i64, i64* %14, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %186

30:                                               ; preds = %26
  %31 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %32 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %15, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i64, i64* %14, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %126 [
    i32 13, label %39
    i32 10, label %83
    i32 46, label %102
  ]

39:                                               ; preds = %30
  %40 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %41 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %46 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load i64, i64* %14, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %44
  %52 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %53 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %54 = load i8*, i8** %6, align 8
  %55 = load i64, i64* %13, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %13, align 8
  %59 = sub i64 %57, %58
  %60 = call i64 @Curl_client_write(%struct.connectdata* %52, i32 %53, i8* %56, i64 %59)
  store i64 %60, i64* %8, align 8
  %61 = load i64, i64* %8, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i64, i64* %8, align 8
  store i64 %64, i64* %4, align 8
  br label %231

65:                                               ; preds = %51
  %66 = load i64, i64* %14, align 8
  store i64 %66, i64* %13, align 8
  br label %67

67:                                               ; preds = %65, %44
  br label %82

68:                                               ; preds = %39
  %69 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %70 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 3
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %75 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %75, align 8
  br label %81

78:                                               ; preds = %68
  %79 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %80 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %79, i32 0, i32 0
  store i64 1, i64* %80, align 8
  br label %81

81:                                               ; preds = %78, %73
  br label %82

82:                                               ; preds = %81, %67
  br label %129

83:                                               ; preds = %30
  %84 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %85 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 1
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %90 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %91, 4
  br i1 %92, label %93, label %98

93:                                               ; preds = %88, %83
  %94 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %95 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  br label %101

98:                                               ; preds = %88
  %99 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %100 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %99, i32 0, i32 0
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %93
  br label %129

102:                                              ; preds = %30
  %103 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %104 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 2
  br i1 %106, label %107, label %112

107:                                              ; preds = %102
  %108 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %109 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add i64 %110, 1
  store i64 %111, i64* %109, align 8
  br label %125

112:                                              ; preds = %102
  %113 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %114 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 3
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @TRUE, align 4
  store i32 %118, i32* %12, align 4
  %119 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %120 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  br label %124

121:                                              ; preds = %112
  %122 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %123 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %117
  br label %125

125:                                              ; preds = %124, %107
  br label %129

126:                                              ; preds = %30
  %127 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %128 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  br label %129

129:                                              ; preds = %126, %125, %101, %82
  %130 = load i64, i64* %15, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %182

132:                                              ; preds = %129
  %133 = load i64, i64* %15, align 8
  %134 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %135 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp uge i64 %133, %136
  br i1 %137, label %138, label %182

138:                                              ; preds = %132
  br label %139

139:                                              ; preds = %149, %138
  %140 = load i64, i64* %15, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %144 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %142, %139
  %148 = phi i1 [ false, %139 ], [ %146, %142 ]
  br i1 %148, label %149, label %156

149:                                              ; preds = %147
  %150 = load i64, i64* %15, align 8
  %151 = add i64 %150, -1
  store i64 %151, i64* %15, align 8
  %152 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %153 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = add nsw i64 %154, -1
  store i64 %155, i64* %153, align 8
  br label %139

156:                                              ; preds = %147
  %157 = load i64, i64* %15, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %156
  %160 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %161 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %162 = load i64, i64* @POP3_EOB, align 8
  %163 = inttoptr i64 %162 to i8*
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load i64, i64* %15, align 8
  %168 = sub i64 %167, 1
  br label %171

169:                                              ; preds = %159
  %170 = load i64, i64* %15, align 8
  br label %171

171:                                              ; preds = %169, %166
  %172 = phi i64 [ %168, %166 ], [ %170, %169 ]
  %173 = call i64 @Curl_client_write(%struct.connectdata* %160, i32 %161, i8* %163, i64 %172)
  store i64 %173, i64* %8, align 8
  %174 = load i64, i64* %8, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load i64, i64* %8, align 8
  store i64 %177, i64* %4, align 8
  br label %231

178:                                              ; preds = %171
  %179 = load i64, i64* %14, align 8
  store i64 %179, i64* %13, align 8
  %180 = load i32, i32* @FALSE, align 4
  store i32 %180, i32* %12, align 4
  br label %181

181:                                              ; preds = %178, %156
  br label %182

182:                                              ; preds = %181, %132, %129
  br label %183

183:                                              ; preds = %182
  %184 = load i64, i64* %14, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %14, align 8
  br label %26

186:                                              ; preds = %26
  %187 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %188 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @POP3_EOB_LEN, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %207

192:                                              ; preds = %186
  %193 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %194 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %195 = load i64, i64* @POP3_EOB, align 8
  %196 = inttoptr i64 %195 to i8*
  %197 = call i64 @Curl_client_write(%struct.connectdata* %193, i32 %194, i8* %196, i64 2)
  store i64 %197, i64* %8, align 8
  %198 = load i32, i32* @KEEP_RECV, align 4
  %199 = xor i32 %198, -1
  %200 = load %struct.SingleRequest*, %struct.SingleRequest** %10, align 8
  %201 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, %199
  store i32 %203, i32* %201, align 4
  %204 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %205 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %204, i32 0, i32 0
  store i64 0, i64* %205, align 8
  %206 = load i64, i64* %8, align 8
  store i64 %206, i64* %4, align 8
  br label %231

207:                                              ; preds = %186
  %208 = load %struct.pop3_conn*, %struct.pop3_conn** %11, align 8
  %209 = getelementptr inbounds %struct.pop3_conn, %struct.pop3_conn* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %207
  %213 = load i64, i64* @CURLE_OK, align 8
  store i64 %213, i64* %4, align 8
  br label %231

214:                                              ; preds = %207
  %215 = load i64, i64* %7, align 8
  %216 = load i64, i64* %13, align 8
  %217 = sub i64 %215, %216
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %214
  %220 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %221 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %222 = load i8*, i8** %6, align 8
  %223 = load i64, i64* %13, align 8
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  %225 = load i64, i64* %7, align 8
  %226 = load i64, i64* %13, align 8
  %227 = sub i64 %225, %226
  %228 = call i64 @Curl_client_write(%struct.connectdata* %220, i32 %221, i8* %224, i64 %227)
  store i64 %228, i64* %8, align 8
  br label %229

229:                                              ; preds = %219, %214
  %230 = load i64, i64* %8, align 8
  store i64 %230, i64* %4, align 8
  br label %231

231:                                              ; preds = %229, %212, %192, %176, %63
  %232 = load i64, i64* %4, align 8
  ret i64 %232
}

declare dso_local i64 @Curl_client_write(%struct.connectdata*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
