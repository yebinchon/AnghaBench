; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server.c_tlsv1_server_prf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server.c_tlsv1_server_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@TLS_RANDOM_LEN = common dso_local global i32 0, align 4
@ESTABLISHED = common dso_local global i64 0, align 8
@TLS_MASTER_SECRET_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_server_prf(%struct.tlsv1_server* %0, i8* %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tlsv1_server*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %16 = mul nsw i32 2, %15
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %21 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ESTABLISHED, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %72

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %31 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %34 = call i32 @os_memcpy(i32* %19, i32 %32, i32 %33)
  %35 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %19, i64 %36
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %39 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %42 = call i32 @os_memcpy(i32* %37, i32 %40, i32 %41)
  br label %57

43:                                               ; preds = %26
  %44 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %45 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %48 = call i32 @os_memcpy(i32* %19, i32 %46, i32 %47)
  %49 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %19, i64 %50
  %52 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %53 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %56 = call i32 @os_memcpy(i32* %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %43, %29
  %58 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %59 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.tlsv1_server*, %struct.tlsv1_server** %7, align 8
  %63 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @TLS_MASTER_SECRET_LEN, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %68 = mul nsw i32 2, %67
  %69 = load i32*, i32** %10, align 8
  %70 = load i64, i64* %11, align 8
  %71 = call i32 @tls_prf(i32 %61, i32 %64, i32 %65, i8* %66, i32* %19, i32 %68, i32* %69, i64 %70)
  store i32 %71, i32* %6, align 4
  store i32 1, i32* %14, align 4
  br label %72

72:                                               ; preds = %57, %25
  %73 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #2

declare dso_local i32 @tls_prf(i32, i32, i32, i8*, i32*, i32, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
