; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_set_descriptor.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_mbc_serial_slave_set_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64, i32* }

@mbs_interface_ptr = common dso_local global %struct.TYPE_7__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Slave interface is not correctly initialized.\00", align 1
@MB_PARAM_COUNT = common dso_local global i64 0, align 8
@MB_PARAM_HOLDING = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"mb incorrect modbus instance type = (0x%x).\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"mb instance pointer is NULL.\00", align 1
@MB_INST_MIN_SIZE = common dso_local global i64 0, align 8
@MB_INST_MAX_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"mb instance size is incorrect = (0x%x).\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbc_serial_slave_set_descriptor(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %4 = icmp ne %struct.TYPE_7__* %3, null
  %5 = zext i1 %4 to i32
  %6 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %7 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %5, i32 %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @mbs_interface_ptr, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MB_PARAM_COUNT, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MB_PARAM_HOLDING, align 8
  %18 = icmp uge i64 %16, %17
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi i1 [ false, %1 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %21, i32 %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %32 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %30, i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MB_INST_MIN_SIZE, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MB_INST_MAX_SIZE, align 8
  %41 = icmp slt i64 %39, %40
  br label %42

42:                                               ; preds = %37, %19
  %43 = phi i1 [ false, %19 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (i32, i32, i8*, ...) @MB_SLAVE_CHECK(i32 %44, i32 %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = bitcast %struct.TYPE_6__* %55 to i8*
  %57 = bitcast %struct.TYPE_6__* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 24, i1 false)
  %58 = load i32, i32* @ESP_OK, align 4
  ret i32 %58
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
