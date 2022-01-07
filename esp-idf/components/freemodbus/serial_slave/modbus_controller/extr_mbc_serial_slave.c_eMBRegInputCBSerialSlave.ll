; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_eMBRegInputCBSerialSlave.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_eMBRegInputCBSerialSlave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64 }

@mbs_interface_ptr = common dso_local global %struct.TYPE_6__* null, align 8
@MB_EILLSTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Slave stack uninitialized.\00", align 1
@MB_EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Slave stack call failed.\00", align 1
@MB_PARAM_INPUT = common dso_local global i64 0, align 8
@MB_ENOERR = common dso_local global i32 0, align 4
@MB_EVENT_INPUT_REG_RD = common dso_local global i32 0, align 4
@MB_ENOREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRegInputCBSerialSlave(i32* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbs_interface_ptr, align 8
  %16 = icmp ne %struct.TYPE_6__* %15, null
  %17 = zext i1 %16 to i32
  %18 = load i32, i32* @MB_EILLSTATE, align 4
  %19 = call i32 @MB_SLAVE_CHECK(i32 %17, i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %4, align 8
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* @MB_EINVAL, align 4
  %24 = call i32 @MB_SLAVE_CHECK(i32 %22, i32 %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbs_interface_ptr, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %7, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i64, i64* @MB_PARAM_INPUT, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* @MB_PARAM_INPUT, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %9, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i64, i64* @MB_PARAM_INPUT, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %10, align 8
  %51 = load i64, i64* %6, align 8
  store i64 %51, i64* %11, align 8
  %52 = load i32, i32* @MB_ENOERR, align 4
  store i32 %52, i32* %12, align 4
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* %9, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %106

56:                                               ; preds = %3
  %57 = load i32*, i32** %10, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %106

59:                                               ; preds = %56
  %60 = load i64, i64* %6, align 8
  %61 = icmp sge i64 %60, 1
  br i1 %61, label %62, label %106

62:                                               ; preds = %59
  %63 = load i64, i64* %5, align 8
  %64 = load i64, i64* %11, align 8
  %65 = add nsw i64 %63, %64
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %8, align 8
  %68 = add nsw i64 %66, %67
  %69 = add nsw i64 %68, 1
  %70 = icmp sle i64 %65, %69
  br i1 %70, label %71, label %106

71:                                               ; preds = %62
  %72 = load i64, i64* %8, align 8
  %73 = icmp sge i64 %72, 1
  br i1 %73, label %74, label %106

74:                                               ; preds = %71
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub nsw i64 %75, %76
  %78 = sub nsw i64 %77, 1
  store i64 %78, i64* %13, align 8
  %79 = load i64, i64* %13, align 8
  %80 = shl i64 %79, 1
  store i64 %80, i64* %13, align 8
  %81 = load i64, i64* %13, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  store i32* %84, i32** %14, align 8
  br label %85

85:                                               ; preds = %88, %74
  %86 = load i64, i64* %11, align 8
  %87 = icmp sgt i64 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load i32*, i32** %4, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @_XFER_2_RD(i32* %89, i32* %90)
  %92 = load i64, i64* %13, align 8
  %93 = add nsw i64 %92, 2
  store i64 %93, i64* %13, align 8
  %94 = load i64, i64* %11, align 8
  %95 = sub nsw i64 %94, 1
  store i64 %95, i64* %11, align 8
  br label %85

96:                                               ; preds = %85
  %97 = load i32, i32* @MB_EVENT_INPUT_REG_RD, align 4
  %98 = call i32 @send_param_access_notification(i32 %97)
  %99 = load i32, i32* @MB_EVENT_INPUT_REG_RD, align 4
  %100 = load i64, i64* %5, align 8
  %101 = trunc i64 %100 to i32
  %102 = load i32*, i32** %14, align 8
  %103 = load i64, i64* %6, align 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @send_param_info(i32 %99, i32 %101, i32* %102, i32 %104)
  br label %108

106:                                              ; preds = %71, %62, %59, %56, %3
  %107 = load i32, i32* @MB_ENOREG, align 4
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %106, %96
  %109 = load i32, i32* %12, align 4
  ret i32 %109
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*) #1

declare dso_local i32 @_XFER_2_RD(i32*, i32*) #1

declare dso_local i32 @send_param_access_notification(i32) #1

declare dso_local i32 @send_param_info(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
