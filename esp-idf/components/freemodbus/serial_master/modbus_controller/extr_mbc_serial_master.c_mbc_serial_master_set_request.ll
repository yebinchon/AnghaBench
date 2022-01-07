; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_set_request.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_mbc_serial_master_set_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@mbm_interface_ptr = common dso_local global %struct.TYPE_10__* null, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Master interface uninitialized.\00", align 1
@ESP_ERR_NOT_FOUND = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"mb incorrect parameter name.\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"mb incorrect request parameter.\00", align 1
@MB_PARAM_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"mb incorrect mode.\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"mb incorrect command or parameter type.\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.TYPE_8__*, %struct.TYPE_7__*)* @mbc_serial_master_set_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mbc_serial_master_set_request(i8* %0, i32 %1, %struct.TYPE_8__* %2, %struct.TYPE_7__* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_7__* %3, %struct.TYPE_7__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mbm_interface_ptr, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %19 = call i32 @MB_MASTER_CHECK(i32 %17, i32 %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mbm_interface_ptr, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store %struct.TYPE_9__* %21, %struct.TYPE_9__** %9, align 8
  %22 = load i32, i32* @ESP_ERR_NOT_FOUND, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %27 = call i32 @MB_MASTER_CHECK(i32 %25, i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %29 = icmp ne %struct.TYPE_8__* %28, null
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %32 = call i32 @MB_MASTER_CHECK(i32 %30, i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MB_PARAM_WRITE, align 4
  %35 = icmp sle i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %38 = call i32 @MB_MASTER_CHECK(i32 %36, i32 %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @MB_MASTER_ASSERT(i32 %43)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  store %struct.TYPE_7__* %47, %struct.TYPE_7__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %48

48:                                               ; preds = %115, %4
  %49 = load i64, i64* %12, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %120

54:                                               ; preds = %48
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i64 @strlen(i8* %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i64 @strlen(i8* %61)
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %115

65:                                               ; preds = %54
  %66 = load i8*, i8** %5, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = load i64, i64* %13, align 8
  %72 = call i64 @memcmp(i8* %66, i8* %70, i64 %71)
  store i64 %72, i64* %14, align 8
  %73 = load i64, i64* %14, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %114

75:                                               ; preds = %65
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @mbc_serial_master_get_command(i32 %93, i32 %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 0
  %102 = zext i1 %101 to i32
  %103 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %104 = call i32 @MB_MASTER_CHECK(i32 %102, i32 %103, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = icmp ne %struct.TYPE_7__* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %75
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %110 = bitcast %struct.TYPE_7__* %108 to i8*
  %111 = bitcast %struct.TYPE_7__* %109 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %110, i8* align 8 %111, i64 24, i1 false)
  br label %112

112:                                              ; preds = %107, %75
  %113 = load i32, i32* @ESP_OK, align 4
  store i32 %113, i32* %10, align 4
  br label %120

114:                                              ; preds = %65
  br label %115

115:                                              ; preds = %114, %64
  %116 = load i64, i64* %12, align 8
  %117 = add nsw i64 %116, 1
  store i64 %117, i64* %12, align 8
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 1
  store %struct.TYPE_7__* %119, %struct.TYPE_7__** %11, align 8
  br label %48

120:                                              ; preds = %112, %48
  %121 = load i32, i32* %10, align 4
  ret i32 %121
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*) #1

declare dso_local i32 @MB_MASTER_ASSERT(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @mbc_serial_master_get_command(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
