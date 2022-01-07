; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_handshake_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_ssl_handshake_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_15__*, i32, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"alloc() of ssl sub-contexts failed\00", align 1
@MBEDTLS_ERR_SSL_ALLOC_FAILED = common dso_local global i32 0, align 4
@MBEDTLS_SSL_IS_CLIENT = common dso_local global i64 0, align 8
@MBEDTLS_SSL_RETRANS_PREPARING = common dso_local global i32 0, align 4
@MBEDTLS_SSL_RETRANS_WAITING = common dso_local global i32 0, align 4
@MBEDTLS_SSL_TRANSPORT_DATAGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @ssl_handshake_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_handshake_init(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %4 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %4, i32 0, i32 3
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %7 = icmp ne %struct.TYPE_16__* %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 3
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %12 = call i32 @mbedtls_ssl_transform_free(%struct.TYPE_16__* %11)
  br label %13

13:                                               ; preds = %8, %1
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 4
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = icmp ne %struct.TYPE_16__* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 4
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = call i32 @mbedtls_ssl_session_free(%struct.TYPE_16__* %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = icmp ne %struct.TYPE_16__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = call i32 @mbedtls_ssl_handshake_free(%struct.TYPE_16__* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 3
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = icmp eq %struct.TYPE_16__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = call i64 @mbedtls_calloc(i32 1, i32 8)
  %40 = inttoptr i64 %39 to %struct.TYPE_16__*
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 3
  store %struct.TYPE_16__* %40, %struct.TYPE_16__** %42, align 8
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %45, align 8
  %47 = icmp eq %struct.TYPE_16__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = call i64 @mbedtls_calloc(i32 1, i32 8)
  %50 = inttoptr i64 %49 to %struct.TYPE_16__*
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 4
  store %struct.TYPE_16__* %50, %struct.TYPE_16__** %52, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = icmp eq %struct.TYPE_16__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = call i64 @mbedtls_calloc(i32 1, i32 8)
  %60 = inttoptr i64 %59 to %struct.TYPE_16__*
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  store %struct.TYPE_16__* %60, %struct.TYPE_16__** %62, align 8
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %65, align 8
  %67 = icmp eq %struct.TYPE_16__* %66, null
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = icmp eq %struct.TYPE_16__* %71, null
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = icmp eq %struct.TYPE_16__* %76, null
  br i1 %77, label %78, label %99

78:                                               ; preds = %73, %68, %63
  %79 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %81, align 8
  %83 = call i32 @mbedtls_free(%struct.TYPE_16__* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = call i32 @mbedtls_free(%struct.TYPE_16__* %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %89, align 8
  %91 = call i32 @mbedtls_free(%struct.TYPE_16__* %90)
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 0
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %93, align 8
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 3
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %95, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 4
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %97, align 8
  %98 = load i32, i32* @MBEDTLS_ERR_SSL_ALLOC_FAILED, align 4
  store i32 %98, i32* %2, align 4
  br label %112

99:                                               ; preds = %73
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = call i32 @mbedtls_ssl_session_init(%struct.TYPE_16__* %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 3
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = call i32 @ssl_transform_init(%struct.TYPE_16__* %106)
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %109, align 8
  %111 = call i32 @ssl_handshake_params_init(%struct.TYPE_16__* %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %99, %78
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @mbedtls_ssl_transform_free(%struct.TYPE_16__*) #1

declare dso_local i32 @mbedtls_ssl_session_free(%struct.TYPE_16__*) #1

declare dso_local i32 @mbedtls_ssl_handshake_free(%struct.TYPE_16__*) #1

declare dso_local i64 @mbedtls_calloc(i32, i32) #1

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_free(%struct.TYPE_16__*) #1

declare dso_local i32 @mbedtls_ssl_session_init(%struct.TYPE_16__*) #1

declare dso_local i32 @ssl_transform_init(%struct.TYPE_16__*) #1

declare dso_local i32 @ssl_handshake_params_init(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
