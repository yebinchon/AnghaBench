; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_component.c_mmal_component_enable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_component.c_mmal_component_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, i32*, i32*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { {}* }
%struct.TYPE_8__ = type { i32 }

@MMAL_ENOSYS = common dso_local global i64 0, align 8
@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s %d\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@MMAL_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_component_enable(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %7, i64* %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %11, i64* %2, align 8
  br label %123

12:                                               ; preds = %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = bitcast %struct.TYPE_6__* %15 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %4, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = call i32 @vcos_mutex_lock(i32* %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %12
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = call i32 @vcos_mutex_unlock(i32* %33)
  %35 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %35, i64* %2, align 8
  br label %123

36:                                               ; preds = %12
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = bitcast {}** %40 to i64 (%struct.TYPE_7__*)**
  %42 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %41, align 8
  %43 = icmp ne i64 (%struct.TYPE_7__*)* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %36
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = bitcast {}** %48 to i64 (%struct.TYPE_7__*)**
  %50 = load i64 (%struct.TYPE_7__*)*, i64 (%struct.TYPE_7__*)** %49, align 8
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %52 = call i64 %50(%struct.TYPE_7__* %51)
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %44, %36
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @MMAL_ENOSYS, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %111

57:                                               ; preds = %53
  %58 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %58, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %81, %57
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* @MMAL_SUCCESS, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ult i32 %64, %67
  br label %69

69:                                               ; preds = %63, %59
  %70 = phi i1 [ false, %59 ], [ %68, %63 ]
  br i1 %70, label %71, label %84

71:                                               ; preds = %69
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 4
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MMAL_FALSE, align 4
  %80 = call i64 @mmal_port_pause(i32 %78, i32 %79)
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %71
  %82 = load i32, i32* %6, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %59

84:                                               ; preds = %69
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %107, %84
  %86 = load i64, i64* %5, align 8
  %87 = load i64, i64* @MMAL_SUCCESS, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %90, %93
  br label %95

95:                                               ; preds = %89, %85
  %96 = phi i1 [ false, %85 ], [ %94, %89 ]
  br i1 %96, label %97, label %110

97:                                               ; preds = %95
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MMAL_FALSE, align 4
  %106 = call i64 @mmal_port_pause(i32 %104, i32 %105)
  store i64 %106, i64* %5, align 8
  br label %107

107:                                              ; preds = %97
  %108 = load i32, i32* %6, align 4
  %109 = add i32 %108, 1
  store i32 %109, i32* %6, align 4
  br label %85

110:                                              ; preds = %95
  br label %111

111:                                              ; preds = %110, %53
  %112 = load i64, i64* %5, align 8
  %113 = load i64, i64* @MMAL_SUCCESS, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %111
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  store i32 1, i32* %117, align 8
  br label %118

118:                                              ; preds = %115, %111
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = call i32 @vcos_mutex_unlock(i32* %120)
  %122 = load i64, i64* %5, align 8
  store i64 %122, i64* %2, align 8
  br label %123

123:                                              ; preds = %118, %31, %10
  %124 = load i64, i64* %2, align 8
  ret i64 %124
}

declare dso_local i32 @LOG_TRACE(i8*, i32, i32) #1

declare dso_local i32 @vcos_mutex_lock(i32*) #1

declare dso_local i32 @vcos_mutex_unlock(i32*) #1

declare dso_local i64 @mmal_port_pause(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
