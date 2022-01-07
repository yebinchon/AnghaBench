; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchiq_signal_test.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_test.c_vchiq_signal_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@vchiq_signal_test.sizes = internal global [4 x i32] [i32 0, i32 1024, i32 2048, i32 128], align 16
@g_servname = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [48 x i8] c"signal test - service:%s, iters:%d, version %d\0A\00", align 1
@g_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VCHIQ_TEST_VER = common dso_local global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"* failed to open vchiq instance\0A\00", align 1
@VCHIQ_ERROR = common dso_local global i64 0, align 8
@clnt_callback = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"clnt userdata\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"* failed to open service - already in use?\0A\00", align 1
@VCHIQ_BULK_MODE_BLOCKING = common dso_local global i32 0, align 4
@g_timeout_ms = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @vchiq_signal_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vchiq_signal_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i8*, i8** @g_servname, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = load i8*, i8** @g_servname, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = load i8*, i8** @g_servname, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 2
  %14 = load i8, i8* %13, align 1
  %15 = load i8*, i8** @g_servname, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 3
  %17 = load i8, i8* %16, align 1
  %18 = call i32 @VCHIQ_MAKE_FOURCC(i8 signext %8, i8 signext %11, i8 signext %14, i8 signext %17)
  store i32 %18, i32* %5, align 4
  %19 = load i8*, i8** @g_servname, align 8
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_params, i32 0, i32 0), align 4
  %21 = load i32, i32* @VCHIQ_TEST_VER, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %20, i32 %21)
  %23 = call i64 @vchiq_initialise(i32* %2)
  %24 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %0
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %28, i64* %1, align 8
  br label %50

29:                                               ; preds = %0
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @vchiq_connect(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @clnt_callback, align 4
  %34 = load i32, i32* @VCHIQ_TEST_VER, align 4
  %35 = call i32 @INIT_PARAMS(i32* %4, i32 %32, i32 %33, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i64 @vchiq_open_service(i32 %36, i32* %4, i32* %3)
  %38 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %29
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i64, i64* @VCHIQ_ERROR, align 8
  store i64 %42, i64* %1, align 8
  br label %50

43:                                               ; preds = %29
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @VCHIQ_BULK_MODE_BLOCKING, align 4
  %46 = call i32 @vchiq_bulk_transmit(i32 %44, i32** bitcast ([4 x i32]* @vchiq_signal_test.sizes to i32**), i32 16, i32 0, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @vchiq_close_service(i32 %47)
  %49 = load i64, i64* @VCHIQ_SUCCESS, align 8
  store i64 %49, i64* %1, align 8
  br label %50

50:                                               ; preds = %43, %40, %26
  %51 = load i64, i64* %1, align 8
  ret i64 %51
}

declare dso_local i32 @VCHIQ_MAKE_FOURCC(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @vchiq_initialise(i32*) #1

declare dso_local i32 @vchiq_connect(i32) #1

declare dso_local i32 @INIT_PARAMS(i32*, i32, i32, i8*, i32) #1

declare dso_local i64 @vchiq_open_service(i32, i32*, i32*) #1

declare dso_local i32 @vchiq_bulk_transmit(i32, i32**, i32, i32, i32) #1

declare dso_local i32 @vchiq_close_service(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
