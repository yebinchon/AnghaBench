; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_parameter_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_parameter_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_15__*, i64, i64, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { {}* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32 }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"%s(%i:%i) port %p, param %p (%x,%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_port_parameter_get(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
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
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %2
  %16 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %16, i64* %3, align 8
  br label %89

17:                                               ; preds = %10
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %34 = icmp ne %struct.TYPE_18__* %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %17
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  br label %40

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39, %35
  %41 = phi i32 [ %38, %35 ], [ 0, %39 ]
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = icmp ne %struct.TYPE_18__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  br label %50

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi i32 [ %48, %44 ], [ 0, %49 ]
  %52 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i32 %30, %struct.TYPE_17__* %31, %struct.TYPE_18__* %32, i32 %41, i32 %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = icmp ne %struct.TYPE_18__* %53, null
  br i1 %54, label %57, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %56, i64* %3, align 8
  br label %89

57:                                               ; preds = %50
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %59 = call i32 @LOCK_PORT(%struct.TYPE_17__* %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = bitcast {}** %63 to i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)**
  %65 = load i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %64, align 8
  %66 = icmp ne i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %57
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)**
  %73 = load i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)*, i64 (%struct.TYPE_17__*, %struct.TYPE_18__*)** %72, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %76 = call i64 %73(%struct.TYPE_17__* %74, %struct.TYPE_18__* %75)
  store i64 %76, i64* %6, align 8
  br label %77

77:                                               ; preds = %67, %57
  %78 = load i64, i64* %6, align 8
  %79 = load i64, i64* @MMAL_ENOSYS, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %84 = call i64 @mmal_port_private_parameter_get(%struct.TYPE_17__* %82, %struct.TYPE_18__* %83)
  store i64 %84, i64* %6, align 8
  br label %85

85:                                               ; preds = %81, %77
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %87 = call i32 @UNLOCK_PORT(%struct.TYPE_17__* %86)
  %88 = load i64, i64* %6, align 8
  store i64 %88, i64* %3, align 8
  br label %89

89:                                               ; preds = %85, %55, %15
  %90 = load i64, i64* %3, align 8
  ret i64 %90
}

declare dso_local i32 @LOG_TRACE(i8*, i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @LOCK_PORT(%struct.TYPE_17__*) #1

declare dso_local i64 @mmal_port_private_parameter_get(%struct.TYPE_17__*, %struct.TYPE_18__*) #1

declare dso_local i32 @UNLOCK_PORT(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
