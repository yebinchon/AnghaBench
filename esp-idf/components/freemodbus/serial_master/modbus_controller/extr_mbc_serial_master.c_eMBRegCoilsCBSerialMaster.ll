; ModuleID = '/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_eMBRegCoilsCBSerialMaster.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/freemodbus/serial_master/modbus_controller/extr_mbc_serial_master.c_eMBRegCoilsCBSerialMaster.c"
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
define dso_local i32 @eMBRegCoilsCBSerialMaster(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @MB_EILLSTATE, align 4
  %21 = call i32 @MB_MASTER_CHECK(i32 %19, i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @MB_EINVAL, align 4
  %26 = call i32 @MB_MASTER_CHECK(i32 %24, i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mbm_interface_ptr, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.TYPE_3__* %28, %struct.TYPE_3__** %9, align 8
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %11, align 8
  %36 = load i32, i32* @MB_ENOERR, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp sge i32 %40, 1
  br i1 %41, label %42, label %94

42:                                               ; preds = %4
  %43 = load i32*, i32** %11, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %94

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %94

49:                                               ; preds = %45
  %50 = load i32, i32* %6, align 4
  %51 = srem i32 %50, 8
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %93 [
    i32 128, label %53
    i32 129, label %73
  ]

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %57, %53
  %55 = load i32, i32* %14, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i32*, i32** %11, align 8
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @xMBUtilGetBits(i32* %58, i32 %59, i32 1)
  store i32 %60, i32* %15, align 4
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %6, align 4
  %64 = srem i32 %63, 8
  %65 = sub nsw i32 %62, %64
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @xMBUtilSetBits(i32* %61, i32 %65, i32 1, i32 %66)
  %68 = load i32, i32* %13, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %14, align 4
  br label %54

72:                                               ; preds = %54
  br label %93

73:                                               ; preds = %49
  br label %74

74:                                               ; preds = %77, %73
  %75 = load i32, i32* %14, align 4
  %76 = icmp sgt i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %6, align 4
  %81 = srem i32 %80, 8
  %82 = sub nsw i32 %79, %81
  %83 = call i32 @xMBUtilGetBits(i32* %78, i32 %82, i32 1)
  store i32 %83, i32* %16, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @xMBUtilSetBits(i32* %84, i32 %85, i32 1, i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %14, align 4
  br label %74

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %49, %92, %72
  br label %96

94:                                               ; preds = %45, %42, %4
  %95 = load i32, i32* @MB_ENOREG, align 4
  store i32 %95, i32* %12, align 4
  br label %96

96:                                               ; preds = %94, %93
  %97 = load i32, i32* %12, align 4
  ret i32 %97
}

declare dso_local i32 @MB_MASTER_CHECK(i32, i32, i8*) #1

declare dso_local i32 @xMBUtilGetBits(i32*, i32, i32) #1

declare dso_local i32 @xMBUtilSetBits(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
