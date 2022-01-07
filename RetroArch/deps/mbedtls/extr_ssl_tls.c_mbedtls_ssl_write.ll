; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }

@.str = private unnamed_addr constant [9 x i8] c"=> write\00", align 1
@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_SSL_HANDSHAKE_OVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"mbedtls_ssl_handshake\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"<= write\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_write(%struct.TYPE_7__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = icmp eq %struct.TYPE_7__* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %3
  %18 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %12
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MBEDTLS_SSL_HANDSHAKE_OVER, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = call i32 @mbedtls_ssl_handshake(%struct.TYPE_7__* %26)
  store i32 %27, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @MBEDTLS_SSL_DEBUG_RET(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %41

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @ssl_write_real(%struct.TYPE_7__* %35, i8* %36, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %34, %29, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_ssl_handshake(%struct.TYPE_7__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_RET(i32, i8*, i32) #1

declare dso_local i32 @ssl_write_real(%struct.TYPE_7__*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
