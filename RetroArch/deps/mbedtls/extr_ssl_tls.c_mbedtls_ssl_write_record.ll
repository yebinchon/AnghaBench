; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_write_record.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_write_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i32*, i8*, i8*, i64, i32*, %struct.TYPE_15__*, i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64, i32, i32 (%struct.TYPE_16__*, i32*, i64)* }

@.str = private unnamed_addr constant [16 x i8] c"=> write record\00", align 1
@MBEDTLS_SSL_MSG_HANDSHAKE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_HS_HELLO_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"should never happen\00", align 1
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ssl_encrypt_buf\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"output record: msgtype = %d, version = [%d:%d], msglen = %d\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"output record sent to network\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"mbedtls_ssl_flush_output\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"<= write record\00", align 1
@MBEDTLS_ERR_SSL_HW_ACCEL_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_HW_ACCEL_FALLTHROUGH = common dso_local global i32 0, align 4
@MBEDTLS_SSL_COMPRESS_DEFLATE = common dso_local global i64 0, align 8
@MBEDTLS_SSL_MSG_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@MBEDTLS_SSL_RETRANS_SENDING = common dso_local global i64 0, align 8
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write_record(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MBEDTLS_SSL_MSG_HANDSHAKE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %77

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @MBEDTLS_SSL_HS_HELLO_REQUEST, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 11
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %30 = icmp eq %struct.TYPE_13__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %208

34:                                               ; preds = %26, %17
  %35 = load i64, i64* %7, align 8
  %36 = sub i64 %35, 4
  %37 = lshr i64 %36, 16
  %38 = trunc i64 %37 to i8
  %39 = zext i8 %38 to i32
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %39, i32* %43, align 4
  %44 = load i64, i64* %7, align 8
  %45 = sub i64 %44, 4
  %46 = lshr i64 %45, 8
  %47 = trunc i64 %46 to i8
  %48 = zext i8 %47 to i32
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  store i32 %48, i32* %52, align 4
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %53, 4
  %55 = trunc i64 %54 to i8
  %56 = zext i8 %55 to i32
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @MBEDTLS_SSL_HS_HELLO_REQUEST, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %34
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 11
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 2
  %69 = load i32 (%struct.TYPE_16__*, i32*, i64)*, i32 (%struct.TYPE_16__*, i32*, i64)** %68, align 8
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 %69(%struct.TYPE_16__* %70, i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %64, %34
  br label %77

77:                                               ; preds = %76, %1
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %198, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 3
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 %84, i8* %88, align 1
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 9
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 8
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 7
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = call i32 @mbedtls_ssl_write_version(i32 %91, i32 %94, i64 %99, i8* %103)
  %105 = load i64, i64* %7, align 8
  %106 = lshr i64 %105, 8
  %107 = trunc i64 %106 to i8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 4
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 0
  store i8 %107, i8* %111, align 1
  %112 = load i64, i64* %7, align 8
  %113 = trunc i64 %112 to i8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  store i8 %113, i8* %117, align 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %147

122:                                              ; preds = %80
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = call i32 @ssl_encrypt_buf(%struct.TYPE_16__* %123)
  store i32 %124, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %122
  %127 = load i32, i32* %4, align 4
  %128 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* %4, align 4
  store i32 %129, i32* %2, align 4
  br label %208

130:                                              ; preds = %122
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %7, align 8
  %134 = load i64, i64* %7, align 8
  %135 = lshr i64 %134, 8
  %136 = trunc i64 %135 to i8
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 4
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 0
  store i8 %136, i8* %140, align 1
  %141 = load i64, i64* %7, align 8
  %142 = trunc i64 %141 to i8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 4
  %145 = load i8*, i8** %144, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 1
  store i8 %142, i8* %146, align 1
  br label %147

147:                                              ; preds = %130, %80
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %149 = call i64 @mbedtls_ssl_hdr_len(%struct.TYPE_16__* %148)
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %149, %152
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 5
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %156, i32 0, i32 3
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  %160 = load i8, i8* %159, align 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 3
  %163 = load i8*, i8** %162, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = load i8, i8* %164, align 1
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  %168 = load i8*, i8** %167, align 8
  %169 = getelementptr inbounds i8, i8* %168, i64 2
  %170 = load i8, i8* %169, align 1
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 4
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 0
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = shl i32 %176, 8
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 4
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = or i32 %177, %183
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* %186)
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 3
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %192 = call i64 @mbedtls_ssl_hdr_len(%struct.TYPE_16__* %191)
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = add i64 %192, %195
  %197 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 4, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8* %190, i64 %196)
  br label %198

198:                                              ; preds = %147, %77
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %200 = call i32 @mbedtls_ssl_flush_output(%struct.TYPE_16__* %199)
  store i32 %200, i32* %4, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load i32, i32* %4, align 4
  %204 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* %4, align 4
  store i32 %205, i32* %2, align 4
  br label %208

206:                                              ; preds = %198
  %207 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %206, %202, %126, %31
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_write_version(i32, i32, i64, i8*) #1

declare dso_local i32 @ssl_encrypt_buf(%struct.TYPE_16__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i64 @mbedtls_ssl_hdr_len(%struct.TYPE_16__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_ssl_flush_output(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
