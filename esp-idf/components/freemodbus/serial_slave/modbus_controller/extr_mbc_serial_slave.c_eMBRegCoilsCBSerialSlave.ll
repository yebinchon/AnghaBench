; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_eMBRegCoilsCBSerialSlave.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_slave/modbus_controller/extr_mbc_serial_slave.c_eMBRegCoilsCBSerialSlave.c"
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
@MB_PARAM_COIL = common dso_local global i64 0, align 8
@MB_ENOERR = common dso_local global i32 0, align 4
@MB_EVENT_COILS_RD = common dso_local global i32 0, align 4
@MB_EVENT_COILS_WR = common dso_local global i32 0, align 4
@MB_ENOREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRegCoilsCBSerialSlave(i32* %0, i64 %1, i64 %2, i32 %3) #0 {
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
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbs_interface_ptr, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @MB_EILLSTATE, align 4
  %23 = call i32 @MB_SLAVE_CHECK(i32 %21, i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %5, align 8
  %25 = icmp ne i32* %24, null
  %26 = zext i1 %25 to i32
  %27 = load i32, i32* @MB_EINVAL, align 4
  %28 = call i32 @MB_SLAVE_CHECK(i32 %26, i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** @mbs_interface_ptr, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %9, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = load i64, i64* @MB_PARAM_COIL, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = ashr i32 %37, 1
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %10, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* @MB_PARAM_COIL, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %11, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = load i64, i64* @MB_PARAM_COIL, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %12, align 8
  %55 = load i32, i32* @MB_ENOERR, align 4
  store i32 %55, i32* %13, align 4
  %56 = load i64, i64* %7, align 8
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add nsw i64 %57, -1
  store i64 %58, i64* %6, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %151

62:                                               ; preds = %4
  %63 = load i64, i64* %10, align 8
  %64 = icmp sge i64 %63, 1
  br i1 %64, label %65, label %151

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = load i64, i64* %15, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %10, align 8
  %71 = shl i64 %70, 4
  %72 = add nsw i64 %69, %71
  %73 = add nsw i64 %72, 1
  %74 = icmp sle i64 %68, %73
  br i1 %74, label %75, label %151

75:                                               ; preds = %65
  %76 = load i32*, i32** %12, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %151

78:                                               ; preds = %75
  %79 = load i64, i64* %7, align 8
  %80 = icmp sge i64 %79, 1
  br i1 %80, label %81, label %151

81:                                               ; preds = %78
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* %11, align 8
  %84 = sub nsw i64 %82, %83
  store i64 %84, i64* %14, align 8
  %85 = load i32*, i32** %12, align 8
  %86 = load i64, i64* %14, align 8
  %87 = ashr i64 %86, 3
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32* %88, i32** %16, align 8
  %89 = load i32, i32* %8, align 4
  switch i32 %89, label %150 [
    i32 129, label %90
    i32 128, label %120
  ]

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %94, %90
  %92 = load i64, i64* %15, align 8
  %93 = icmp sgt i64 %92, 0
  br i1 %93, label %94, label %110

94:                                               ; preds = %91
  %95 = load i32*, i32** %12, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i32 @xMBUtilGetBits(i32* %95, i64 %96, i32 1)
  store i32 %97, i32* %17, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load i64, i64* %14, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %11, align 8
  %102 = sub nsw i64 %100, %101
  %103 = sub nsw i64 %99, %102
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @xMBUtilSetBits(i32* %98, i64 %103, i32 1, i32 %104)
  %106 = load i64, i64* %14, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %14, align 8
  %108 = load i64, i64* %15, align 8
  %109 = add nsw i64 %108, -1
  store i64 %109, i64* %15, align 8
  br label %91

110:                                              ; preds = %91
  %111 = load i32, i32* @MB_EVENT_COILS_RD, align 4
  %112 = call i32 @send_param_access_notification(i32 %111)
  %113 = load i32, i32* @MB_EVENT_COILS_RD, align 4
  %114 = load i64, i64* %6, align 8
  %115 = trunc i64 %114 to i32
  %116 = load i32*, i32** %16, align 8
  %117 = load i64, i64* %7, align 8
  %118 = trunc i64 %117 to i32
  %119 = call i32 @send_param_info(i32 %113, i32 %115, i32* %116, i32 %118)
  br label %150

120:                                              ; preds = %81
  br label %121

121:                                              ; preds = %124, %120
  %122 = load i64, i64* %15, align 8
  %123 = icmp sgt i64 %122, 0
  br i1 %123, label %124, label %140

124:                                              ; preds = %121
  %125 = load i32*, i32** %5, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %6, align 8
  %128 = load i64, i64* %11, align 8
  %129 = sub nsw i64 %127, %128
  %130 = sub nsw i64 %126, %129
  %131 = call i32 @xMBUtilGetBits(i32* %125, i64 %130, i32 1)
  store i32 %131, i32* %18, align 4
  %132 = load i32*, i32** %12, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i32, i32* %18, align 4
  %135 = call i32 @xMBUtilSetBits(i32* %132, i64 %133, i32 1, i32 %134)
  %136 = load i64, i64* %14, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %14, align 8
  %138 = load i64, i64* %15, align 8
  %139 = add nsw i64 %138, -1
  store i64 %139, i64* %15, align 8
  br label %121

140:                                              ; preds = %121
  %141 = load i32, i32* @MB_EVENT_COILS_WR, align 4
  %142 = call i32 @send_param_access_notification(i32 %141)
  %143 = load i32, i32* @MB_EVENT_COILS_WR, align 4
  %144 = load i64, i64* %6, align 8
  %145 = trunc i64 %144 to i32
  %146 = load i32*, i32** %16, align 8
  %147 = load i64, i64* %7, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @send_param_info(i32 %143, i32 %145, i32* %146, i32 %148)
  br label %150

150:                                              ; preds = %81, %140, %110
  br label %153

151:                                              ; preds = %78, %75, %65, %62, %4
  %152 = load i32, i32* @MB_ENOREG, align 4
  store i32 %152, i32* %13, align 4
  br label %153

153:                                              ; preds = %151, %150
  %154 = load i32, i32* %13, align 4
  ret i32 %154
}

declare dso_local i32 @MB_SLAVE_CHECK(i32, i32, i8*) #1

declare dso_local i32 @xMBUtilGetBits(i32*, i64, i32) #1

declare dso_local i32 @xMBUtilSetBits(i32*, i64, i32, i32) #1

declare dso_local i32 @send_param_access_notification(i32) #1

declare dso_local i32 @send_param_info(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
