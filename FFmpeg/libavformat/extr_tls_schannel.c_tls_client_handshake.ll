; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_client_handshake.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tls_schannel.c_tls_client_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@SECBUFFER_EMPTY = common dso_local global i32 0, align 4
@ISC_REQ_SEQUENCE_DETECT = common dso_local global i32 0, align 4
@ISC_REQ_REPLAY_DETECT = common dso_local global i32 0, align 4
@ISC_REQ_CONFIDENTIALITY = common dso_local global i32 0, align 4
@ISC_REQ_ALLOCATE_MEMORY = common dso_local global i32 0, align 4
@ISC_REQ_STREAM = common dso_local global i32 0, align 4
@SEC_I_CONTINUE_NEEDED = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Unable to create initial security context (0x%lx)\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to send initial handshake data\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @tls_client_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_client_handshake(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_13__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 5
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %5, align 8
  %15 = load i32, i32* @SECBUFFER_EMPTY, align 4
  %16 = call i32 @init_sec_buffer(%struct.TYPE_13__* %6, i32 %15, i32* null, i32 0)
  %17 = call i32 @init_sec_buffer_desc(i32* %7, %struct.TYPE_13__* %6, i32 1)
  %18 = load i32, i32* @ISC_REQ_SEQUENCE_DETECT, align 4
  %19 = load i32, i32* @ISC_REQ_REPLAY_DETECT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ISC_REQ_CONFIDENTIALITY, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ISC_REQ_ALLOCATE_MEMORY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ISC_REQ_STREAM, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  %43 = call i64 @InitializeSecurityContext(i32* %30, i32* null, i32 %33, i32 %36, i32 0, i32 0, i32* null, i32 0, i32* %38, i32* %7, i32* %40, i32* %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @SEC_I_CONTINUE_NEEDED, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %1
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load i64, i64* %8, align 8
  %51 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %48, i32 %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %50)
  %52 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %52, i32* %9, align 4
  br label %81

53:                                               ; preds = %1
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ffurl_write(i32 %56, i32 %58, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @FreeContextBuffer(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* %9, align 4
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %68, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %67, %53
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @av_log(%struct.TYPE_10__* %73, i32 %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %76 = load i32, i32* @EIO, align 4
  %77 = call i32 @AVERROR(i32 %76)
  store i32 %77, i32* %9, align 4
  br label %81

78:                                               ; preds = %67
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = call i32 @tls_client_handshake_loop(%struct.TYPE_10__* %79, i32 1)
  store i32 %80, i32* %2, align 4
  br label %86

81:                                               ; preds = %72, %47
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = call i32 @DeleteSecurityContext(i32* %83)
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %78
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @init_sec_buffer(%struct.TYPE_13__*, i32, i32*, i32) #1

declare dso_local i32 @init_sec_buffer_desc(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @InitializeSecurityContext(i32*, i32*, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @ffurl_write(i32, i32, i32) #1

declare dso_local i32 @FreeContextBuffer(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @tls_client_handshake_loop(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @DeleteSecurityContext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
