; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_eMBRegDiscreteCBSerialMaster.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_eMBRegDiscreteCBSerialMaster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }

@mbm_interface_ptr = common dso_local global %struct.TYPE_4__* null, align 8
@MB_EILLSTATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Master interface uninitialized.\00", align 1
@MB_EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Master stack processing error.\00", align 1
@MB_ENOERR = common dso_local global i32 0, align 4
@MB_ENOREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eMBRegDiscreteCBSerialMaster(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %15 = icmp ne %struct.TYPE_4__* %14, null
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* @MB_EILLSTATE, align 4
  %18 = call i32 @MB_MASTER_CHECK(i32 %16, i32 %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @MB_EINVAL, align 4
  %23 = call i32 @MB_MASTER_CHECK(i32 %21, i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %9, align 8
  %34 = load i32, i32* @MB_ENOERR, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sdiv i32 %35, 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  %38 = load i32*, i32** %9, align 8
  store i32* %38, i32** %13, align 8
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp sge i32 %41, 1
  br i1 %42, label %43, label %79

43:                                               ; preds = %3
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = icmp sge i32 %47, 1
  br i1 %48, label %49, label %79

49:                                               ; preds = %46
  %50 = load i32, i32* %5, align 4
  %51 = srem i32 %50, 8
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %55, %49
  %53 = load i32, i32* %12, align 4
  %54 = icmp sgt i32 %53, 1
  br i1 %54, label %55, label %65

55:                                               ; preds = %52
  %56 = load i32*, i32** %13, align 8
  %57 = getelementptr inbounds i32, i32* %56, i32 1
  store i32* %57, i32** %13, align 8
  %58 = load i32, i32* %11, align 4
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %4, align 8
  %61 = load i32, i32* %59, align 4
  %62 = call i32 @xMBUtilSetBits(i32* %56, i32 %58, i32 8, i32 %61)
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %12, align 4
  br label %52

65:                                               ; preds = %52
  %66 = load i32, i32* %6, align 4
  %67 = srem i32 %66, 8
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32*, i32** %13, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %4, align 8
  %76 = load i32, i32* %74, align 4
  %77 = call i32 @xMBUtilSetBits(i32* %71, i32 %72, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %70, %65
  br label %81

79:                                               ; preds = %46, %43, %3
  %80 = load i32, i32* @MB_ENOREG, align 4
  store i32 %80, i32* %10, align 4
  br label %81

81:                                               ; preds = %79, %78
  %82 = load i32, i32* %10, align 4
  ret i32 %82
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*) #1

declare dso_local i32 @xMBUtilSetBits(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
