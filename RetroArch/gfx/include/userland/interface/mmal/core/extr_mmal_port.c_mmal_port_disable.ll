; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_disable.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, %struct.TYPE_14__*, i64, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__*, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_13__ = type { i32 }

@MMAL_EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s(%i:%i) port %p\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"port %s(%p) is not enabled\00", align 1
@MMAL_PORT_TYPE_INPUT = common dso_local global i64 0, align 8
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [45 x i8] c"failed to disable connected port (%s)%p (%s)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to disable port (%s)%p\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"failed to disable connection (%s)%p (%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_port_disable(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = icmp ne %struct.TYPE_15__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %13 = icmp ne %struct.TYPE_14__* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %1
  %15 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %15, i64* %2, align 8
  br label %160

16:                                               ; preds = %9
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %31 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29, %struct.TYPE_15__* %30)
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 3
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %16
  %39 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %39, i64* %2, align 8
  br label %160

40:                                               ; preds = %16
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %41, i32 0, i32 3
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  store %struct.TYPE_16__* %45, %struct.TYPE_16__** %6, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %47 = call i32 @LOCK_CONNECTION(%struct.TYPE_15__* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %49, align 8
  store %struct.TYPE_15__* %50, %struct.TYPE_15__** %5, align 8
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %64, label %55

55:                                               ; preds = %40
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_15__* %56)
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %62 = call i32 (i8*, i32, %struct.TYPE_15__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %60, %struct.TYPE_15__* %61)
  %63 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %63, i64* %2, align 8
  br label %160

64:                                               ; preds = %40
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %66 = icmp ne %struct.TYPE_15__* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %69 = call i32 @LOCK_CONNECTION(%struct.TYPE_15__* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = icmp ne %struct.TYPE_15__* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %81 = call i64 @mmal_port_disable_internal(%struct.TYPE_15__* %80)
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @MMAL_SUCCESS, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %79
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = load i64, i64* %4, align 8
  %91 = call i32 @mmal_status_to_string(i64 %90)
  %92 = call i32 (i8*, i32, %struct.TYPE_15__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %88, %struct.TYPE_15__* %89, i32 %91)
  br label %150

93:                                               ; preds = %79
  br label %94

94:                                               ; preds = %93, %73, %70
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = call i64 @mmal_port_disable_internal(%struct.TYPE_15__* %95)
  store i64 %96, i64* %4, align 8
  %97 = load i64, i64* %4, align 8
  %98 = load i64, i64* @MMAL_SUCCESS, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = call i32 (i8*, i32, %struct.TYPE_15__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %103, %struct.TYPE_15__* %104)
  br label %150

106:                                              ; preds = %94
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = icmp ne %struct.TYPE_15__* %107, null
  br i1 %108, label %109, label %130

109:                                              ; preds = %106
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MMAL_PORT_TYPE_INPUT, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %130

115:                                              ; preds = %109
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = call i64 @mmal_port_disable_internal(%struct.TYPE_15__* %116)
  store i64 %117, i64* %4, align 8
  %118 = load i64, i64* %4, align 8
  %119 = load i64, i64* @MMAL_SUCCESS, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %115
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @mmal_status_to_string(i64 %126)
  %128 = call i32 (i8*, i32, %struct.TYPE_15__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %124, %struct.TYPE_15__* %125, i32 %127)
  br label %150

129:                                              ; preds = %115
  br label %130

130:                                              ; preds = %129, %109, %106
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = icmp ne %struct.TYPE_15__* %131, null
  br i1 %132, label %133, label %149

133:                                              ; preds = %130
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %136 = call i64 @mmal_port_connection_disable(%struct.TYPE_15__* %134, %struct.TYPE_15__* %135)
  store i64 %136, i64* %4, align 8
  %137 = load i64, i64* %4, align 8
  %138 = load i64, i64* @MMAL_SUCCESS, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %148

140:                                              ; preds = %133
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = load i64, i64* %4, align 8
  %146 = call i32 @mmal_status_to_string(i64 %145)
  %147 = call i32 (i8*, i32, %struct.TYPE_15__*, ...) @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %143, %struct.TYPE_15__* %144, i32 %146)
  br label %148

148:                                              ; preds = %140, %133
  br label %149

149:                                              ; preds = %148, %130
  br label %150

150:                                              ; preds = %149, %121, %100, %85
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %152 = icmp ne %struct.TYPE_15__* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %155 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_15__* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %158 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_15__* %157)
  %159 = load i64, i64* %4, align 8
  store i64 %159, i64* %2, align 8
  br label %160

160:                                              ; preds = %156, %55, %38, %14
  %161 = load i64, i64* %2, align 8
  ret i64 %161
}

declare dso_local i32 @LOG_TRACE(i8*, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @LOCK_CONNECTION(%struct.TYPE_15__*) #1

declare dso_local i32 @UNLOCK_CONNECTION(%struct.TYPE_15__*) #1

declare dso_local i32 @LOG_ERROR(i8*, i32, %struct.TYPE_15__*, ...) #1

declare dso_local i64 @mmal_port_disable_internal(%struct.TYPE_15__*) #1

declare dso_local i32 @mmal_status_to_string(i64) #1

declare dso_local i64 @mmal_port_connection_disable(%struct.TYPE_15__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
