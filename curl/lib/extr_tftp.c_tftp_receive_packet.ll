; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_receive_packet.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_tftp.c_tftp_receive_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_7__, %struct.Curl_easy* }
%struct.TYPE_7__ = type { i64 }
%struct.Curl_easy = type { %struct.SingleRequest }
%struct.SingleRequest = type { i32 }
%struct.Curl_sockaddr_storage = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i16, %struct.TYPE_9__, i32, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.sockaddr = type { i32 }

@CURLE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Received too short packet\00", align 1
@TFTP_EVENT_TIMEOUT = common dso_local global i16 0, align 2
@CLIENTWRITE_BODY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"TFTP error: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"Internal error: Unexpected packet\00", align 1
@CURLE_ABORTED_BY_CALLBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*)* @tftp_receive_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tftp_receive_packet(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.Curl_sockaddr_storage, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.Curl_easy*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.SingleRequest*, align 8
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %14 = load i32, i32* @CURLE_OK, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %16 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %15, i32 0, i32 1
  %17 = load %struct.Curl_easy*, %struct.Curl_easy** %16, align 8
  store %struct.Curl_easy* %17, %struct.Curl_easy** %7, align 8
  %18 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %19 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %8, align 8
  %23 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %24 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %23, i32 0, i32 0
  store %struct.SingleRequest* %24, %struct.SingleRequest** %9, align 8
  store i32 4, i32* %5, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 7
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 4
  %37 = bitcast %struct.Curl_sockaddr_storage* %4 to %struct.sockaddr*
  %38 = call i64 @recvfrom(i32 %27, i8* %32, i64 %36, i32 0, %struct.sockaddr* %37, i32* %5)
  %39 = trunc i64 %38 to i32
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @memcpy(i32* %48, %struct.Curl_sockaddr_storage* %4, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %46, %1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %57, 4
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %61 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %62 = load i16, i16* @TFTP_EVENT_TIMEOUT, align 2
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  store i16 %62, i16* %64, align 8
  br label %188

65:                                               ; preds = %54
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 3
  %68 = call zeroext i16 @getrpacketevent(%struct.TYPE_9__* %67)
  store i16 %68, i16* %10, align 2
  %69 = load i16, i16* %10, align 2
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  store i16 %69, i16* %71, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i16, i16* %73, align 8
  %75 = sext i16 %74 to i32
  switch i32 %75, label %176 [
    i32 132, label %76
    i32 131, label %127
    i32 133, label %156
    i32 130, label %157
    i32 129, label %175
    i32 128, label %175
  ]

76:                                               ; preds = %65
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 4
  br i1 %80, label %81, label %126

81:                                               ; preds = %76
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = call zeroext i16 @NEXT_BLOCKNUM(i32 %84)
  %86 = zext i16 %85 to i32
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = call zeroext i16 @getrpacketblock(%struct.TYPE_9__* %88)
  %90 = zext i16 %89 to i32
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %126

92:                                               ; preds = %81
  %93 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %94 = load i32, i32* @CLIENTWRITE_BODY, align 4
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = getelementptr inbounds i8, i8* %99, i64 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = sub nsw i32 %103, 4
  %105 = call i32 @Curl_client_write(%struct.connectdata* %93, i32 %94, i8* %100, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %92
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %110 = call i32 @tftp_state_machine(%struct.TYPE_8__* %109, i32 131)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %190

112:                                              ; preds = %92
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sub nsw i32 %115, 4
  %117 = load %struct.SingleRequest*, %struct.SingleRequest** %9, align 8
  %118 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %122 = load %struct.SingleRequest*, %struct.SingleRequest** %9, align 8
  %123 = getelementptr inbounds %struct.SingleRequest, %struct.SingleRequest* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy* %121, i32 %124)
  br label %126

126:                                              ; preds = %112, %81, %76
  br label %179

127:                                              ; preds = %65
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = call zeroext i16 @getrpacketblock(%struct.TYPE_9__* %129)
  store i16 %130, i16* %11, align 2
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = getelementptr inbounds i8, i8* %135, i64 4
  store i8* %136, i8** %12, align 8
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 4
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %13, align 8
  %142 = load i16, i16* %11, align 2
  %143 = zext i16 %142 to i32
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = load i64, i64* %13, align 8
  %148 = call i64 @Curl_strnlen(i8* %146, i64 %147)
  %149 = load i64, i64* %13, align 8
  %150 = icmp ult i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %127
  %152 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %153 = load i8*, i8** %12, align 8
  %154 = call i32 @infof(%struct.Curl_easy* %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %153)
  br label %155

155:                                              ; preds = %151, %127
  br label %179

156:                                              ; preds = %65
  br label %179

157:                                              ; preds = %65
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = inttoptr i64 %162 to i8*
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = sub nsw i32 %167, 2
  %169 = call i32 @tftp_parse_option_ack(%struct.TYPE_8__* %158, i8* %164, i32 %168)
  store i32 %169, i32* %6, align 4
  %170 = load i32, i32* %6, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %157
  %173 = load i32, i32* %6, align 4
  store i32 %173, i32* %2, align 4
  br label %190

174:                                              ; preds = %157
  br label %179

175:                                              ; preds = %65, %65
  br label %176

176:                                              ; preds = %65, %175
  %177 = load %struct.Curl_easy*, %struct.Curl_easy** %7, align 8
  %178 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %177, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %179

179:                                              ; preds = %176, %174, %156, %155, %126
  %180 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %181 = call i64 @Curl_pgrsUpdate(%struct.connectdata* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %185 = call i32 @tftp_state_machine(%struct.TYPE_8__* %184, i32 131)
  %186 = load i32, i32* @CURLE_ABORTED_BY_CALLBACK, align 4
  store i32 %186, i32* %2, align 4
  br label %190

187:                                              ; preds = %179
  br label %188

188:                                              ; preds = %187, %59
  %189 = load i32, i32* %6, align 4
  store i32 %189, i32* %2, align 4
  br label %190

190:                                              ; preds = %188, %183, %172, %108
  %191 = load i32, i32* %2, align 4
  ret i32 %191
}

declare dso_local i64 @recvfrom(i32, i8*, i64, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.Curl_sockaddr_storage*, i32) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local zeroext i16 @getrpacketevent(%struct.TYPE_9__*) #1

declare dso_local zeroext i16 @NEXT_BLOCKNUM(i32) #1

declare dso_local zeroext i16 @getrpacketblock(%struct.TYPE_9__*) #1

declare dso_local i32 @Curl_client_write(%struct.connectdata*, i32, i8*, i32) #1

declare dso_local i32 @tftp_state_machine(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @Curl_pgrsSetDownloadCounter(%struct.Curl_easy*, i32) #1

declare dso_local i64 @Curl_strnlen(i8*, i64) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i8*) #1

declare dso_local i32 @tftp_parse_option_ack(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i64 @Curl_pgrsUpdate(%struct.connectdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
