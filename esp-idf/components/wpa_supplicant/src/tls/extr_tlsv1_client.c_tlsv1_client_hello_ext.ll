; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_hello_ext.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_client.c_tlsv1_client_hello_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, i32* }

@TLS_EXT_PAC_OPAQUE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"TLSv1: Using session ticket\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_client_hello_ext(%struct.tlsv1_client* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %12 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %14 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @os_free(i32* %15)
  %17 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %18 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %20 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %19, i32 0, i32 1
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %9, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %4
  store i32 0, i32* %5, align 4
  br label %73

27:                                               ; preds = %23
  %28 = load i64, i64* %9, align 8
  %29 = add i64 6, %28
  %30 = trunc i64 %29 to i32
  %31 = call i32* @os_malloc(i32 %30)
  %32 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %33 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %32, i32 0, i32 2
  store i32* %31, i32** %33, align 8
  store i32* %31, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %73

37:                                               ; preds = %27
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add i64 4, %39
  %41 = call i32 @WPA_PUT_BE16(i32* %38, i64 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %10, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = call i32 @WPA_PUT_BE16(i32* %44, i64 %46)
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  store i32* %49, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @WPA_PUT_BE16(i32* %50, i64 %51)
  %53 = load i32*, i32** %10, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @os_memcpy(i32* %55, i32* %56, i64 %57)
  %59 = load i64, i64* %9, align 8
  %60 = add i64 6, %59
  %61 = trunc i64 %60 to i32
  %62 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %63 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @TLS_EXT_PAC_OPAQUE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %37
  %68 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %69 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = call i32 @wpa_printf(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %37
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %36, %26
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
