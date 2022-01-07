; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_system/extr_cmd_system.c_register_deep_sleep.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/system/console/components/cmd_system/extr_cmd_system.c_register_deep_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_5__*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"<t>\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Wake up time, ms\00", align 1
@deep_sleep_args = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"<n>\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"If specified, wakeup using GPIO with given number\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"io_level\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"<0|1>\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"GPIO level to trigger wakeup\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"deep_sleep\00", align 1
@.str.11 = private unnamed_addr constant [130 x i8] c"Enter deep sleep mode. Two wakeup modes are supported: timer and GPIO. If no wakeup option is specified, will sleep indefinitely.\00", align 1
@deep_sleep = common dso_local global i32 0, align 4
@__const.register_deep_sleep.cmd = private unnamed_addr constant %struct.TYPE_4__ { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.11, i32 0, i32 0), %struct.TYPE_5__* @deep_sleep_args, i32* @deep_sleep, i32* null }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_deep_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_deep_sleep() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i8* %2, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @deep_sleep_args, i32 0, i32 3), align 8
  %3 = call i8* @arg_int0(i8* null, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @deep_sleep_args, i32 0, i32 2), align 8
  %4 = call i8* @arg_int0(i8* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0))
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @deep_sleep_args, i32 0, i32 1), align 8
  %5 = call i32 @arg_end(i32 3)
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @deep_sleep_args, i32 0, i32 0), align 8
  %6 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_4__* @__const.register_deep_sleep.cmd to i8*), i64 40, i1 false)
  %7 = call i32 @esp_console_cmd_register(%struct.TYPE_4__* %1)
  %8 = call i32 @ESP_ERROR_CHECK(i32 %7)
  ret void
}

declare dso_local i8* @arg_int0(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @arg_end(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ESP_ERROR_CHECK(i32) #1

declare dso_local i32 @esp_console_cmd_register(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
