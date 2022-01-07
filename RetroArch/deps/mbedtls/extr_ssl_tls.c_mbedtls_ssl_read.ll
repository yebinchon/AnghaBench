; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64*, i32 (i32)*, i64, i64, i64*, i64, i64, i64, i64, i64, i64, %struct.TYPE_16__*, i32, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i32 }
%struct.TYPE_15__ = type { i64 }

@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"=> read\00", align 1
@MBEDTLS_SSL_HANDSHAKE_OVER = common dso_local global i64 0, align 8
@MBEDTLS_ERR_SSL_WAITING_SERVER_HELLO_RENEGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"mbedtls_ssl_handshake\00", align 1
@MBEDTLS_ERR_SSL_CONN_EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"mbedtls_ssl_read_record\00", align 1
@MBEDTLS_SSL_MSG_APPLICATION_DATA = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MSG_ALERT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"ignoring non-fatal non-closure alert\00", align 1
@MBEDTLS_ERR_SSL_WANT_READ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"bad application data message\00", align 1
@MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"<= read\00", align 1
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_LEVEL_WARNING = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_NO_RENEGOTIATION = common dso_local global i32 0, align 4
@MBEDTLS_SSL_ALERT_MSG_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HS_CLIENT_HELLO = common dso_local global i64 0, align 8
@MBEDTLS_SSL_HS_HELLO_REQUEST = common dso_local global i64 0, align 8
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i64 0, align 8
@MBEDTLS_SSL_IS_SERVER = common dso_local global i64 0, align 8
@MBEDTLS_SSL_LEGACY_NO_RENEGOTIATION = common dso_local global i64 0, align 8
@MBEDTLS_SSL_LEGACY_RENEGOTIATION = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MINOR_VERSION_0 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MINOR_VERSION_1 = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_RENEGOTIATION_DISABLED = common dso_local global i64 0, align 8
@MBEDTLS_SSL_RENEGOTIATION_PENDING = common dso_local global i64 0, align 8
@MBEDTLS_SSL_RETRANS_SENDING = common dso_local global i64 0, align 8
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_read(%struct.TYPE_17__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %11 = icmp eq %struct.TYPE_17__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 12
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = icmp eq %struct.TYPE_16__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %18, i32* %4, align 4
  br label %182

19:                                               ; preds = %12
  %20 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MBEDTLS_SSL_HANDSHAKE_OVER, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %19
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = call i32 @mbedtls_ssl_handshake(%struct.TYPE_17__* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MBEDTLS_ERR_SSL_WAITING_SERVER_HELLO_RENEGO, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %182

39:                                               ; preds = %32, %26
  br label %40

40:                                               ; preds = %39, %19
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = icmp eq i64* %43, null
  br i1 %44, label %45, label %138

45:                                               ; preds = %40
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  %49 = icmp ne i32 (i32)* %48, null
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i32 (i32)*, i32 (i32)** %52, align 8
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 13
  %56 = load i32, i32* %55, align 8
  %57 = call i32 %53(i32 %56)
  %58 = icmp eq i32 %57, -1
  br i1 %58, label %59, label %67

59:                                               ; preds = %50
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 12
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @ssl_set_timer(%struct.TYPE_17__* %60, i32 %65)
  br label %67

67:                                               ; preds = %59, %50, %45
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = call i32 @mbedtls_ssl_read_record(%struct.TYPE_17__* %68)
  store i32 %69, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MBEDTLS_ERR_SSL_CONN_EOF, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  store i32 0, i32* %4, align 4
  br label %182

76:                                               ; preds = %71
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %182

80:                                               ; preds = %67
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %105

85:                                               ; preds = %80
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @MBEDTLS_SSL_MSG_APPLICATION_DATA, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %85
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %93 = call i32 @mbedtls_ssl_read_record(%struct.TYPE_17__* %92)
  store i32 %93, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @MBEDTLS_ERR_SSL_CONN_EOF, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  store i32 0, i32* %4, align 4
  br label %182

100:                                              ; preds = %95
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %182

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %85, %80
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MBEDTLS_SSL_MSG_ALERT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %113 = load i32, i32* @MBEDTLS_ERR_SSL_WANT_READ, align 4
  store i32 %113, i32* %4, align 4
  br label %182

114:                                              ; preds = %105
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 4
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MBEDTLS_SSL_MSG_APPLICATION_DATA, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %122 = load i32, i32* @MBEDTLS_ERR_SSL_UNEXPECTED_MESSAGE, align 4
  store i32 %122, i32* %4, align 4
  br label %182

123:                                              ; preds = %114
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 5
  %126 = load i64*, i64** %125, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  store i64* %126, i64** %128, align 8
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @MBEDTLS_SSL_HANDSHAKE_OVER, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %137

134:                                              ; preds = %123
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %136 = call i32 @ssl_set_timer(%struct.TYPE_17__* %135, i32 0)
  br label %137

137:                                              ; preds = %134, %123
  br label %138

138:                                              ; preds = %137, %40
  %139 = load i64, i64* %7, align 8
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %141 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = icmp ult i64 %139, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i64, i64* %7, align 8
  br label %150

146:                                              ; preds = %138
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  br label %150

150:                                              ; preds = %146, %144
  %151 = phi i64 [ %145, %144 ], [ %149, %146 ]
  store i64 %151, i64* %9, align 8
  %152 = load i8*, i8** %6, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = load i64*, i64** %154, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 @memcpy(i8* %152, i64* %155, i64 %156)
  %158 = load i64, i64* %9, align 8
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %159, i32 0, i32 3
  %161 = load i64, i64* %160, align 8
  %162 = sub i64 %161, %158
  store i64 %162, i64* %160, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %150
  %168 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %168, i32 0, i32 1
  store i64* null, i64** %169, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 11
  store i64 0, i64* %171, align 8
  br label %178

172:                                              ; preds = %150
  %173 = load i64, i64* %9, align 8
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 1
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 %173
  store i64* %177, i64** %175, align 8
  br label %178

178:                                              ; preds = %172, %167
  %179 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %180 = load i64, i64* %9, align 8
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %4, align 4
  br label %182

182:                                              ; preds = %178, %120, %111, %100, %99, %76, %75, %35, %17
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.TYPE_17__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @ssl_set_timer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @mbedtls_ssl_read_record(%struct.TYPE_17__*) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
