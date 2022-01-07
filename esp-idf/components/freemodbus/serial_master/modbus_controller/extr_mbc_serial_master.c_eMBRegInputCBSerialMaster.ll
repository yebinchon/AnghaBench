; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_eMBRegInputCBSerialMaster.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_eMBRegInputCBSerialMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@mbm_interface_ptr = common dso_local global %struct.TYPE_4__* null, align 8
@MB_EILLSTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Master interface uninitialized.\00", align 1
@MB_EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Master stack processing error.\00", align 1
@MB_ENOERR = common dso_local global i32 0, align 4
@MB_ENOREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRegInputCBSerialMaster(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* @MB_EILLSTATE, align 4
  %16 = call i32 @MB_MASTER_CHECK(i32 %14, i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32*, i32** %4, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @MB_EINVAL, align 4
  %21 = call i32 @MB_MASTER_CHECK(i32 %19, i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %7, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i32*
  store i32* %30, i32** %9, align 8
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @MB_ENOERR, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %53

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = icmp sge i32 %36, 1
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %38
  br label %43

43:                                               ; preds = %46, %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32*, i32** %9, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @_XFER_2_RD(i32* %47, i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %43

52:                                               ; preds = %43
  br label %55

53:                                               ; preds = %38, %35, %3
  %54 = load i32, i32* @MB_ENOREG, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = load i32, i32* %11, align 4
  ret i32 %56
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*) #1

declare dso_local i32 @_XFER_2_RD(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
