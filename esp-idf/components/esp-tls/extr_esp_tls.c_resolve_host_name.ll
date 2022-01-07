; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls.c_resolve_host_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp-tls/extr_esp_tls.c_resolve_host_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i32, i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"host:%s: strlen %lu\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"couldn't get hostname for :%s:\00", align 1
@ESP_ERR_ESP_TLS_CANNOT_RESOLVE_HOSTNAME = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.addrinfo**)* @resolve_host_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_host_name(i8* %0, i64 %1, %struct.addrinfo** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.addrinfo**, align 8
  %8 = alloca %struct.addrinfo, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.addrinfo** %2, %struct.addrinfo*** %7, align 8
  %10 = call i32 @memset(%struct.addrinfo* %8, i32 0, i32 8)
  %11 = load i32, i32* @AF_UNSPEC, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @SOCK_STREAM, align 4
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i8* @strndup(i8* %15, i64 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %21, i32* %4, align 4
  br label %42

22:                                               ; preds = %3
  %23 = load i32, i32* @TAG, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @ESP_LOGD(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %24, i64 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.addrinfo**, %struct.addrinfo*** %7, align 8
  %29 = call i64 @getaddrinfo(i8* %27, i32* null, %struct.addrinfo* %8, %struct.addrinfo** %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load i32, i32* @TAG, align 4
  %33 = load i8*, i8** %9, align 8
  %34 = call i32 @ESP_LOGE(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @free(i8* %35)
  %37 = load i32, i32* @ESP_ERR_ESP_TLS_CANNOT_RESOLVE_HOSTNAME, align 4
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %22
  %39 = load i8*, i8** %9, align 8
  %40 = call i32 @free(i8* %39)
  %41 = load i32, i32* @ESP_OK, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %31, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i8* @strndup(i8*, i64) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i8*, i64) #1

declare dso_local i64 @getaddrinfo(i8*, i32*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
