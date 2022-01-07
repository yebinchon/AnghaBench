; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ticket.c_mbedtls_ssl_ticket_setup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ticket.c_mbedtls_ssl_ticket_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 (i8*, i8*, i64)*, %struct.TYPE_8__*, i32, i8* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32 }

@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_MODE_GCM = common dso_local global i64 0, align 8
@MBEDTLS_MODE_CCM = common dso_local global i64 0, align 8
@MAX_KEY_BYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_ssl_ticket_setup(%struct.TYPE_9__* %0, i32 (i8*, i8*, i64)* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32 (i8*, i8*, i64)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 (i8*, i8*, i64)* %1, i32 (i8*, i8*, i64)** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32 (i8*, i8*, i64)*, i32 (i8*, i8*, i64)** %8, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store i32 (i8*, i8*, i64)* %14, i32 (i8*, i8*, i64)** %16, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call %struct.TYPE_10__* @mbedtls_cipher_info_from_type(i32 %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %13, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %26 = icmp eq %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %28, i32* %6, align 4
  br label %83

29:                                               ; preds = %5
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MBEDTLS_MODE_GCM, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MBEDTLS_MODE_CCM, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %42, i32* %6, align 4
  br label %83

43:                                               ; preds = %35, %29
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MAX_KEY_BYTES, align 4
  %48 = mul nsw i32 8, %47
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %51, i32* %6, align 4
  br label %83

52:                                               ; preds = %43
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i64 0
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %59 = call i32 @mbedtls_cipher_setup(i32* %57, %struct.TYPE_10__* %58)
  store i32 %59, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %70, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %68 = call i32 @mbedtls_cipher_setup(i32* %66, %struct.TYPE_10__* %67)
  store i32 %68, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61, %52
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %6, align 4
  br label %83

72:                                               ; preds = %61
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %74 = call i32 @ssl_ticket_gen_key(%struct.TYPE_9__* %73, i32 0)
  store i32 %74, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = call i32 @ssl_ticket_gen_key(%struct.TYPE_9__* %77, i32 1)
  store i32 %78, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %76, %72
  %81 = load i32, i32* %12, align 4
  store i32 %81, i32* %6, align 4
  br label %83

82:                                               ; preds = %76
  store i32 0, i32* %6, align 4
  br label %83

83:                                               ; preds = %82, %80, %70, %50, %41, %27
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_10__* @mbedtls_cipher_info_from_type(i32) #1

declare dso_local i32 @mbedtls_cipher_setup(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @ssl_ticket_gen_key(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
