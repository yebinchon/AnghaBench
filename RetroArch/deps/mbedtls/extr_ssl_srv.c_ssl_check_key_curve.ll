; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_check_key_curve.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_srv.c_ssl_check_key_curve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__**)* @ssl_check_key_curve to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssl_check_key_curve(i32* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca %struct.TYPE_6__**, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %8 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__** %8, %struct.TYPE_6__*** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_7__* @mbedtls_pk_ec(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  br label %15

15:                                               ; preds = %27, %2
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %31

27:                                               ; preds = %19
  %28 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %28, i32 1
  store %struct.TYPE_6__** %29, %struct.TYPE_6__*** %6, align 8
  br label %15

30:                                               ; preds = %15
  store i32 -1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_7__* @mbedtls_pk_ec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
