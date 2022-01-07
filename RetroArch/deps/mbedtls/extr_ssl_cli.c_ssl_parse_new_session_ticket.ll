; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_new_session_ticket.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_cli.c_ssl_parse_new_session_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64*, i64, %struct.TYPE_9__*, i32, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i8*, i64, i8, i64 }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [28 x i8] c"=> parse new session ticket\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"bad new session ticket message\00", align 1
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_NEW_SESSION_TICKET = common dso_local global i64 0, align 8
@MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_HS_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"ticket length: %d\00", align 1
@MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"ticket alloc failed\00", align 1
@MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_ALLOC_FAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"ticket in use, discarding session id\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"<= parse new session ticket\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @ssl_parse_new_session_ticket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_parse_new_session_ticket(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %9 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = call i32 @mbedtls_ssl_read_record(%struct.TYPE_10__* %10)
  store i32 %11, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %188

17:                                               ; preds = %1
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %27 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE, align 4
  %28 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_10__* %25, i32 %26, i32 %27)
  %29 = load i32, i32* @MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE, align 4
  store i32 %29, i32* %2, align 4
  br label %188

30:                                               ; preds = %17
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MBEDTLS_SSL_HS_NEW_SESSION_TICKET, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %43 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_10__* %42)
  %44 = add nsw i64 6, %43
  %45 = icmp slt i64 %41, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %38, %30
  %47 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %49 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %50 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %51 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_10__* %48, i32 %49, i32 %50)
  %52 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_NEW_SESSION_TICKET, align 4
  store i32 %52, i32* %2, align 4
  br label %188

53:                                               ; preds = %38
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %58 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_10__* %57)
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = bitcast i64* %59 to i8*
  store i8* %60, i8** %8, align 8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 24
  %66 = load i8*, i8** %8, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 1
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 16
  %71 = or i32 %65, %70
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %75, 8
  %77 = or i32 %71, %76
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 3
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = or i32 %77, %81
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %5, align 1
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 4
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %87, 8
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 5
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = or i32 %88, %92
  %94 = sext i32 %93 to i64
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %95, 6
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %98 = call i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_10__* %97)
  %99 = add i64 %96, %98
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %99, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %53
  %105 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %107 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %108 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_DECODE_ERROR, align 4
  %109 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_10__* %106, i32 %107, i32 %108)
  %110 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_HS_NEW_SESSION_TICKET, align 4
  store i32 %110, i32* %2, align 4
  br label %188

111:                                              ; preds = %53
  %112 = load i64, i64* %6, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %113)
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  store i64 0, i64* %118, align 8
  %119 = load i32, i32* @MBEDTLS_SSL_SERVER_CHANGE_CIPHER_SPEC, align 4
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 8
  %122 = load i64, i64* %6, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %188

125:                                              ; preds = %111
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 3
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @mbedtls_zeroize(i8* %130, i64 %135)
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @mbedtls_free(i8* %141)
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 3
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 0
  store i8* null, i8** %146, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 3
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 1
  store i64 0, i64* %150, align 8
  %151 = load i64, i64* %6, align 8
  %152 = call i8* @mbedtls_calloc(i32 1, i64 %151)
  store i8* %152, i8** %7, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %154, label %161

154:                                              ; preds = %125
  %155 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %157 = load i32, i32* @MBEDTLS_SSL_ALERT_LEVEL_FATAL, align 4
  %158 = load i32, i32* @MBEDTLS_SSL_ALERT_MSG_INTERNAL_ERROR, align 4
  %159 = call i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_10__* %156, i32 %157, i32 %158)
  %160 = load i32, i32* @MBEDTLS_ERR_SSL_ALLOC_FAILED, align 4
  store i32 %160, i32* %2, align 4
  br label %188

161:                                              ; preds = %125
  %162 = load i8*, i8** %7, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 6
  %165 = load i64, i64* %6, align 8
  %166 = call i32 @memcpy(i8* %162, i8* %164, i64 %165)
  %167 = load i8*, i8** %7, align 8
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 3
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  store i8* %167, i8** %171, align 8
  %172 = load i64, i64* %6, align 8
  %173 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %173, i32 0, i32 3
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 1
  store i64 %172, i64* %176, align 8
  %177 = load i8, i8* %5, align 1
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 2
  store i8 %177, i8* %181, align 8
  %182 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %183 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 3
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 3
  store i64 0, i64* %186, align 8
  %187 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %188

188:                                              ; preds = %161, %154, %124, %104, %46, %23, %13
  %189 = load i32, i32* %2, align 4
  ret i32 %189
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_read_record(%struct.TYPE_10__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @mbedtls_ssl_send_alert_message(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @mbedtls_ssl_hs_hdr_len(%struct.TYPE_10__*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i64) #1

declare dso_local i32 @mbedtls_free(i8*) #1

declare dso_local i8* @mbedtls_calloc(i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
