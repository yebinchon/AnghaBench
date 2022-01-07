; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_resend.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_resend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64*, %struct.TYPE_9__*, i32 }

@.str = private unnamed_addr constant [22 x i8] c"=> mbedtls_ssl_resend\00", align 1
@MBEDTLS_SSL_RETRANS_SENDING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"initialise resending\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_HS_FINISHED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"resent handshake message header\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"mbedtls_ssl_write_record\00", align 1
@MBEDTLS_SSL_HANDSHAKE_OVER = common dso_local global i64 0, align 8
@MBEDTLS_SSL_RETRANS_FINISHED = common dso_local global i64 0, align 8
@MBEDTLS_SSL_RETRANS_WAITING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"<= mbedtls_ssl_resend\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_resend(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MBEDTLS_SSL_RETRANS_SENDING, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %32

14:                                               ; preds = %1
  %15 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 2
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %24, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = call i32 @ssl_swap_epochs(%struct.TYPE_10__* %25)
  %27 = load i64, i64* @MBEDTLS_SSL_RETRANS_SENDING, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 2
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  br label %32

32:                                               ; preds = %14, %1
  br label %33

33:                                               ; preds = %101, %32
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = icmp ne %struct.TYPE_9__* %38, null
  br i1 %39, label %40, label %102

40:                                               ; preds = %33
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %5, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %40
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @MBEDTLS_SSL_HS_FINISHED, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %51
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = call i32 @ssl_swap_epochs(%struct.TYPE_10__* %60)
  br label %62

62:                                               ; preds = %59, %51, %40
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @memcpy(i32 %65, i64* %68, i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store %struct.TYPE_9__* %85, %struct.TYPE_9__** %89, align 8
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %92, i32 12)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = call i32 @mbedtls_ssl_write_record(%struct.TYPE_10__* %94)
  store i32 %95, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %62
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %4, align 4
  store i32 %100, i32* %2, align 4
  br label %129

101:                                              ; preds = %62
  br label %33

102:                                              ; preds = %33
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @MBEDTLS_SSL_HANDSHAKE_OVER, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %102
  %109 = load i64, i64* @MBEDTLS_SSL_RETRANS_FINISHED, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i64 %109, i64* %113, align 8
  br label %127

114:                                              ; preds = %102
  %115 = load i64, i64* @MBEDTLS_SSL_RETRANS_WAITING, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i64 %115, i64* %119, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 2
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @ssl_set_timer(%struct.TYPE_10__* %120, i32 %125)
  br label %127

127:                                              ; preds = %114, %108
  %128 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %127, %97
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @ssl_swap_epochs(%struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i32, i32) #1

declare dso_local i32 @mbedtls_ssl_write_record(%struct.TYPE_10__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @ssl_set_timer(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
