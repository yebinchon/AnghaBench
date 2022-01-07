; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_util.c_mmal_port_parameter_alloc_get.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_util.c_mmal_port_parameter_alloc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"mmal_port_param_get\00", align 1
@MMAL_ENOMEM = common dso_local global i64 0, align 8
@MMAL_ENOSPC = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @mmal_port_parameter_alloc_get(i32* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  %11 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %11, i64* %10, align 8
  %12 = load i32, i32* %7, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 8
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 8, i32* %7, align 4
  br label %16

16:                                               ; preds = %15, %4
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.TYPE_6__* @vcos_calloc(i32 1, i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %9, align 8
  %19 = icmp eq %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %21, i64* %10, align 8
  br label %69

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = call i64 @mmal_port_parameter_get(i32* %29, %struct.TYPE_6__* %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* @MMAL_ENOSPC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %55

34:                                               ; preds = %22
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %39 = call i32 @vcos_free(%struct.TYPE_6__* %38)
  %40 = load i32, i32* %7, align 4
  %41 = call %struct.TYPE_6__* @vcos_calloc(i32 1, i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %9, align 8
  %42 = icmp eq %struct.TYPE_6__* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %44, i64* %10, align 8
  br label %69

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = call i64 @mmal_port_parameter_get(i32* %52, %struct.TYPE_6__* %53)
  store i64 %54, i64* %10, align 8
  br label %55

55:                                               ; preds = %45, %22
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @MMAL_SUCCESS, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %69

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %75, %60
  %62 = load i64*, i64** %8, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i64, i64* %10, align 8
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  ret %struct.TYPE_6__* %68

69:                                               ; preds = %59, %43, %20
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %71 = icmp ne %struct.TYPE_6__* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = call i32 @vcos_free(%struct.TYPE_6__* %73)
  br label %75

75:                                               ; preds = %72, %69
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  br label %61
}

declare dso_local %struct.TYPE_6__* @vcos_calloc(i32, i32, i8*) #1

declare dso_local i64 @mmal_port_parameter_get(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @vcos_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
