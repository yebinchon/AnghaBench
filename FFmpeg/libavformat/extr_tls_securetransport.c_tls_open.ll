; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_securetransport.c_tls_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_securetransport.c_tls_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i64, i64, i64 }

@kSSLServerSide = common dso_local global i32 0, align 4
@kSSLClientSide = common dso_local global i32 0, align 4
@kSSLStreamType = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to create SSL context\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SSLSetSessionOption = common dso_local global i32 0, align 4
@kSSLSessionOptionBreakOnServerAuth = common dso_local global i32 0, align 4
@SSLSetPeerDomainName = common dso_local global i32 0, align 4
@SSLSetIOFuncs = common dso_local global i32 0, align 4
@tls_read_cb = common dso_local global i32 0, align 4
@tls_write_cb = common dso_local global i32 0, align 4
@SSLSetConnection = common dso_local global i32 0, align 4
@errSSLServerAuthCompleted = common dso_local global i64 0, align 8
@noErr = common dso_local global i64 0, align 8
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@kSecTrustResultProceed = common dso_local global i64 0, align 8
@kSecTrustResultUnspecified = common dso_local global i64 0, align 8
@errSSLWouldBlock = common dso_local global i64 0, align 8
@kSecTrustResultRecoverableTrustFailure = common dso_local global i64 0, align 8
@errSSLXCertChainInvalid = common dso_local global i64 0, align 8
@errSSLBadCert = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Unable to negotiate TLS/SSL session: %i\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32, i32**)* @tls_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_open(%struct.TYPE_12__* %0, i8* %1, i32 %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %17, align 8
  store %struct.TYPE_14__* %18, %struct.TYPE_14__** %10, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %11, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32**, i32*** %9, align 8
  %25 = call i32 @ff_tls_open_underlying(%struct.TYPE_13__* %21, %struct.TYPE_12__* %22, i8* %23, i32** %24)
  store i32 %25, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %211

28:                                               ; preds = %4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* @kSSLServerSide, align 4
  br label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @kSSLClientSide, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  %39 = load i32, i32* @kSSLStreamType, align 4
  %40 = call i32 @SSLCreateContext(i32* null, i32 %38, i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %37
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %48, i32 %49, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = call i32 @AVERROR(i32 %51)
  store i32 %52, i32* %12, align 4
  br label %211

53:                                               ; preds = %37
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = call i32 @load_ca(%struct.TYPE_12__* %59)
  store i32 %60, i32* %12, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %211

63:                                               ; preds = %58
  br label %64

64:                                               ; preds = %63, %53
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* @SSLSetSessionOption, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @kSSLSessionOptionBreakOnServerAuth, align 4
  %80 = sext i32 %79 to i64
  %81 = inttoptr i64 %80 to %struct.TYPE_12__*
  %82 = call i32 (i32, i32, %struct.TYPE_12__*, ...) @CHECK_ERROR(i32 %75, i32 %78, %struct.TYPE_12__* %81, i32 1)
  br label %83

83:                                               ; preds = %74, %69
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %90 = call i32 @load_cert(%struct.TYPE_12__* %89)
  store i32 %90, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %211

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93, %83
  %95 = load i32, i32* @SSLSetPeerDomainName, align 4
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to %struct.TYPE_12__*
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @strlen(i32 %106)
  %108 = call i32 (i32, i32, %struct.TYPE_12__*, ...) @CHECK_ERROR(i32 %95, i32 %98, %struct.TYPE_12__* %103, i32 %107)
  %109 = load i32, i32* @SSLSetIOFuncs, align 4
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @tls_read_cb, align 4
  %114 = sext i32 %113 to i64
  %115 = inttoptr i64 %114 to %struct.TYPE_12__*
  %116 = load i32, i32* @tls_write_cb, align 4
  %117 = call i32 (i32, i32, %struct.TYPE_12__*, ...) @CHECK_ERROR(i32 %109, i32 %112, %struct.TYPE_12__* %115, i32 %116)
  %118 = load i32, i32* @SSLSetConnection, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %123 = call i32 (i32, i32, %struct.TYPE_12__*, ...) @CHECK_ERROR(i32 %118, i32 %121, %struct.TYPE_12__* %122)
  br label %124

124:                                              ; preds = %94, %137, %209
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @SSLHandshake(i32 %127)
  store i64 %128, i64* %13, align 8
  %129 = load i64, i64* %13, align 8
  %130 = load i64, i64* @errSSLServerAuthCompleted, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %191

132:                                              ; preds = %124
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %132
  br label %124

138:                                              ; preds = %132
  %139 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i64 @SSLCopyPeerTrust(i32 %141, i64* %14)
  %143 = load i64, i64* @noErr, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %138
  %146 = load i32, i32* @ENOMEM, align 4
  %147 = call i32 @AVERROR(i32 %146)
  store i32 %147, i32* %12, align 4
  br label %211

148:                                              ; preds = %138
  %149 = load i64, i64* %14, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @SecTrustSetAnchorCertificates(i64 %149, i32 %152)
  %154 = load i64, i64* @noErr, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %158

156:                                              ; preds = %148
  %157 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %157, i32* %12, align 4
  br label %211

158:                                              ; preds = %148
  %159 = load i64, i64* %14, align 8
  %160 = call i64 @SecTrustEvaluate(i64 %159, i64* %15)
  %161 = load i64, i64* @noErr, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %158
  %164 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %164, i32* %12, align 4
  br label %211

165:                                              ; preds = %158
  %166 = load i64, i64* %15, align 8
  %167 = load i64, i64* @kSecTrustResultProceed, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %173, label %169

169:                                              ; preds = %165
  %170 = load i64, i64* %15, align 8
  %171 = load i64, i64* @kSecTrustResultUnspecified, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %175

173:                                              ; preds = %169, %165
  %174 = load i64, i64* @errSSLWouldBlock, align 8
  store i64 %174, i64* %13, align 8
  br label %184

175:                                              ; preds = %169
  %176 = load i64, i64* %15, align 8
  %177 = load i64, i64* @kSecTrustResultRecoverableTrustFailure, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i64, i64* @errSSLXCertChainInvalid, align 8
  store i64 %180, i64* %13, align 8
  br label %183

181:                                              ; preds = %175
  %182 = load i64, i64* @errSSLBadCert, align 8
  store i64 %182, i64* %13, align 8
  br label %183

183:                                              ; preds = %181, %179
  br label %184

184:                                              ; preds = %183, %173
  %185 = load i64, i64* %14, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i64, i64* %14, align 8
  %189 = call i32 @CFRelease(i64 %188)
  br label %190

190:                                              ; preds = %187, %184
  br label %191

191:                                              ; preds = %190, %124
  %192 = load i64, i64* %13, align 8
  %193 = load i64, i64* @noErr, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %191
  br label %210

196:                                              ; preds = %191
  %197 = load i64, i64* %13, align 8
  %198 = load i64, i64* @errSSLWouldBlock, align 8
  %199 = icmp ne i64 %197, %198
  br i1 %199, label %200, label %208

200:                                              ; preds = %196
  %201 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %202 = load i32, i32* @AV_LOG_ERROR, align 4
  %203 = load i64, i64* %13, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %201, i32 %202, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* @EIO, align 4
  %207 = call i32 @AVERROR(i32 %206)
  store i32 %207, i32* %12, align 4
  br label %211

208:                                              ; preds = %196
  br label %209

209:                                              ; preds = %208
  br label %124

210:                                              ; preds = %195
  store i32 0, i32* %5, align 4
  br label %215

211:                                              ; preds = %200, %163, %156, %145, %92, %62, %47, %27
  %212 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %213 = call i32 @tls_close(%struct.TYPE_12__* %212)
  %214 = load i32, i32* %12, align 4
  store i32 %214, i32* %5, align 4
  br label %215

215:                                              ; preds = %211, %210
  %216 = load i32, i32* %5, align 4
  ret i32 %216
}

declare dso_local i32 @ff_tls_open_underlying(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32**) #1

declare dso_local i32 @SSLCreateContext(i32*, i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @load_ca(%struct.TYPE_12__*) #1

declare dso_local i32 @CHECK_ERROR(i32, i32, %struct.TYPE_12__*, ...) #1

declare dso_local i32 @load_cert(%struct.TYPE_12__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @SSLHandshake(i32) #1

declare dso_local i64 @SSLCopyPeerTrust(i32, i64*) #1

declare dso_local i64 @SecTrustSetAnchorCertificates(i64, i32) #1

declare dso_local i64 @SecTrustEvaluate(i64, i64*) #1

declare dso_local i32 @CFRelease(i64) #1

declare dso_local i32 @tls_close(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
