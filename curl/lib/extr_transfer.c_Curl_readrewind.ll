; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_readrewind.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_transfer.c_Curl_readrewind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_7__*, %struct.TYPE_6__, %struct.Curl_easy* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.Curl_easy = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { i64, i32 (i32, i32, i32)*, i32, i64 (%struct.Curl_easy*, i32, i32)*, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.HTTP*, i32 }
%struct.HTTP = type { i32* }

@FALSE = common dso_local global i32 0, align 4
@KEEP_SEND = common dso_local global i32 0, align 4
@PROTO_FAMILY_HTTP = common dso_local global i32 0, align 4
@HTTPREQ_POST_MIME = common dso_local global i64 0, align 8
@HTTPREQ_POST_FORM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Cannot rewind mime/post data\00", align 1
@CURLE_SEND_FAIL_REWIND = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"seek callback returned error %d\00", align 1
@CURLIOCMD_RESTARTREAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"the ioctl callback returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"ioctl callback returned error %d\00", align 1
@fread = common dso_local global i64 0, align 8
@CURLE_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"necessary data rewind wasn't possible\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @Curl_readrewind(%struct.connectdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca %struct.Curl_easy*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.HTTP*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  %9 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %10 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %9, i32 0, i32 2
  %11 = load %struct.Curl_easy*, %struct.Curl_easy** %10, align 8
  store %struct.Curl_easy* %11, %struct.Curl_easy** %4, align 8
  %12 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %13 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 6
  store i32* %14, i32** %5, align 8
  %15 = load i32, i32* @FALSE, align 4
  %16 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %17 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @KEEP_SEND, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %22 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %20
  store i32 %25, i32* %23, align 8
  %26 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %27 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PROTO_FAMILY_HTTP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %1
  %35 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %36 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load %struct.HTTP*, %struct.HTTP** %37, align 8
  store %struct.HTTP* %38, %struct.HTTP** %6, align 8
  %39 = load %struct.HTTP*, %struct.HTTP** %6, align 8
  %40 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.HTTP*, %struct.HTTP** %6, align 8
  %45 = getelementptr inbounds %struct.HTTP, %struct.HTTP* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %5, align 8
  br label %47

47:                                               ; preds = %43, %34
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %50 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %167

55:                                               ; preds = %48
  %56 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %57 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @HTTPREQ_POST_MIME, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %64 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @HTTPREQ_POST_FORM, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %62, %55
  %70 = load i32*, i32** %5, align 8
  %71 = call i64 @Curl_mime_rewind(i32* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %69
  %74 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %75 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @CURLE_SEND_FAIL_REWIND, align 4
  store i32 %76, i32* %2, align 4
  br label %169

77:                                               ; preds = %69
  br label %166

78:                                               ; preds = %62
  %79 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %80 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %81, align 8
  %83 = icmp ne i32 (i32, i32, i32)* %82, null
  br i1 %83, label %84, label %107

84:                                               ; preds = %78
  %85 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %86 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %85, i32 1)
  %87 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %88 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %89, align 8
  %91 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %92 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @SEEK_SET, align 4
  %96 = call i32 %90(i32 %94, i32 0, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %98 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %97, i32 0)
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %84
  %102 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @CURLE_SEND_FAIL_REWIND, align 4
  store i32 %105, i32* %2, align 4
  br label %169

106:                                              ; preds = %84
  br label %165

107:                                              ; preds = %78
  %108 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %109 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 3
  %111 = load i64 (%struct.Curl_easy*, i32, i32)*, i64 (%struct.Curl_easy*, i32, i32)** %110, align 8
  %112 = icmp ne i64 (%struct.Curl_easy*, i32, i32)* %111, null
  br i1 %112, label %113, label %142

113:                                              ; preds = %107
  %114 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %115 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %114, i32 1)
  %116 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %117 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 3
  %119 = load i64 (%struct.Curl_easy*, i32, i32)*, i64 (%struct.Curl_easy*, i32, i32)** %118, align 8
  %120 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %121 = load i32, i32* @CURLIOCMD_RESTARTREAD, align 4
  %122 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %123 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i64 %119(%struct.Curl_easy* %120, i32 %121, i32 %125)
  store i64 %126, i64* %8, align 8
  %127 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %128 = call i32 @Curl_set_in_callback(%struct.Curl_easy* %127, i32 0)
  %129 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %130 = load i64, i64* %8, align 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @infof(%struct.Curl_easy* %129, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  %133 = load i64, i64* %8, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %113
  %136 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %137 = load i64, i64* %8, align 8
  %138 = trunc i64 %137 to i32
  %139 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %138)
  %140 = load i32, i32* @CURLE_SEND_FAIL_REWIND, align 4
  store i32 %140, i32* %2, align 4
  br label %169

141:                                              ; preds = %113
  br label %164

142:                                              ; preds = %107
  %143 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %144 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @fread, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %142
  %150 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %151 = getelementptr inbounds %struct.Curl_easy, %struct.Curl_easy* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @SEEK_SET, align 4
  %155 = call i32 @fseek(i32 %153, i32 0, i32 %154)
  %156 = icmp ne i32 -1, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* @CURLE_OK, align 4
  store i32 %158, i32* %2, align 4
  br label %169

159:                                              ; preds = %149
  br label %160

160:                                              ; preds = %159, %142
  %161 = load %struct.Curl_easy*, %struct.Curl_easy** %4, align 8
  %162 = call i32 (%struct.Curl_easy*, i8*, ...) @failf(%struct.Curl_easy* %161, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %163 = load i32, i32* @CURLE_SEND_FAIL_REWIND, align 4
  store i32 %163, i32* %2, align 4
  br label %169

164:                                              ; preds = %141
  br label %165

165:                                              ; preds = %164, %106
  br label %166

166:                                              ; preds = %165, %77
  br label %167

167:                                              ; preds = %166, %54
  %168 = load i32, i32* @CURLE_OK, align 4
  store i32 %168, i32* %2, align 4
  br label %169

169:                                              ; preds = %167, %160, %157, %135, %101, %73
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i64 @Curl_mime_rewind(i32*) #1

declare dso_local i32 @failf(%struct.Curl_easy*, i8*, ...) #1

declare dso_local i32 @Curl_set_in_callback(%struct.Curl_easy*, i32) #1

declare dso_local i32 @infof(%struct.Curl_easy*, i8*, i32) #1

declare dso_local i32 @fseek(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
