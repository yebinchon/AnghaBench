; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_calc_finished_tls.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_calc_finished_tls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i32 (i32, i32, i8*, i8*, i32, i8*, i32)*, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"=> calc  finished tls\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"finished  md5 state\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"finished sha1 state\00", align 1
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"client finished\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"server finished\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"calc finished result\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"<= calc  finished\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, i8*, i32)* @ssl_calc_finished_tls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssl_calc_finished_tls(%struct.TYPE_17__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_19__, align 8
  %10 = alloca %struct.TYPE_18__, align 8
  %11 = alloca [36 x i8], align 16
  %12 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 12, i32* %7, align 4
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %12, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %3
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  store %struct.TYPE_16__* %21, %struct.TYPE_16__** %12, align 8
  br label %22

22:                                               ; preds = %18, %3
  %23 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @mbedtls_md5_init(%struct.TYPE_19__* %9)
  %25 = call i32 @mbedtls_sha1_init(%struct.TYPE_18__* %10)
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 2
  %30 = call i32 @mbedtls_md5_clone(%struct.TYPE_19__* %9, i32* %29)
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = call i32 @mbedtls_sha1_clone(%struct.TYPE_18__* %10, i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 8)
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %42, i32 8)
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MBEDTLS_SSL_IS_CLIENT, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)
  store i8* %48, i8** %8, align 8
  %49 = getelementptr inbounds [36 x i8], [36 x i8]* %11, i64 0, i64 0
  %50 = call i32 @mbedtls_md5_finish(%struct.TYPE_19__* %9, i8* %49)
  %51 = getelementptr inbounds [36 x i8], [36 x i8]* %11, i64 0, i64 0
  %52 = getelementptr inbounds i8, i8* %51, i64 16
  %53 = call i32 @mbedtls_sha1_finish(%struct.TYPE_18__* %10, i8* %52)
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i32 (i32, i32, i8*, i8*, i32, i8*, i32)*, i32 (i32, i32, i8*, i8*, i32, i8*, i32)** %57, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds [36 x i8], [36 x i8]* %11, i64 0, i64 0
  %64 = load i8*, i8** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 %58(i32 %61, i32 48, i8* %62, i8* %63, i32 36, i8* %64, i32 %65)
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @MBEDTLS_SSL_DEBUG_BUF(i32 3, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8* %67, i32 %68)
  %70 = call i32 @mbedtls_md5_free(%struct.TYPE_19__* %9)
  %71 = call i32 @mbedtls_sha1_free(%struct.TYPE_18__* %10)
  %72 = getelementptr inbounds [36 x i8], [36 x i8]* %11, i64 0, i64 0
  %73 = call i32 @mbedtls_zeroize(i8* %72, i32 36)
  %74 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_md5_init(%struct.TYPE_19__*) #1

declare dso_local i32 @mbedtls_sha1_init(%struct.TYPE_18__*) #1

declare dso_local i32 @mbedtls_md5_clone(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @mbedtls_sha1_clone(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_BUF(i32, i8*, i8*, i32) #1

declare dso_local i32 @mbedtls_md5_finish(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @mbedtls_sha1_finish(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @mbedtls_md5_free(%struct.TYPE_19__*) #1

declare dso_local i32 @mbedtls_sha1_free(%struct.TYPE_18__*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
