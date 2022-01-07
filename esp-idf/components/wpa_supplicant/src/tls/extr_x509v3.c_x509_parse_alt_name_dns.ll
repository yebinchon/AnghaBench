; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_alt_name_dns.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_alt_name_dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_name = type { i8* }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"X509: altName - dNSName\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"X509: Reject certificate with embedded NUL byte in dNSName (%s[NUL])\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.x509_name*, i32*, i64)* @x509_parse_alt_name_dns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_alt_name_dns(%struct.x509_name* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.x509_name*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store %struct.x509_name* %0, %struct.x509_name** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i32, i32* @MSG_MSGDUMP, align 4
  %9 = load i32*, i32** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @wpa_hexdump_ascii(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %9, i64 %10)
  %12 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %13 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @os_free(i8* %14)
  %16 = load i64, i64* %7, align 8
  %17 = add i64 %16, 1
  %18 = call i64 @os_zalloc(i64 %17)
  %19 = inttoptr i64 %18 to i8*
  %20 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %21 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %20, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %23 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

27:                                               ; preds = %3
  %28 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %29 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @os_memcpy(i8* %30, i32* %31, i64 %32)
  %34 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %35 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @os_strlen(i8* %36)
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %27
  %41 = load i32, i32* @MSG_INFO, align 4
  %42 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %43 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i8* %44)
  %46 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %47 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @os_free(i8* %48)
  %50 = load %struct.x509_name*, %struct.x509_name** %5, align 8
  %51 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %50, i32 0, i32 0
  store i8* null, i8** %51, align 8
  store i32 -1, i32* %4, align 4
  br label %53

52:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %40, %26
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i64 @os_zalloc(i64) #1

declare dso_local i32 @os_memcpy(i8*, i32*, i64) #1

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
