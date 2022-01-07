; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_create_pthpriority_voucher.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_qos.c_create_pthpriority_voucher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32, i32, i32 }

@MACH_PORT_NULL = common dso_local global i32 0, align 4
@MACH_VOUCHER_ATTR_KEY_PTHPRIORITY = common dso_local global i32 0, align 4
@MACH_VOUCHER_ATTR_PTHPRIORITY_CREATE = common dso_local global i32 0, align 4
@MACH_VOUCHER_NULL = common dso_local global i32 0, align 4
@T_QUIET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"client host_create_mach_voucher\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @create_pthpriority_voucher to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_pthpriority_voucher(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [8 x i8], align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* @MACH_PORT_NULL, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %2, align 4
  store i32 %11, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 %12
  %14 = bitcast i8* %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %9, align 8
  %15 = load i32, i32* @MACH_VOUCHER_ATTR_KEY_PTHPRIORITY, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @MACH_VOUCHER_ATTR_PTHPRIORITY_CREATE, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @MACH_VOUCHER_NULL, align 4
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @memcpy(i8* %28, i32* %6, i32 4)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 4, i32* %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = add i64 4, %35
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = getelementptr inbounds [8 x i8], [8 x i8]* %3, i64 0, i64 0
  %40 = ptrtoint i8* %39 to i64
  store i64 %40, i64* %7, align 8
  %41 = call i32 (...) @mach_host_self()
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @host_create_mach_voucher(i32 %41, i64 %42, i64 %43, i32* %4)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* @T_QUIET, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @T_ASSERT_MACH_SUCCESS(i32 %46, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @host_create_mach_voucher(i32, i64, i64, i32*) #1

declare dso_local i32 @mach_host_self(...) #1

declare dso_local i32 @T_ASSERT_MACH_SUCCESS(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
