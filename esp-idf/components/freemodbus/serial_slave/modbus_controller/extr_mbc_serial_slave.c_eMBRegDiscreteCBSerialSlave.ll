; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_eMBRegDiscreteCBSerialSlave.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_eMBRegDiscreteCBSerialSlave.c"
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
@MB_PARAM_DISCRETE = common dso_local global i64 0, align 8
@MB_ENOERR = common dso_local global i32 0, align 4
@MB_EVENT_DISCRETE_RD = common dso_local global i32 0, align 4
@MB_ENOREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRegDiscreteCBSerialSlave(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbs_interface_ptr, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @MB_EILLSTATE, align 4
  %21 = call i32 @MB_SLAVE_CHECK(i32 %19, i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %4, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @MB_EINVAL, align 4
  %26 = call i32 @MB_SLAVE_CHECK(i32 %24, i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbs_interface_ptr, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %7, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @MB_PARAM_DISCRETE, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %8, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* @MB_PARAM_DISCRETE, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* @MB_PARAM_DISCRETE, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %10, align 8
  %53 = load i32, i32* @MB_ENOERR, align 4
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %6, align 4
  %55 = sdiv i32 %54, 8
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %14, align 4
  %57 = load i32*, i32** %10, align 8
  store i32* %57, i32** %15, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %133

63:                                               ; preds = %3
  %64 = load i32, i32* %8, align 4
  %65 = icmp sge i32 %64, 1
  br i1 %65, label %66, label %133

66:                                               ; preds = %63
  %67 = load i32*, i32** %10, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %133

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %8, align 4
  %75 = mul nsw i32 %74, 16
  %76 = add nsw i32 %73, %75
  %77 = icmp sle i32 %72, %76
  br i1 %77, label %78, label %133

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4
  %80 = icmp sge i32 %79, 1
  br i1 %80, label %81, label %133

81:                                               ; preds = %78
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* %9, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sdiv i32 %84, 8
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* %9, align 4
  %88 = sub nsw i32 %86, %87
  %89 = srem i32 %88, 8
  store i32 %89, i32* %13, align 4
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32* %93, i32** %16, align 8
  br label %94

94:                                               ; preds = %97, %81
  %95 = load i32, i32* %14, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %94
  %98 = load i32*, i32** %15, align 8
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %12, align 4
  %101 = sext i32 %99 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @xMBUtilGetBits(i32* %102, i32 %103, i32 8)
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %4, align 8
  store i32 %104, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %14, align 4
  br label %94

109:                                              ; preds = %94
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 -1
  store i32* %111, i32** %4, align 8
  %112 = load i32, i32* %6, align 4
  %113 = srem i32 %112, 8
  store i32 %113, i32* %6, align 4
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 8, %116
  %118 = shl i32 %115, %117
  %119 = load i32*, i32** %4, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32*, i32** %4, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %6, align 4
  %123 = sub nsw i32 8, %122
  %124 = ashr i32 %121, %123
  %125 = load i32*, i32** %4, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @MB_EVENT_DISCRETE_RD, align 4
  %127 = call i32 @send_param_access_notification(i32 %126)
  %128 = load i32, i32* @MB_EVENT_DISCRETE_RD, align 4
  %129 = load i32, i32* %5, align 4
  %130 = load i32*, i32** %16, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @send_param_info(i32 %128, i32 %129, i32* %130, i32 %131)
  br label %135

133:                                              ; preds = %78, %69, %66, %63, %3
  %134 = load i32, i32* @MB_ENOREG, align 4
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %133, %109
  %136 = load i32, i32* %11, align 4
  ret i32 %136
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*) #1

declare dso_local i32 @xMBUtilGetBits(i32*, i32, i32) #1

declare dso_local i32 @send_param_access_notification(i32) #1

declare dso_local i32 @send_param_info(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
