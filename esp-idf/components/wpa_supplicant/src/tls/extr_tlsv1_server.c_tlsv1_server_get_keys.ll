; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server.c_tlsv1_server_get_keys.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_tlsv1_server.c_tlsv1_server_get_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64, i32, i32, i32 }
%struct.tls_keys = type { i32, i32, i8*, i32, i8*, i32 }

@CLIENT_HELLO = common dso_local global i64 0, align 8
@TLS_RANDOM_LEN = common dso_local global i8* null, align 8
@SERVER_HELLO = common dso_local global i64 0, align 8
@TLS_MASTER_SECRET_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tlsv1_server_get_keys(%struct.tlsv1_server* %0, %struct.tls_keys* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tlsv1_server*, align 8
  %5 = alloca %struct.tls_keys*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %4, align 8
  store %struct.tls_keys* %1, %struct.tls_keys** %5, align 8
  %6 = load %struct.tls_keys*, %struct.tls_keys** %5, align 8
  %7 = call i32 @os_memset(%struct.tls_keys* %6, i32 0, i32 40)
  %8 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %9 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @CLIENT_HELLO, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %16 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tls_keys*, %struct.tls_keys** %5, align 8
  %19 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** @TLS_RANDOM_LEN, align 8
  %21 = load %struct.tls_keys*, %struct.tls_keys** %5, align 8
  %22 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %21, i32 0, i32 4
  store i8* %20, i8** %22, align 8
  %23 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %24 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SERVER_HELLO, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %14
  %29 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %30 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.tls_keys*, %struct.tls_keys** %5, align 8
  %33 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** @TLS_RANDOM_LEN, align 8
  %35 = load %struct.tls_keys*, %struct.tls_keys** %5, align 8
  %36 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load %struct.tlsv1_server*, %struct.tlsv1_server** %4, align 8
  %38 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.tls_keys*, %struct.tls_keys** %5, align 8
  %41 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @TLS_MASTER_SECRET_LEN, align 4
  %43 = load %struct.tls_keys*, %struct.tls_keys** %5, align 8
  %44 = getelementptr inbounds %struct.tls_keys, %struct.tls_keys* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %28, %14
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %13
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @os_memset(%struct.tls_keys*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
