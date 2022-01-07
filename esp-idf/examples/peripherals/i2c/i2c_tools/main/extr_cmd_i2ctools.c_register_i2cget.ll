; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_register_i2cget.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_register_i2cget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_4__ = type { i8*, i8*, %struct.TYPE_5__*, i32*, i32* }

@.str = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"chip\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"<chip_addr>\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Specify the address of the chip on that bus\00", align 1
@i2cget_args = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"register\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"<register_addr>\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"Specify the address on that chip to read from\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"length\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"<length>\00", align 1
@.str.11 = private unnamed_addr constant [50 x i8] c"Specify the length to read from that data address\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"i2cget\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"Read registers visible through the I2C bus\00", align 1
@do_i2cget_cmd = common dso_local global i32 0, align 4
@__const.register_i2cget.i2cget_cmd = private unnamed_addr constant %struct.TYPE_4__ { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), %struct.TYPE_5__* @i2cget_args, i32* @do_i2cget_cmd, i32* null }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_i2cget to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_i2cget() #0 {
  %1 = alloca %struct.TYPE_4__, align 8
  %2 = call i32 @arg_int1(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 %2, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i2cget_args, i32 0, i32 3), align 8
  %3 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0))
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i2cget_args, i32 0, i32 2), align 8
  %4 = call i8* @arg_int0(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.11, i64 0, i64 0))
  store i8* %4, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i2cget_args, i32 0, i32 1), align 8
  %5 = call i32 @arg_end(i32 1)
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @i2cget_args, i32 0, i32 0), align 8
  %6 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 bitcast (%struct.TYPE_4__* @__const.register_i2cget.i2cget_cmd to i8*), i64 40, i1 false)
  %7 = call i32 @esp_console_cmd_register(%struct.TYPE_4__* %1)
  %8 = call i32 @ESP_ERROR_CHECK(i32 %7)
  ret void
}

declare dso_local i32 @arg_int1(i8*, i8*, i8*, i8*) #1

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
