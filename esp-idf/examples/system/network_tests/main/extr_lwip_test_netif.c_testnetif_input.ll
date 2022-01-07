; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_lwip_test_netif.c_testnetif_input.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/network_tests/main/extr_lwip_test_netif.c_testnetif_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 (%struct.pbuf*, %struct.TYPE_3__*)* }
%struct.pbuf = type { i32, i32* }
%struct.netif = type { i32 }

@g_last_netif = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"error!\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"simul in: %d\0A\00", align 1
@PBUF_RAW = common dso_local global i32 0, align 4
@PBUF_RAM = common dso_local global i32 0, align 4
@ERR_OK = common dso_local global i64 0, align 8
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"ethernetif_input: IP input error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testnetif_input(%struct.netif* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.netif*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pbuf*, align 8
  store %struct.netif* %0, %struct.netif** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_last_netif, align 8
  %11 = icmp eq %struct.TYPE_3__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %46

14:                                               ; preds = %4
  %15 = load i64, i64* %7, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %46

20:                                               ; preds = %14
  %21 = load i32, i32* @PBUF_RAW, align 4
  %22 = load i64, i64* %7, align 8
  %23 = load i32, i32* @PBUF_RAM, align 4
  %24 = call %struct.pbuf* @pbuf_alloc(i32 %21, i64 %22, i32 %23)
  store %struct.pbuf* %24, %struct.pbuf** %9, align 8
  %25 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @memcpy(i32 %29, i8* %30, i64 %31)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_last_netif, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64 (%struct.pbuf*, %struct.TYPE_3__*)*, i64 (%struct.pbuf*, %struct.TYPE_3__*)** %34, align 8
  %36 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @g_last_netif, align 8
  %38 = call i64 %35(%struct.pbuf* %36, %struct.TYPE_3__* %37)
  %39 = load i64, i64* @ERR_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %20
  %42 = load i32, i32* @NETIF_DEBUG, align 4
  %43 = call i32 @LWIP_DEBUGF(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.pbuf*, %struct.pbuf** %9, align 8
  %45 = call i32 @pbuf_free(%struct.pbuf* %44)
  br label %46

46:                                               ; preds = %12, %19, %41, %20
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local i32 @pbuf_free(%struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
