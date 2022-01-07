; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_mmal_encode/extr_mmal_encode.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_mmal_encode/extr_mmal_encode.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@sem = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"encoder sem\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Failed to create semaphore\0A\00", align 1
@encoder = common dso_local global %struct.TYPE_4__* null, align 8
@MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to create mmal component\0A\00", align 1
@mmalCallback = common dso_local global i32 0, align 4
@MMAL_ENCODING_PNG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"out.png\00", align 1
@MMAL_ENCODING_JPEG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"out.jpg\00", align 1
@MMAL_ENCODING_GIF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"out.gif\00", align 1
@MMAL_ENCODING_BMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"out.bmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 (...) @bcm_host_init()
  %7 = call i64 @vcos_semaphore_create(i32* @sem, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  %8 = load i64, i64* @VCOS_SUCCESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @stderr, align 4
  %12 = call i32 @fprintf(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %2
  %15 = load i32, i32* @MMAL_COMPONENT_DEFAULT_IMAGE_ENCODER, align 4
  %16 = call i64 @mmal_wrapper_create(%struct.TYPE_4__** @encoder, i32 %15)
  %17 = load i64, i64* @MMAL_SUCCESS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %14
  %24 = load i32, i32* @mmalCallback, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** @encoder, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @MMAL_ENCODING_PNG, align 4
  %28 = call i32 @mmal_encode_test(i32 %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* @MMAL_ENCODING_JPEG, align 4
  %30 = call i32 @mmal_encode_test(i32 %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %31 = load i32, i32* @MMAL_ENCODING_GIF, align 4
  %32 = call i32 @mmal_encode_test(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %33 = load i32, i32* @MMAL_ENCODING_BMP, align 4
  %34 = call i32 @mmal_encode_test(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @encoder, align 8
  %36 = call i32 @mmal_wrapper_destroy(%struct.TYPE_4__* %35)
  %37 = call i32 @vcos_semaphore_delete(i32* @sem)
  ret i32 0
}

declare dso_local i32 @bcm_host_init(...) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @mmal_wrapper_create(%struct.TYPE_4__**, i32) #1

declare dso_local i32 @mmal_encode_test(i32, i8*) #1

declare dso_local i32 @mmal_wrapper_destroy(%struct.TYPE_4__*) #1

declare dso_local i32 @vcos_semaphore_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
