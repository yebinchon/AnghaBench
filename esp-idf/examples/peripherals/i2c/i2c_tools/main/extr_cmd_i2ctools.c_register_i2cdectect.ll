; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_register_i2cdectect.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/peripherals/i2c/i2c_tools/main/extr_cmd_i2ctools.c_register_i2cdectect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [10 x i8] c"i2cdetect\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Scan I2C bus for devices\00", align 1
@do_i2cdetect_cmd = common dso_local global i32 0, align 4
@__const.register_i2cdectect.i2cdetect_cmd = private unnamed_addr constant %struct.TYPE_3__ { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32* null, i32* @do_i2cdetect_cmd, i32* null }, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @register_i2cdectect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @register_i2cdectect() #0 {
  %1 = alloca %struct.TYPE_3__, align 8
  %2 = bitcast %struct.TYPE_3__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast (%struct.TYPE_3__* @__const.register_i2cdectect.i2cdetect_cmd to i8*), i64 40, i1 false)
  %3 = call i32 @esp_console_cmd_register(%struct.TYPE_3__* %1)
  %4 = call i32 @ESP_ERROR_CHECK(i32 %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ESP_ERROR_CHECK(i32) #2

declare dso_local i32 @esp_console_cmd_register(%struct.TYPE_3__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
