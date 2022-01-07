; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ticket.c_mbedtls_ssl_ticket_parse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ticket.c_mbedtls_ssl_ticket_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { i32 }

@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_SESSION_TICKET_EXPIRED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_CIPHER_AUTH_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_INVALID_MAC = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_ERR_THREADING_MUTEX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_ticket_parse(i8* %0, %struct.TYPE_11__* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %21, %struct.TYPE_10__** %11, align 8
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %13, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 4
  store i8* %24, i8** %14, align 8
  %25 = load i8*, i8** %14, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 12
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** %15, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 2
  store i8* %28, i8** %16, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %30 = icmp eq %struct.TYPE_10__* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %4
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %4
  %37 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %37, i32* %5, align 4
  br label %111

38:                                               ; preds = %31
  %39 = load i64, i64* %9, align 8
  %40 = icmp ult i64 %39, 34
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %42, i32* %5, align 4
  br label %111

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = call i32 @ssl_ticket_update_keys(%struct.TYPE_10__* %44)
  store i32 %45, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %109

48:                                               ; preds = %43
  %49 = load i8*, i8** %15, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = shl i32 %52, 8
  %54 = load i8*, i8** %15, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = or i32 %53, %57
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %18, align 8
  %60 = load i8*, i8** %16, align 8
  %61 = load i64, i64* %18, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %17, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %18, align 8
  %65 = add i64 18, %64
  %66 = add i64 %65, 16
  %67 = icmp ne i64 %63, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %69, i32* %10, align 4
  br label %109

70:                                               ; preds = %48
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %72 = load i8*, i8** %13, align 8
  %73 = call %struct.TYPE_9__* @ssl_ticket_select_key(%struct.TYPE_10__* %71, i8* %72)
  store %struct.TYPE_9__* %73, %struct.TYPE_9__** %12, align 8
  %74 = icmp eq %struct.TYPE_9__* %73, null
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i32, i32* @MBEDTLS_ERR_SSL_SESSION_TICKET_EXPIRED, align 4
  store i32 %76, i32* %10, align 4
  br label %109

77:                                               ; preds = %70
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i8*, i8** %14, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = load i64, i64* %18, align 8
  %84 = load i8*, i8** %16, align 8
  %85 = load i8*, i8** %17, align 8
  %86 = call i32 @mbedtls_cipher_auth_decrypt(i32* %79, i8* %80, i32 12, i8* %81, i32 18, i8* %82, i64 %83, i8* %84, i64* %19, i8* %85, i32 16)
  store i32 %86, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %77
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @MBEDTLS_ERR_CIPHER_AUTH_FAILED, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @MBEDTLS_ERR_SSL_INVALID_MAC, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %92, %88
  br label %109

95:                                               ; preds = %77
  %96 = load i64, i64* %19, align 8
  %97 = load i64, i64* %18, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %100, i32* %10, align 4
  br label %109

101:                                              ; preds = %95
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %103 = load i8*, i8** %16, align 8
  %104 = load i64, i64* %19, align 8
  %105 = call i32 @ssl_load_session(%struct.TYPE_11__* %102, i8* %103, i64 %104)
  store i32 %105, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %101
  br label %109

108:                                              ; preds = %101
  br label %109

109:                                              ; preds = %108, %107, %99, %94, %75, %68, %47
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %5, align 4
  br label %111

111:                                              ; preds = %109, %41, %36
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @ssl_ticket_update_keys(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_9__* @ssl_ticket_select_key(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @mbedtls_cipher_auth_decrypt(i32*, i8*, i32, i8*, i32, i8*, i64, i8*, i64*, i8*, i32) #1

declare dso_local i32 @ssl_load_session(%struct.TYPE_11__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
