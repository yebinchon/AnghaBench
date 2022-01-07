; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_eMBRegHoldingCBSerialMaster.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_eMBRegHoldingCBSerialMaster.c"
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
define dso_local i32 @eMBRegHoldingCBSerialMaster(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @MB_EILLSTATE, align 4
  %18 = call i32 @MB_MASTER_CHECK(i32 %16, i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @MB_EINVAL, align 4
  %23 = call i32 @MB_MASTER_CHECK(i32 %21, i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %9, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %10, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %11, align 8
  %33 = load i32, i32* @MB_ENOERR, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %71

37:                                               ; preds = %4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 1
  br i1 %43, label %44, label %71

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %70 [
    i32 128, label %46
    i32 129, label %57
  ]

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %50, %46
  %48 = load i32, i32* %13, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32*, i32** %5, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = call i32 @_XFER_2_RD(i32* %51, i32* %52)
  %54 = load i32, i32* %13, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %47

56:                                               ; preds = %47
  br label %70

57:                                               ; preds = %44
  br label %58

58:                                               ; preds = %61, %57
  %59 = load i32, i32* %13, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = load i32*, i32** %11, align 8
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @_XFER_2_WR(i32* %62, i32* %63)
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  store i32* %66, i32** %11, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sub nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %58

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %44, %69, %56
  br label %73

71:                                               ; preds = %41, %37, %4
  %72 = load i32, i32* @MB_ENOREG, align 4
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = load i32, i32* %12, align 4
  ret i32 %74
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*) #1

declare dso_local i32 @_XFER_2_RD(i32*, i32*) #1

declare dso_local i32 @_XFER_2_WR(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
