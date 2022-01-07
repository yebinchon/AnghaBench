; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_calc_finished_tls_sha256.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_calc_finished_tls_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_11__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 (i32, i32, i8*, i8*, i32, i8*, i32)*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"=> calc  finished tls sha256\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"finished sha2 state\00", align 1
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"client finished\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"server finished\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"calc finished result\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"<= calc  finished\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, i8*, i32)* @ssl_calc_finished_tls_sha256 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_calc_finished_tls_sha256(%struct.TYPE_12__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_13__, align 8
  %10 = alloca [32 x i8], align 16
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 12, i32* %7, align 4
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %11, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %3
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %11, align 8
  br label %21

21:                                               ; preds = %17, %3
  %22 = call i32 @mbedtls_sha256_init(%struct.TYPE_13__* %9)
  %23 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = call i32 @mbedtls_sha256_clone(%struct.TYPE_13__* %9, i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %31, i32 8)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MBEDTLS_SSL_IS_CLIENT, align 4
  %35 = icmp eq i32 %33, %34
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)
  store i8* %37, i8** %8, align 8
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %39 = call i32 @mbedtls_sha256_finish(%struct.TYPE_13__* %9, i8* %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32 (i32, i32, i8*, i8*, i32, i8*, i32)*, i32 (i32, i32, i8*, i8*, i32, i8*, i32)** %43, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %8, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 %44(i32 %47, i32 48, i8* %48, i8* %49, i32 32, i8* %50, i32 %51)
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %53, i32 %54)
  %56 = call i32 @mbedtls_sha256_free(%struct.TYPE_13__* %9)
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %10, i64 0, i64 0
  %58 = call i32 @mbedtls_zeroize(i8* %57, i32 32)
  %59 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mbedtls_sha256_init(%struct.TYPE_13__*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_sha256_clone(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i32) #1

declare dso_local i32 @mbedtls_sha256_finish(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @mbedtls_sha256_free(%struct.TYPE_13__*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
