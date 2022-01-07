; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_eMBRegHoldingCBSerialSlave.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_eMBRegHoldingCBSerialSlave.c"
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
@MB_PARAM_HOLDING = common dso_local global i64 0, align 8
@MB_ENOERR = common dso_local global i32 0, align 4
@MB_EVENT_HOLDING_REG_RD = common dso_local global i32 0, align 4
@MB_EVENT_HOLDING_REG_WR = common dso_local global i32 0, align 4
@MB_ENOREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRegHoldingCBSerialSlave(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbs_interface_ptr, align 8
  %18 = icmp ne %struct.TYPE_6__* %17, null
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @MB_EILLSTATE, align 4
  %21 = call i32 @MB_SLAVE_CHECK(i32 %19, i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @MB_EINVAL, align 4
  %26 = call i32 @MB_SLAVE_CHECK(i32 %24, i32 %25, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbs_interface_ptr, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %9, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i64, i64* @MB_PARAM_HOLDING, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = ashr i32 %35, 1
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %10, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i64, i64* @MB_PARAM_HOLDING, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %11, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* @MB_PARAM_HOLDING, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i32*
  store i32* %52, i32** %12, align 8
  %53 = load i32, i32* @MB_ENOERR, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %15, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %58, label %135

58:                                               ; preds = %4
  %59 = load i32*, i32** %12, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %135

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %15, align 8
  %64 = add nsw i64 %62, %63
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %65, %66
  %68 = add nsw i64 %67, 1
  %69 = icmp sle i64 %64, %68
  br i1 %69, label %70, label %135

70:                                               ; preds = %61
  %71 = load i64, i64* %10, align 8
  %72 = icmp sge i64 %71, 1
  br i1 %72, label %73, label %135

73:                                               ; preds = %70
  %74 = load i64, i64* %7, align 8
  %75 = icmp sge i64 %74, 1
  br i1 %75, label %76, label %135

76:                                               ; preds = %73
  %77 = load i64, i64* %6, align 8
  %78 = load i64, i64* %11, align 8
  %79 = sub nsw i64 %77, %78
  %80 = sub nsw i64 %79, 1
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = shl i64 %81, 1
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i32*, i32** %12, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %83
  store i32* %85, i32** %12, align 8
  %86 = load i32*, i32** %12, align 8
  store i32* %86, i32** %16, align 8
  %87 = load i32, i32* %8, align 4
  switch i32 %87, label %134 [
    i32 129, label %88
    i32 128, label %110
  ]

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %92, %88
  %90 = load i64, i64* %15, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %89
  %93 = load i32*, i32** %5, align 8
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @_XFER_2_RD(i32* %93, i32* %94)
  %96 = load i64, i64* %14, align 8
  %97 = add nsw i64 %96, 2
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %15, align 8
  %99 = sub nsw i64 %98, 1
  store i64 %99, i64* %15, align 8
  br label %89

100:                                              ; preds = %89
  %101 = load i32, i32* @MB_EVENT_HOLDING_REG_RD, align 4
  %102 = call i32 @send_param_access_notification(i32 %101)
  %103 = load i32, i32* @MB_EVENT_HOLDING_REG_RD, align 4
  %104 = load i64, i64* %6, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i32*, i32** %16, align 8
  %107 = load i64, i64* %7, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @send_param_info(i32 %103, i32 %105, i32* %106, i32 %108)
  br label %134

110:                                              ; preds = %76
  br label %111

111:                                              ; preds = %114, %110
  %112 = load i64, i64* %15, align 8
  %113 = icmp sgt i64 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %111
  %115 = load i32*, i32** %12, align 8
  %116 = load i32*, i32** %5, align 8
  %117 = call i32 @_XFER_2_WR(i32* %115, i32* %116)
  %118 = load i32*, i32** %12, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32* %119, i32** %12, align 8
  %120 = load i64, i64* %14, align 8
  %121 = add nsw i64 %120, 2
  store i64 %121, i64* %14, align 8
  %122 = load i64, i64* %15, align 8
  %123 = sub nsw i64 %122, 1
  store i64 %123, i64* %15, align 8
  br label %111

124:                                              ; preds = %111
  %125 = load i32, i32* @MB_EVENT_HOLDING_REG_WR, align 4
  %126 = call i32 @send_param_access_notification(i32 %125)
  %127 = load i32, i32* @MB_EVENT_HOLDING_REG_WR, align 4
  %128 = load i64, i64* %6, align 8
  %129 = trunc i64 %128 to i32
  %130 = load i32*, i32** %16, align 8
  %131 = load i64, i64* %7, align 8
  %132 = trunc i64 %131 to i32
  %133 = call i32 @send_param_info(i32 %127, i32 %129, i32* %130, i32 %132)
  br label %134

134:                                              ; preds = %76, %124, %100
  br label %137

135:                                              ; preds = %73, %70, %61, %58, %4
  %136 = load i32, i32* @MB_ENOREG, align 4
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %135, %134
  %138 = load i32, i32* %13, align 4
  ret i32 %138
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*) #1

declare dso_local i32 @_XFER_2_RD(i32*, i32*) #1

declare dso_local i32 @send_param_access_notification(i32) #1

declare dso_local i32 @send_param_info(i32, i32, i32*, i32) #1

declare dso_local i32 @_XFER_2_WR(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
