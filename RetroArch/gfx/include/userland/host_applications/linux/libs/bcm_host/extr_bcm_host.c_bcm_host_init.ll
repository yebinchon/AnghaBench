; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/libs/bcm_host/extr_bcm_host.c_bcm_host_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/libs/bcm_host/extr_bcm_host.c_bcm_host_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bcm_host_init.initted = internal global i32 0, align 4
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"* failed to open vchiq instance\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"vchi_initialise\00", align 1
@global_initialise_instance = common dso_local global i64 0, align 8
@global_connection = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"vchi_connect\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"set_vll_dir /sd/vlls\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm_host_init() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  store i32 -1, i32* %2, align 4
  %4 = load i32, i32* @bcm_host_init.initted, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %46

7:                                                ; preds = %0
  store i32 1, i32* @bcm_host_init.initted, align 4
  %8 = call i32 (...) @vcos_init()
  %9 = call i64 @vchiq_initialise(i64* %1)
  %10 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = call i32 @exit(i32 -1) #3
  unreachable

15:                                               ; preds = %7
  %16 = call i32 @vcos_log(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @vchi_initialise(i64* @global_initialise_instance)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = call i32 @vcos_assert(i32 %20)
  %22 = load i64, i64* @global_initialise_instance, align 8
  store i64 %22, i64* %1, align 8
  %23 = call i32 (...) @single_get_func_table()
  %24 = call i32 (...) @vchi_mphi_message_driver_func_table()
  %25 = call i32 @vchi_create_connection(i32 %23, i32 %24)
  store i32 %25, i32* @global_connection, align 4
  %26 = call i32 @vcos_log(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i64, i64* @global_initialise_instance, align 8
  %28 = call i32 @vchi_connect(i32* @global_connection, i32 1, i64 %27)
  %29 = load i64, i64* @global_initialise_instance, align 8
  %30 = call i32 @vc_vchi_gencmd_init(i64 %29, i32* @global_connection, i32 1)
  %31 = load i64, i64* @global_initialise_instance, align 8
  %32 = call i32 @vc_vchi_dispmanx_init(i64 %31, i32* @global_connection, i32 1)
  %33 = load i64, i64* @global_initialise_instance, align 8
  %34 = call i32 @vc_vchi_tv_init(i64 %33, i32* @global_connection, i32 1)
  %35 = load i64, i64* @global_initialise_instance, align 8
  %36 = call i32 @vc_vchi_cec_init(i64 %35, i32* @global_connection, i32 1)
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %15
  %40 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %41 = call i32 @vc_gencmd(i8* %40, i32 128, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 %41, i32* %2, align 4
  %42 = load i32, i32* %2, align 4
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @vcos_assert(i32 %44)
  br label %46

46:                                               ; preds = %6, %39, %15
  ret void
}

declare dso_local i32 @vcos_init(...) #1

declare dso_local i64 @vchiq_initialise(i64*) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @vcos_log(i8*) #1

declare dso_local i32 @vchi_initialise(i64*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vchi_create_connection(i32, i32) #1

declare dso_local i32 @single_get_func_table(...) #1

declare dso_local i32 @vchi_mphi_message_driver_func_table(...) #1

declare dso_local i32 @vchi_connect(i32*, i32, i64) #1

declare dso_local i32 @vc_vchi_gencmd_init(i64, i32*, i32) #1

declare dso_local i32 @vc_vchi_dispmanx_init(i64, i32*, i32) #1

declare dso_local i32 @vc_vchi_tv_init(i64, i32*, i32) #1

declare dso_local i32 @vc_vchi_cec_init(i64, i32*, i32) #1

declare dso_local i32 @vc_gencmd(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
