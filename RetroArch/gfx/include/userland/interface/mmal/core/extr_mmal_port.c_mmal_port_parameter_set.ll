; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_parameter_set.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_parameter_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, i64, i64, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { {}* }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"no port\00", align 1
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"param not supplied\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"port not configured\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s(%i:%i) port %p, param %p (%x,%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_port_parameter_set(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %7 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %7, i64* %6, align 8
  %8 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %9 = icmp ne %struct.TYPE_17__* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %12, i64* %3, align 8
  br label %94

13:                                               ; preds = %2
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %15 = icmp ne %struct.TYPE_18__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %18, i64* %3, align 8
  br label %94

19:                                               ; preds = %13
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %26 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %26, i64* %3, align 8
  br label %94

27:                                               ; preds = %19
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %44 = icmp ne %struct.TYPE_18__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %27
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  br label %50

49:                                               ; preds = %27
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ %48, %45 ], [ 0, %49 ]
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = icmp ne %struct.TYPE_18__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  br label %60

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %54
  %61 = phi i32 [ %58, %54 ], [ 0, %59 ]
  %62 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %32, i32 %36, i32 %40, %struct.TYPE_17__* %41, %struct.TYPE_18__* %42, i32 %51, i32 %61)
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %64 = call i32 @LOCK_PORT(%struct.TYPE_17__* %63)
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 0
  %69 = bitcast {}** %68 to i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)**
  %70 = load i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %69, align 8
  %71 = icmp ne i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = bitcast {}** %76 to i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)**
  %78 = load i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = call i64 %78(%struct.TYPE_17__* %79, %struct.TYPE_18__* %80)
  store i64 %81, i64* %6, align 8
  br label %82

82:                                               ; preds = %72, %60
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* @MMAL_ENOSYS, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = call i64 @mmal_port_private_parameter_set(%struct.TYPE_17__* %87, %struct.TYPE_18__* %88)
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %92 = call i32 @UNLOCK_PORT(%struct.TYPE_17__* %91)
  %93 = load i64, i64* %6, align 8
  store i64 %93, i64* %3, align 8
  br label %94

94:                                               ; preds = %90, %24, %16, %10
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @LOG_TRACE(i8*, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @LOCK_PORT(%struct.TYPE_17__*) #1

declare dso_local i64 @mmal_port_private_parameter_set(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @UNLOCK_PORT(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
