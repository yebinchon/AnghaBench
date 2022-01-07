; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ticket.c_ssl_save_session.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_ticket.c_ssl_save_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_8__* }

@MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64, i64*)* @ssl_save_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_save_session(%struct.TYPE_8__* %0, i8* %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %11, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @MBEDTLS_ERR_SSL_BUFFER_TOO_SMALL, align 4
  store i32 %17, i32* %5, align 4
  br label %32

18:                                               ; preds = %4
  %19 = load i8*, i8** %10, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = call i32 @memcpy(i8* %19, %struct.TYPE_8__* %20, i64 8)
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 8
  store i8* %23, i8** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = sub i64 %24, 8
  store i64 %25, i64* %11, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = load i64*, i64** %9, align 8
  store i64 %30, i64* %31, align 8
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %18, %16
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @memcpy(i8*, %struct.TYPE_8__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
