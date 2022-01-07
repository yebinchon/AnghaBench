; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_pick_cert.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_pick_cert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__*, i32, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__* }

@MBEDTLS_PK_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"ciphersuite requires certificate\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"server has no certificate\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"candidate certificate chain, certificate\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"certificate mismatch: key type\00", align 1
@MBEDTLS_SSL_IS_SERVER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"certificate mismatch: (extended) key usage extension\00", align 1
@MBEDTLS_SSL_MINOR_VERSION_3 = common dso_local global i64 0, align 8
@MBEDTLS_MD_SHA1 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [57 x i8] c"certificate not preferred: sha-2 with pre-TLS 1.2 client\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"selected certificate chain, certificate\00", align 1
@MBEDTLS_PK_ECDSA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*)* @ssl_pick_cert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_pick_cert(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %8, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @mbedtls_ssl_get_ciphersuite_sig_pk_alg(i32* %11)
  store i64 %12, i64* %9, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %7, align 8
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @MBEDTLS_PK_NONE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %105

22:                                               ; preds = %2
  %23 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %25 = icmp eq %struct.TYPE_10__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %105

28:                                               ; preds = %22
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %6, align 8
  br label %30

30:                                               ; preds = %78, %28
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %33, label %82

33:                                               ; preds = %30
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = call i32 @MBEDTLS_SSL_DEBUG_CRT(i32 3, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_12__* %36)
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @mbedtls_pk_can_do(i32 %40, i64 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %33
  %45 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %78

46:                                               ; preds = %33
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* @MBEDTLS_SSL_IS_SERVER, align 4
  %52 = call i64 @mbedtls_ssl_check_cert_usage(%struct.TYPE_12__* %49, i32* %50, i32 %51, i32* %10)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  br label %78

56:                                               ; preds = %46
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MBEDTLS_SSL_MINOR_VERSION_3, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %77

62:                                               ; preds = %56
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @MBEDTLS_MD_SHA1, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %62
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = icmp eq %struct.TYPE_10__* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %74, %struct.TYPE_10__** %8, align 8
  br label %75

75:                                               ; preds = %73, %70
  %76 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 3, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  br label %78

77:                                               ; preds = %62, %56
  br label %82

78:                                               ; preds = %75, %54, %44
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %6, align 8
  br label %30

82:                                               ; preds = %77, %30
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = icmp eq %struct.TYPE_10__* %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %86, %struct.TYPE_10__** %6, align 8
  br label %87

87:                                               ; preds = %85, %82
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %89 = icmp ne %struct.TYPE_10__* %88, null
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store %struct.TYPE_10__* %91, %struct.TYPE_10__** %95, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = call i32 @MBEDTLS_SSL_DEBUG_CRT(i32 3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_12__* %102)
  store i32 0, i32* %3, align 4
  br label %105

104:                                              ; preds = %87
  store i32 -1, i32* %3, align 4
  br label %105

105:                                              ; preds = %104, %90, %26, %21
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i64 @mbedtls_ssl_get_ciphersuite_sig_pk_alg(i32*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_CRT(i32, i8*, %struct.TYPE_12__*) #1

declare dso_local i32 @mbedtls_pk_can_do(i32, i64) #1

declare dso_local i64 @mbedtls_ssl_check_cert_usage(%struct.TYPE_12__*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
