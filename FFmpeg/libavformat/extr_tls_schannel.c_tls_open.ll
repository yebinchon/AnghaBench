; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_open.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLS Listen Sockets with SChannel is not implemented.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SCHANNEL_CRED_VERSION = common dso_local global i32 0, align 4
@SCH_CRED_AUTO_CRED_VALIDATION = common dso_local global i32 0, align 4
@SCH_CRED_REVOCATION_CHECK_CHAIN = common dso_local global i32 0, align 4
@SCH_CRED_MANUAL_CRED_VALIDATION = common dso_local global i32 0, align 4
@SCH_CRED_IGNORE_NO_REVOCATION_CHECK = common dso_local global i32 0, align 4
@SCH_CRED_IGNORE_REVOCATION_OFFLINE = common dso_local global i32 0, align 4
@UNISP_NAME = common dso_local global i64 0, align 8
@SECPKG_CRED_OUTBOUND = common dso_local global i32 0, align 4
@SEC_E_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Unable to acquire security credentials (0x%lx)\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
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
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32** %3, i32*** %9, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %11, align 8
  %20 = bitcast %struct.TYPE_15__* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 12, i1 false)
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i32**, i32*** %9, align 8
  %25 = call i32 @ff_tls_open_underlying(%struct.TYPE_13__* %21, %struct.TYPE_12__* %22, i8* %23, i32** %24)
  store i32 %25, i32* %14, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %85

28:                                               ; preds = %4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %34, i32 %35, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %14, align 4
  br label %85

39:                                               ; preds = %28
  %40 = load i32, i32* @SCHANNEL_CRED_VERSION, align 4
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @SCH_CRED_AUTO_CRED_VALIDATION, align 4
  %48 = load i32, i32* @SCH_CRED_REVOCATION_CHECK_CHAIN, align 4
  %49 = or i32 %47, %48
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  br label %58

51:                                               ; preds = %39
  %52 = load i32, i32* @SCH_CRED_MANUAL_CRED_VALIDATION, align 4
  %53 = load i32, i32* @SCH_CRED_IGNORE_NO_REVOCATION_CHECK, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @SCH_CRED_IGNORE_REVOCATION_OFFLINE, align 4
  %56 = or i32 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %56, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i64, i64* @UNISP_NAME, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load i32, i32* @SECPKG_CRED_OUTBOUND, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 1
  %66 = call i64 @AcquireCredentialsHandle(i32* null, i32* %60, i32 %61, i32* null, %struct.TYPE_15__* %13, i32* null, i32* null, i32* %63, i32* %65)
  store i64 %66, i64* %12, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i64, i64* @SEC_E_OK, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = load i32, i32* @AV_LOG_ERROR, align 4
  %73 = load i64, i64* %12, align 8
  %74 = call i32 (%struct.TYPE_12__*, i32, i8*, ...) @av_log(%struct.TYPE_12__* %71, i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %75, i32* %14, align 4
  br label %85

76:                                               ; preds = %58
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = call i32 @tls_client_handshake(%struct.TYPE_12__* %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %85

82:                                               ; preds = %76
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  store i32 0, i32* %5, align 4
  br label %89

85:                                               ; preds = %81, %70, %33, %27
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %87 = call i32 @tls_close(%struct.TYPE_12__* %86)
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %5, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ff_tls_open_underlying(%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32**) #2

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, ...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @AcquireCredentialsHandle(i32*, i32*, i32, i32*, %struct.TYPE_15__*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @tls_client_handshake(%struct.TYPE_12__*) #2

declare dso_local i32 @tls_close(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
