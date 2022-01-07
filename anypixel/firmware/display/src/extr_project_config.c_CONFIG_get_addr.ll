; ModuleID = '/home/carl/AnghaBench/anypixel/firmware/display/src/extr_project_config.c_CONFIG_get_addr.c'
source_filename = "/home/carl/AnghaBench/anypixel/firmware/display/src/extr_project_config.c_CONFIG_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@ADDRPIN_POWER_AHB = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@pins_addrPD = common dso_local global %struct.TYPE_4__* null, align 8
@ADDRPIN_NUM = common dso_local global i32 0, align 4
@Bit_SET = common dso_local global i64 0, align 8
@pins_addrPU = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CONFIG_get_addr() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @ADDRPIN_POWER_AHB, align 4
  %6 = load i32, i32* @ENABLE, align 4
  %7 = call i32 @RCC_AHBPeriphClockCmd(i32 %5, i32 %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_addrPD, align 8
  %9 = load i32, i32* @ADDRPIN_NUM, align 4
  %10 = call i32 @CONFIG_pins(%struct.TYPE_4__* %8, i32 %9)
  %11 = call i32 @usleep(i32 5000)
  %12 = load i32, i32* @ADDRPIN_NUM, align 4
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  br label %14

14:                                               ; preds = %41, %0
  %15 = load i32, i32* %4, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %44

17:                                               ; preds = %14
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_addrPD, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_addrPD, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @GPIO_ReadInputDataBit(i32 %23, i32 %29)
  %31 = load i64, i64* @Bit_SET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %17
  %34 = load i32, i32* %2, align 4
  %35 = shl i32 %34, 1
  %36 = or i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %40

37:                                               ; preds = %17
  %38 = load i32, i32* %2, align 4
  %39 = shl i32 %38, 1
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %37, %33
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %4, align 4
  br label %14

44:                                               ; preds = %14
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_addrPU, align 8
  %46 = load i32, i32* @ADDRPIN_NUM, align 4
  %47 = call i32 @CONFIG_pins(%struct.TYPE_4__* %45, i32 %46)
  %48 = call i32 @usleep(i32 5000)
  %49 = load i32, i32* @ADDRPIN_NUM, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %78, %44
  %52 = load i32, i32* %4, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %51
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_addrPU, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pins_addrPU, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @GPIO_ReadInputDataBit(i32 %60, i32 %66)
  %68 = load i64, i64* @Bit_SET, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %54
  %71 = load i32, i32* %3, align 4
  %72 = shl i32 %71, 1
  %73 = or i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %77

74:                                               ; preds = %54
  %75 = load i32, i32* %3, align 4
  %76 = shl i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %74, %70
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %4, align 4
  br label %51

81:                                               ; preds = %51
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %3, align 4
  store i32 %86, i32* %1, align 4
  br label %88

87:                                               ; preds = %81
  store i32 4, i32* %1, align 4
  br label %88

88:                                               ; preds = %87, %85
  %89 = load i32, i32* %1, align 4
  ret i32 %89
}

declare dso_local i32 @RCC_AHBPeriphClockCmd(i32, i32) #1

declare dso_local i32 @CONFIG_pins(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @GPIO_ReadInputDataBit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
