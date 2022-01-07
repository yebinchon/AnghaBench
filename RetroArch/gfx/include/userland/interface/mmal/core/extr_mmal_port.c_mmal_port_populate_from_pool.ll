; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_populate_from_pool.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_populate_from_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"%s port %p, pool: %p\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"too few buffers in the pool\00", align 1
@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to send buffer to port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @mmal_port_populate_from_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_port_populate_from_pool(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %9 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %9, i64* %6, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %17, i64* %3, align 8
  br label %58

18:                                               ; preds = %2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21, %struct.TYPE_10__* %22, %struct.TYPE_11__* %23)
  store i64 0, i64* %7, align 8
  br label %25

25:                                               ; preds = %53, %18
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32* @mmal_queue_get(i32 %34)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %40, i64* %6, align 8
  br label %56

41:                                               ; preds = %31
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = call i64 @mmal_port_send_buffer(%struct.TYPE_10__* %42, i32* %43)
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @MMAL_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @mmal_buffer_header_release(i32* %50)
  br label %56

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %7, align 8
  %55 = add nsw i64 %54, 1
  store i64 %55, i64* %7, align 8
  br label %25

56:                                               ; preds = %48, %38, %25
  %57 = load i64, i64* %6, align 8
  store i64 %57, i64* %3, align 8
  br label %58

58:                                               ; preds = %56, %16
  %59 = load i64, i64* %3, align 8
  ret i64 %59
}

declare dso_local i32 @LOG_TRACE(i8*, i32, %struct.TYPE_10__*, %struct.TYPE_11__*) #1

declare dso_local i32* @mmal_queue_get(i32) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i64 @mmal_port_send_buffer(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @mmal_buffer_header_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
