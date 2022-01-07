; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_setup_transfer.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_setup_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Curl_easy = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.SingleRequest, %struct.connectdata* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.SingleRequest = type { i32, i32, i32, i32, %struct.HTTP*, i32, i64 }
%struct.HTTP = type { i64 }
%struct.connectdata = type { i32, i8**, %struct.TYPE_6__*, i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@CURL_SOCKET_BAD = common dso_local global i8* null, align 8
@FALSE = common dso_local global i32 0, align 4
@KEEP_RECV = common dso_local global i32 0, align 4
@PROTO_FAMILY_HTTP = common dso_local global i32 0, align 4
@HTTPSEND_BODY = common dso_local global i64 0, align 8
@EXP100_AWAITING_CONTINUE = common dso_local global i32 0, align 4
@EXPIRE_100_TIMEOUT = common dso_local global i32 0, align 4
@EXP100_SENDING_REQUEST = common dso_local global i32 0, align 4
@KEEP_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Curl_setup_transfer(%struct.Curl_easy* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.Curl_easy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.SingleRequest*, align 8
  %12 = alloca %struct.connectdata*, align 8
  %13 = alloca %struct.HTTP*, align 8
  store %struct.Curl_easy* %0, %struct.Curl_easy** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %15 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %14, i32 0, i32 2
  store %struct.SingleRequest* %15, %struct.SingleRequest** %11, align 8
  %16 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %17 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %16, i32 0, i32 3
  %18 = load %struct.connectdata*, %struct.connectdata** %17, align 8
  store %struct.connectdata* %18, %struct.connectdata** %12, align 8
  %19 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %20 = icmp ne %struct.connectdata* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @DEBUGASSERT(i32 %21)
  %23 = load i32, i32* %7, align 4
  %24 = icmp sle i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i32, i32* %7, align 4
  %27 = icmp sge i32 %26, -1
  br label %28

28:                                               ; preds = %25, %5
  %29 = phi i1 [ false, %5 ], [ %27, %25 ]
  %30 = zext i1 %29 to i32
  %31 = call i32 @DEBUGASSERT(i32 %30)
  %32 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %33 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %39 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 20
  br i1 %41, label %42, label %77

42:                                               ; preds = %37, %28
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %60

45:                                               ; preds = %42
  %46 = load i32, i32* %10, align 4
  %47 = icmp eq i32 %46, -1
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = load i8*, i8** @CURL_SOCKET_BAD, align 8
  br label %58

50:                                               ; preds = %45
  %51 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %52 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  br label %58

58:                                               ; preds = %50, %48
  %59 = phi i8* [ %49, %48 ], [ %57, %50 ]
  br label %68

60:                                               ; preds = %42
  %61 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %62 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %61, i32 0, i32 1
  %63 = load i8**, i8*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  %67 = load i8*, i8** %66, align 8
  br label %68

68:                                               ; preds = %60, %58
  %69 = phi i8* [ %59, %58 ], [ %67, %60 ]
  %70 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %71 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %73 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %76 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %75, i32 0, i32 3
  store i8* %74, i8** %76, align 8
  br label %110

77:                                               ; preds = %37
  %78 = load i32, i32* %7, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i8*, i8** @CURL_SOCKET_BAD, align 8
  br label %90

82:                                               ; preds = %77
  %83 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %84 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %83, i32 0, i32 1
  %85 = load i8**, i8*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %85, i64 %87
  %89 = load i8*, i8** %88, align 8
  br label %90

90:                                               ; preds = %82, %80
  %91 = phi i8* [ %81, %80 ], [ %89, %82 ]
  %92 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %93 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %92, i32 0, i32 4
  store i8* %91, i8** %93, align 8
  %94 = load i32, i32* %10, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = load i8*, i8** @CURL_SOCKET_BAD, align 8
  br label %106

98:                                               ; preds = %90
  %99 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %100 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %99, i32 0, i32 1
  %101 = load i8**, i8*** %100, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %101, i64 %103
  %105 = load i8*, i8** %104, align 8
  br label %106

106:                                              ; preds = %98, %96
  %107 = phi i8* [ %97, %96 ], [ %105, %98 ]
  %108 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %109 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %106, %68
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %113 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load i64, i64* %8, align 8
  %115 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %116 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %115, i32 0, i32 6
  store i64 %114, i64* %116, align 8
  %117 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %118 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %132, label %121

121:                                              ; preds = %110
  %122 = load i32, i32* @FALSE, align 4
  %123 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %124 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load i64, i64* %8, align 8
  %126 = icmp sgt i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy* %128, i64 %129)
  br label %131

131:                                              ; preds = %127, %121
  br label %132

132:                                              ; preds = %131, %110
  %133 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %134 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %139 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %212, label %143

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, -1
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i32, i32* @KEEP_RECV, align 4
  %148 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %149 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %146, %143
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, -1
  br i1 %154, label %155, label %211

155:                                              ; preds = %152
  %156 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %157 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %157, i32 0, i32 4
  %159 = load %struct.HTTP*, %struct.HTTP** %158, align 8
  store %struct.HTTP* %159, %struct.HTTP** %13, align 8
  %160 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %161 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %194

165:                                              ; preds = %155
  %166 = load %struct.connectdata*, %struct.connectdata** %12, align 8
  %167 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %166, i32 0, i32 2
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @PROTO_FAMILY_HTTP, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %194

174:                                              ; preds = %165
  %175 = load %struct.HTTP*, %struct.HTTP** %13, align 8
  %176 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64, i64* @HTTPSEND_BODY, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %174
  %181 = load i32, i32* @EXP100_AWAITING_CONTINUE, align 4
  %182 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %183 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %182, i32 0, i32 2
  store i32 %181, i32* %183, align 8
  %184 = call i32 (...) @Curl_now()
  %185 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %186 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %185, i32 0, i32 3
  store i32 %184, i32* %186, align 4
  %187 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %188 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %189 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @EXPIRE_100_TIMEOUT, align 4
  %193 = call i32 @Curl_expire(%struct.Curl_easy* %187, i32 %191, i32 %192)
  br label %210

194:                                              ; preds = %174, %165, %155
  %195 = load %struct.Curl_easy*, %struct.Curl_easy** %6, align 8
  %196 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* @EXP100_SENDING_REQUEST, align 4
  %202 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %203 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  br label %204

204:                                              ; preds = %200, %194
  %205 = load i32, i32* @KEEP_SEND, align 4
  %206 = load %struct.SingleRequest*, %struct.SingleRequest** %11, align 8
  %207 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %205
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %204, %180
  br label %211

211:                                              ; preds = %210, %152
  br label %212

212:                                              ; preds = %211, %137
  ret void
}

declare dso_local i32 @DEBUGASSERT(i32) #1

declare dso_local i32 @Curl_pgrsSetDownloadSize(%struct.Curl_easy*, i64) #1

declare dso_local i32 @Curl_now(...) #1

declare dso_local i32 @Curl_expire(%struct.Curl_easy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
