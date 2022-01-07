; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_modbus.c_sense_modbus_read_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/protocols/modbus_master/main/extr_sense_modbus.c_sense_modbus_read_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i32*, i32* }

@active_cid_table = common dso_local global %struct.TYPE_3__** null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"incorrect value pointer.\00", align 1
@active_cid_table_size = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"incorrect cid to read.\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"incorrect cid table instance_pointer.\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"incorrect cid table or not initialized.\00", align 1
@PARAM_TYPE_ASCII = common dso_local global i64 0, align 8
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"returned data type is not supported (%u)\00", align 1
@ESP_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sense_modbus_read_value(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cid_table, align 8
  %10 = icmp ne %struct.TYPE_3__** %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = icmp ne i8* %13, null
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %17 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %15, i32 %16, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @active_cid_table_size, align 8
  %20 = icmp ult i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %23 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %21, i32 %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @active_cid_table, align 8
  %25 = load i64, i64* %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %24, i64 %25
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  store %struct.TYPE_3__* %27, %struct.TYPE_3__** %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %34 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %32, i32 %33, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %41 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %39, i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %49 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %47, i32 %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to i64*
  store i64* %53, i64** %6, align 8
  store i64 0, i64* %7, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = bitcast i64* %54 to i8*
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @memset(i8* %55, i32 0, i32 %58)
  %60 = load i64, i64* %3, align 8
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i64*, i64** %6, align 8
  %66 = call i64 @mbc_master_get_parameter(i64 %60, i8* %64, i64* %65, i64* %7)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @PARAM_TYPE_ASCII, align 8
  %69 = icmp sle i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  %72 = load i64, i64* %7, align 8
  %73 = call i32 (i32, i32, i8*, ...) @SENSE_MB_CHECK(i32 %70, i32 %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i64 %72)
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @ESP_OK, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %2
  %81 = load i8*, i8** %4, align 8
  %82 = load i64*, i64** %6, align 8
  %83 = bitcast i64* %82 to i8*
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memcpy(i8* %81, i8* %83, i32 %86)
  %88 = call i32 (...) @sense_modbus_get_time_stamp_us()
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  br label %91

91:                                               ; preds = %80, %2
  %92 = load i64, i64* %8, align 8
  ret i64 %92
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @SENSE_MB_CHECK(i32, i32, i8*, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @mbc_master_get_parameter(i64, i8*, i64*, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sense_modbus_get_time_stamp_us(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
