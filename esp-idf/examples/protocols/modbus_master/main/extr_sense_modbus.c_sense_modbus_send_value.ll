; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_modbus.c_sense_modbus_send_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_modbus.c_sense_modbus_send_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32, i32, i32*, i32, i32* }

@active_cid_table = common dso_local global %struct.TYPE_3__** null, align 8
@active_cid_table_size = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"incorrect cid to set.\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"incorrect cid table instance_ptr.\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"incorrect cid table param_key or not initialized.\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"incorrect cid in table or not initialized.\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"incorrect type of parameter (%u)\00", align 1
@PARAM_TYPE_ASCII = common dso_local global i64 0, align 8
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"returned data type is not supported (%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sense_modbus_send_value(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cid_table, align 8
  %10 = icmp ne %struct.TYPE_3__** %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @active_cid_table_size, align 8
  %15 = icmp ult i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %18 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %16, i32 %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cid_table, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %19, i64 %20
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  store %struct.TYPE_3__* %22, %struct.TYPE_3__** %5, align 8
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 7
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  %27 = zext i1 %26 to i32
  %28 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %29 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %27, i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %36 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %34, i32 %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %3, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %44 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %42, i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 7
  %47 = load i32*, i32** %46, align 8
  %48 = bitcast i32* %47 to i64*
  store i64* %48, i64** %6, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = bitcast i64* %49 to i8*
  %51 = load i8*, i8** %4, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcpy(i8* %50, i8* %51, i32 %54)
  store i64 0, i64* %7, align 8
  %56 = load i64, i64* %3, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = bitcast i32* %59 to i8*
  %61 = load i64*, i64** %6, align 8
  %62 = call i32 @mbc_master_set_parameter(i64 %56, i8* %60, i64* %61, i64* %7)
  store i32 %62, i32* %8, align 4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  %70 = load i64, i64* %7, align 8
  %71 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %68, i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %70)
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @PARAM_TYPE_ASCII, align 8
  %74 = icmp sle i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  %77 = load i64, i64* %7, align 8
  %78 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %75, i32 %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  store i32 85, i32* %80, align 8
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 8
  %84 = call i32 (...) @sense_modbus_get_time_stamp_us()
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SENSE_MB_CHECK(i32, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mbc_master_set_parameter(i64, i8*, i64*, i64*) #1

declare dso_local i32 @sense_modbus_get_time_stamp_us(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
