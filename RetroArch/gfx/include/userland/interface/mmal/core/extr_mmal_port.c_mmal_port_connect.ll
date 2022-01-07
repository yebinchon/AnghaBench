; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_connect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/core/extr_mmal_port.c_mmal_port_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_12__*, i64, i32 }
%struct.TYPE_12__ = type { {}*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__* }

@MMAL_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"invalid port\00", align 1
@MMAL_EINVAL = common dso_local global i64 0, align 8
@MMAL_PORT_TYPE_CLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"invalid port connection\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"connecting %s(%p) to %s(%p)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"at least one pf_connect is NULL\00", align 1
@MMAL_ENOSYS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [29 x i8] c"port %p is already connected\00", align 1
@MMAL_EISCONN = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"port %p should not be enabled\00", align 1
@MMAL_PORT_TYPE_OUTPUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mmal_port_connect(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load i64, i64* @MMAL_SUCCESS, align 8
  store i64 %10, i64* %8, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = icmp ne %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = icmp ne %struct.TYPE_13__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21, %18, %13, %2
  %27 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %28 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %28, i64* %3, align 8
  br label %173

29:                                               ; preds = %21
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MMAL_PORT_TYPE_CLOCK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %45, i64* %3, align 8
  br label %173

46:                                               ; preds = %35, %29
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %55 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %49, %struct.TYPE_13__* %50, i32 %53, %struct.TYPE_13__* %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = bitcast {}** %59 to i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)**
  %61 = load i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)** %60, align 8
  %62 = icmp ne i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)* %61, null
  br i1 %62, label %63, label %71

63:                                               ; preds = %46
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = bitcast {}** %67 to i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)**
  %69 = load i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)** %68, align 8
  %70 = icmp ne i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %63, %46
  %72 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %73 = load i64, i64* @MMAL_ENOSYS, align 8
  store i64 %73, i64* %3, align 8
  br label %173

74:                                               ; preds = %63
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  store %struct.TYPE_14__* %79, %struct.TYPE_14__** %6, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %83, align 8
  store %struct.TYPE_14__* %84, %struct.TYPE_14__** %7, align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %86 = call i32 @LOCK_CONNECTION(%struct.TYPE_13__* %85)
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_13__*, %struct.TYPE_13__** %88, align 8
  %90 = icmp ne %struct.TYPE_13__* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %74
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %93 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_13__* %92)
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %95 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_13__* %94)
  %96 = load i64, i64* @MMAL_EISCONN, align 8
  store i64 %96, i64* %3, align 8
  br label %173

97:                                               ; preds = %74
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_13__* %103)
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %106 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_13__* %105)
  %107 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %107, i64* %3, align 8
  br label %173

108:                                              ; preds = %97
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %110 = call i32 @LOCK_CONNECTION(%struct.TYPE_13__* %109)
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = icmp ne %struct.TYPE_13__* %113, null
  br i1 %114, label %115, label %119

115:                                              ; preds = %108
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %117 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_13__* %116)
  %118 = load i64, i64* @MMAL_EISCONN, align 8
  store i64 %118, i64* %8, align 8
  br label %167

119:                                              ; preds = %108
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %126 = call i32 (i8*, ...) @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_13__* %125)
  %127 = load i64, i64* @MMAL_EINVAL, align 8
  store i64 %127, i64* %8, align 8
  br label %167

128:                                              ; preds = %119
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  store %struct.TYPE_13__* %129, %struct.TYPE_13__** %131, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  store %struct.TYPE_13__* %132, %struct.TYPE_13__** %134, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @MMAL_PORT_TYPE_OUTPUT, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %128
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  br label %148

146:                                              ; preds = %128
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = phi %struct.TYPE_13__* [ %145, %144 ], [ %147, %146 ]
  store %struct.TYPE_13__* %149, %struct.TYPE_13__** %9, align 8
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = bitcast {}** %153 to i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)**
  %155 = load i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)*, i64 (%struct.TYPE_13__*, %struct.TYPE_13__*)** %154, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %158 = call i64 %155(%struct.TYPE_13__* %156, %struct.TYPE_13__* %157)
  %159 = load i64, i64* @MMAL_SUCCESS, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %162

161:                                              ; preds = %148
  br label %167

162:                                              ; preds = %148
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 0
  store i32 1, i32* %164, align 8
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  store i32 1, i32* %166, align 8
  br label %167

167:                                              ; preds = %162, %161, %124, %115
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %169 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_13__* %168)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = call i32 @UNLOCK_CONNECTION(%struct.TYPE_13__* %170)
  %172 = load i64, i64* %8, align 8
  store i64 %172, i64* %3, align 8
  br label %173

173:                                              ; preds = %167, %102, %91, %71, %43, %26
  %174 = load i64, i64* %3, align 8
  ret i64 %174
}

declare dso_local i32 @LOG_ERROR(i8*, ...) #1

declare dso_local i32 @LOG_TRACE(i8*, i32, %struct.TYPE_13__*, i32, %struct.TYPE_13__*) #1

declare dso_local i32 @LOCK_CONNECTION(%struct.TYPE_13__*) #1

declare dso_local i32 @UNLOCK_CONNECTION(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
