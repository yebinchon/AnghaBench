; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_pause.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_easy.c_curl_easy_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_2__, i64, %struct.connectdata*, %struct.SingleRequest }
%struct.TYPE_2__ = type { i32, i32, %struct.tempbuf* }
%struct.tempbuf = type { i32*, i32, i32 }
%struct.connectdata = type { %struct.Curl_easy* }
%struct.SingleRequest = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@KEEP_RECV_PAUSE = common dso_local global i32 0, align 4
@KEEP_SEND_PAUSE = common dso_local global i32 0, align 4
@CURLPAUSE_RECV = common dso_local global i32 0, align 4
@CURLPAUSE_SEND = common dso_local global i32 0, align 4
@EXPIRE_RUN_NOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @curl_easy_pause(%struct.Curl_easy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.SingleRequest*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [3 x %struct.tempbuf], align 16
  %12 = alloca %struct.connectdata*, align 8
  %13 = alloca %struct.Curl_easy*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 3
  store %struct.SingleRequest* %15, %struct.SingleRequest** %6, align 8
  %16 = load i32, i32* @CURLE_OK, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.SingleRequest*, %struct.SingleRequest** %6, align 8
  %18 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @KEEP_RECV_PAUSE, align 4
  %21 = load i32, i32* @KEEP_SEND_PAUSE, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = and i32 %19, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @CURLPAUSE_RECV, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @KEEP_RECV_PAUSE, align 4
  br label %32

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @CURLPAUSE_SEND, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @KEEP_SEND_PAUSE, align 4
  br label %41

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %40, %38
  %42 = phi i32 [ %39, %38 ], [ 0, %40 ]
  %43 = or i32 %33, %42
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.SingleRequest*, %struct.SingleRequest** %6, align 8
  %48 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @KEEP_RECV_PAUSE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %163, label %53

53:                                               ; preds = %41
  %54 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %55 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %163

59:                                               ; preds = %53
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %61 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %10, align 4
  %64 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %65 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %64, i32 0, i32 2
  %66 = load %struct.connectdata*, %struct.connectdata** %65, align 8
  store %struct.connectdata* %66, %struct.connectdata** %12, align 8
  store %struct.Curl_easy* null, %struct.Curl_easy** %13, align 8
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %95, %59
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %70 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ult i32 %68, %72
  br i1 %73, label %74, label %98

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds [3 x %struct.tempbuf], [3 x %struct.tempbuf]* %11, i64 0, i64 %76
  %78 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %79 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load %struct.tempbuf*, %struct.tempbuf** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.tempbuf, %struct.tempbuf* %81, i64 %83
  %85 = bitcast %struct.tempbuf* %77 to i8*
  %86 = bitcast %struct.tempbuf* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %85, i8* align 8 %86, i64 16, i1 false)
  %87 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %88 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load %struct.tempbuf*, %struct.tempbuf** %89, align 8
  %91 = load i32, i32* %9, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.tempbuf, %struct.tempbuf* %90, i64 %92
  %94 = getelementptr inbounds %struct.tempbuf, %struct.tempbuf* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %74
  %96 = load i32, i32* %9, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %67

98:                                               ; preds = %67
  %99 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %100 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  store i32 0, i32* %101, align 8
  %102 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %103 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %102, i32 0, i32 0
  %104 = load %struct.Curl_easy*, %struct.Curl_easy** %103, align 8
  %105 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %106 = icmp ne %struct.Curl_easy* %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %98
  %108 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %109 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %108, i32 0, i32 0
  %110 = load %struct.Curl_easy*, %struct.Curl_easy** %109, align 8
  store %struct.Curl_easy* %110, %struct.Curl_easy** %13, align 8
  %111 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %112 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %113 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %112, i32 0, i32 0
  store %struct.Curl_easy* %111, %struct.Curl_easy** %113, align 8
  br label %114

114:                                              ; preds = %107, %98
  store i32 0, i32* %9, align 4
  br label %115

115:                                              ; preds = %147, %114
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %10, align 4
  %118 = icmp ult i32 %116, %117
  br i1 %118, label %119, label %150

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %140, label %122

122:                                              ; preds = %119
  %123 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %124 = load i32, i32* %9, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds [3 x %struct.tempbuf], [3 x %struct.tempbuf]* %11, i64 0, i64 %125
  %127 = getelementptr inbounds %struct.tempbuf, %struct.tempbuf* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* %9, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [3 x %struct.tempbuf], [3 x %struct.tempbuf]* %11, i64 0, i64 %130
  %132 = getelementptr inbounds %struct.tempbuf, %struct.tempbuf* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 16
  %134 = load i32, i32* %9, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds [3 x %struct.tempbuf], [3 x %struct.tempbuf]* %11, i64 0, i64 %135
  %137 = getelementptr inbounds %struct.tempbuf, %struct.tempbuf* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @Curl_client_write(%struct.connectdata* %123, i32 %128, i32* %133, i32 %138)
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %122, %119
  %141 = load i32, i32* %9, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds [3 x %struct.tempbuf], [3 x %struct.tempbuf]* %11, i64 0, i64 %142
  %144 = getelementptr inbounds %struct.tempbuf, %struct.tempbuf* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 16
  %146 = call i32 @free(i32* %145)
  br label %147

147:                                              ; preds = %140
  %148 = load i32, i32* %9, align 4
  %149 = add i32 %148, 1
  store i32 %149, i32* %9, align 4
  br label %115

150:                                              ; preds = %115
  %151 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %152 = icmp ne %struct.Curl_easy* %151, null
  br i1 %152, label %153, label %157

153:                                              ; preds = %150
  %154 = load %struct.Curl_easy*, %struct.Curl_easy** %13, align 8
  %155 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %156 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %155, i32 0, i32 0
  store %struct.Curl_easy* %154, %struct.Curl_easy** %156, align 8
  br label %157

157:                                              ; preds = %153, %150
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i32, i32* %7, align 4
  store i32 %161, i32* %3, align 4
  br label %198

162:                                              ; preds = %157
  br label %163

163:                                              ; preds = %162, %53, %41
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* @KEEP_RECV_PAUSE, align 4
  %166 = load i32, i32* @KEEP_SEND_PAUSE, align 4
  %167 = or i32 %165, %166
  %168 = and i32 %164, %167
  %169 = load i32, i32* @KEEP_RECV_PAUSE, align 4
  %170 = load i32, i32* @KEEP_SEND_PAUSE, align 4
  %171 = or i32 %169, %170
  %172 = icmp ne i32 %168, %171
  br i1 %172, label %173, label %187

173:                                              ; preds = %163
  %174 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %175 = load i32, i32* @EXPIRE_RUN_NOW, align 4
  %176 = call i32 @Curl_expire(%struct.Curl_easy* %174, i32 0, i32 %175)
  %177 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %178 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %173
  %182 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %183 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @Curl_update_timer(i64 %184)
  br label %186

186:                                              ; preds = %181, %173
  br label %187

187:                                              ; preds = %186, %163
  %188 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %189 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %187
  %194 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %195 = call i32 @Curl_updatesocket(%struct.Curl_easy* %194)
  br label %196

196:                                              ; preds = %193, %187
  %197 = load i32, i32* %7, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %160
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @Curl_client_write(%struct.connectdata*, i32, i32*, i32) #2

declare dso_local i32 @free(i32*) #2

declare dso_local i32 @Curl_expire(%struct.Curl_easy*, i32, i32) #2

declare dso_local i32 @Curl_update_timer(i64) #2

declare dso_local i32 @Curl_updatesocket(%struct.Curl_easy*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
