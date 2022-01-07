; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_mbedtls_ssl_handshake_server_step.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_mbedtls_ssl_handshake_server_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_23__*, %struct.TYPE_22__* }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_22__ = type { i64 }

@MBEDTLS_SSL_HANDSHAKE_OVER = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"server state: %d\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"handshake: done\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"invalid state %d\00", align 1
@MBEDTLS_ERR_SSL_HELLO_VERIFY_REQUIRED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_RETRANS_SENDING = common dso_local global i64 0, align 8
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_handshake_server_step(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @MBEDTLS_SSL_HANDSHAKE_OVER, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %12, align 8
  %14 = icmp eq %struct.TYPE_23__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %16, i32* %2, align 4
  br label %92

17:                                               ; preds = %10
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* %22)
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %25 = call i32 @mbedtls_ssl_flush_output(%struct.TYPE_24__* %24)
  store i32 %25, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %92

29:                                               ; preds = %17
  %30 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %82 [
    i32 135, label %33
    i32 139, label %36
    i32 131, label %39
    i32 134, label %42
    i32 128, label %45
    i32 144, label %48
    i32 130, label %51
    i32 142, label %54
    i32 138, label %57
    i32 143, label %60
    i32 141, label %63
    i32 140, label %66
    i32 133, label %69
    i32 132, label %72
    i32 137, label %75
    i32 136, label %79
  ]

33:                                               ; preds = %29
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  store i32 139, i32* %35, align 8
  br label %90

36:                                               ; preds = %29
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %38 = call i32 @ssl_parse_client_hello(%struct.TYPE_24__* %37)
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %29
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %41 = call i32 @ssl_write_server_hello(%struct.TYPE_24__* %40)
  store i32 %41, i32* %4, align 4
  br label %90

42:                                               ; preds = %29
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = call i32 @mbedtls_ssl_write_certificate(%struct.TYPE_24__* %43)
  store i32 %44, i32* %4, align 4
  br label %90

45:                                               ; preds = %29
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %47 = call i32 @ssl_write_server_key_exchange(%struct.TYPE_24__* %46)
  store i32 %47, i32* %4, align 4
  br label %90

48:                                               ; preds = %29
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %50 = call i32 @ssl_write_certificate_request(%struct.TYPE_24__* %49)
  store i32 %50, i32* %4, align 4
  br label %90

51:                                               ; preds = %29
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %53 = call i32 @ssl_write_server_hello_done(%struct.TYPE_24__* %52)
  store i32 %53, i32* %4, align 4
  br label %90

54:                                               ; preds = %29
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %56 = call i32 @mbedtls_ssl_parse_certificate(%struct.TYPE_24__* %55)
  store i32 %56, i32* %4, align 4
  br label %90

57:                                               ; preds = %29
  %58 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %59 = call i32 @ssl_parse_client_key_exchange(%struct.TYPE_24__* %58)
  store i32 %59, i32* %4, align 4
  br label %90

60:                                               ; preds = %29
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %62 = call i32 @ssl_parse_certificate_verify(%struct.TYPE_24__* %61)
  store i32 %62, i32* %4, align 4
  br label %90

63:                                               ; preds = %29
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %65 = call i32 @mbedtls_ssl_parse_change_cipher_spec(%struct.TYPE_24__* %64)
  store i32 %65, i32* %4, align 4
  br label %90

66:                                               ; preds = %29
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %68 = call i32 @mbedtls_ssl_parse_finished(%struct.TYPE_24__* %67)
  store i32 %68, i32* %4, align 4
  br label %90

69:                                               ; preds = %29
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %71 = call i32 @mbedtls_ssl_write_change_cipher_spec(%struct.TYPE_24__* %70)
  store i32 %71, i32* %4, align 4
  br label %90

72:                                               ; preds = %29
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %74 = call i32 @mbedtls_ssl_write_finished(%struct.TYPE_24__* %73)
  store i32 %74, i32* %4, align 4
  br label %90

75:                                               ; preds = %29
  %76 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %77, i32 0, i32 0
  store i32 136, i32* %78, align 8
  br label %90

79:                                               ; preds = %29
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %81 = call i32 @mbedtls_ssl_handshake_wrapup(%struct.TYPE_24__* %80)
  br label %90

82:                                               ; preds = %29
  %83 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* %87)
  %89 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %79, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %82, %27, %15
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_flush_output(%struct.TYPE_24__*) #1

declare dso_local i32 @ssl_parse_client_hello(%struct.TYPE_24__*) #1

declare dso_local i32 @ssl_write_server_hello(%struct.TYPE_24__*) #1

declare dso_local i32 @mbedtls_ssl_write_certificate(%struct.TYPE_24__*) #1

declare dso_local i32 @ssl_write_server_key_exchange(%struct.TYPE_24__*) #1

declare dso_local i32 @ssl_write_certificate_request(%struct.TYPE_24__*) #1

declare dso_local i32 @ssl_write_server_hello_done(%struct.TYPE_24__*) #1

declare dso_local i32 @mbedtls_ssl_parse_certificate(%struct.TYPE_24__*) #1

declare dso_local i32 @ssl_parse_client_key_exchange(%struct.TYPE_24__*) #1

declare dso_local i32 @ssl_parse_certificate_verify(%struct.TYPE_24__*) #1

declare dso_local i32 @mbedtls_ssl_parse_change_cipher_spec(%struct.TYPE_24__*) #1

declare dso_local i32 @mbedtls_ssl_parse_finished(%struct.TYPE_24__*) #1

declare dso_local i32 @mbedtls_ssl_write_change_cipher_spec(%struct.TYPE_24__*) #1

declare dso_local i32 @mbedtls_ssl_write_finished(%struct.TYPE_24__*) #1

declare dso_local i32 @mbedtls_ssl_handshake_wrapup(%struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
