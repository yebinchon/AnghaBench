; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_mbedtls_ssl_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_10__* }

@.str = private unnamed_addr constant [8 x i8] c"=> free\00", align 1
@MBEDTLS_SSL_BUFFER_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"<= free\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbedtls_ssl_free(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = icmp eq %struct.TYPE_10__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %99

6:                                                ; preds = %1
  %7 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 9
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = icmp ne %struct.TYPE_10__* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %6
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 9
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = load i32, i32* @MBEDTLS_SSL_BUFFER_LEN, align 4
  %17 = call i32 @mbedtls_zeroize(%struct.TYPE_10__* %15, i32 %16)
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 9
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = call i32 @mbedtls_free(%struct.TYPE_10__* %20)
  br label %22

22:                                               ; preds = %12, %6
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* @MBEDTLS_SSL_BUFFER_LEN, align 4
  %32 = call i32 @mbedtls_zeroize(%struct.TYPE_10__* %30, i32 %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = call i32 @mbedtls_free(%struct.TYPE_10__* %35)
  br label %37

37:                                               ; preds = %27, %22
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 6
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 6
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = call i32 @mbedtls_ssl_transform_free(%struct.TYPE_10__* %45)
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 6
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = call i32 @mbedtls_free(%struct.TYPE_10__* %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = icmp ne %struct.TYPE_10__* %54, null
  br i1 %55, label %56, label %81

56:                                               ; preds = %51
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 5
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = call i32 @mbedtls_ssl_handshake_free(%struct.TYPE_10__* %59)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = call i32 @mbedtls_ssl_transform_free(%struct.TYPE_10__* %63)
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = call i32 @mbedtls_ssl_session_free(%struct.TYPE_10__* %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 5
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = call i32 @mbedtls_free(%struct.TYPE_10__* %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = call i32 @mbedtls_free(%struct.TYPE_10__* %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = call i32 @mbedtls_free(%struct.TYPE_10__* %79)
  br label %81

81:                                               ; preds = %56, %51
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = icmp ne %struct.TYPE_10__* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %88, align 8
  %90 = call i32 @mbedtls_ssl_session_free(%struct.TYPE_10__* %89)
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = call i32 @mbedtls_free(%struct.TYPE_10__* %93)
  br label %95

95:                                               ; preds = %86, %81
  %96 = call i32 @MBEDTLS_SSL_DEBUG_MSG(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %98 = call i32 @mbedtls_zeroize(%struct.TYPE_10__* %97, i32 80)
  br label %99

99:                                               ; preds = %95, %5
  ret void
}

declare dso_local i32 @MBEDTLS_SSL_DEBUG_MSG(i32, i8*) #1

declare dso_local i32 @mbedtls_zeroize(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @mbedtls_free(%struct.TYPE_10__*) #1

declare dso_local i32 @mbedtls_ssl_transform_free(%struct.TYPE_10__*) #1

declare dso_local i32 @mbedtls_ssl_handshake_free(%struct.TYPE_10__*) #1

declare dso_local i32 @mbedtls_ssl_session_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
