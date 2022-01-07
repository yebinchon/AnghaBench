; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_port_flush_sync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/vc/extr_mmal_vc_api.c_mmal_vc_port_flush_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__*, i8*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32, i32, %struct.TYPE_14__* }

@MMAL_MAGIC = common dso_local global i8* null, align 8
@MMAL_WORKER_PORT_FLUSH = common dso_local global i32 0, align 4
@MMAL_TRUE = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"failed to disable port - reason %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_15__*)* @mmal_vc_port_flush_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_vc_port_flush_sync(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_14__, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  store %struct.TYPE_16__* %13, %struct.TYPE_16__** %3, align 8
  store i64 8, i64* %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 2
  store %struct.TYPE_13__* %14, %struct.TYPE_13__** %7, align 8
  %15 = load i8*, i8** @MMAL_MAGIC, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  store %struct.TYPE_15__* %17, %struct.TYPE_15__** %18, align 8
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 3
  store %struct.TYPE_14__* %6, %struct.TYPE_14__** %21, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 8
  %34 = load i8*, i8** @MMAL_MAGIC, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = call i32 (...) @mmal_vc_get_client()
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* @MMAL_WORKER_PORT_FLUSH, align 4
  %42 = load i32, i32* @MMAL_TRUE, align 4
  %43 = call i64 @mmal_vc_sendwait_message(i32 %38, i32* %40, i32 32, i32 %41, %struct.TYPE_12__* %5, i64* %8, i32 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* @MMAL_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %1
  %48 = load i64, i64* %8, align 8
  %49 = icmp eq i64 %48, 8
  %50 = zext i1 %49 to i32
  %51 = call i32 @vcos_assert(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %4, align 8
  br label %54

54:                                               ; preds = %47, %1
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* @MMAL_SUCCESS, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %59)
  br label %61

61:                                               ; preds = %58, %54
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i64 @mmal_vc_sendwait_message(i32, i32*, i32, i32, %struct.TYPE_12__*, i64*, i32) #1

declare dso_local i32 @mmal_vc_get_client(...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @LOG_ERROR(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
