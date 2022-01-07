; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opCMPM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_opCMPM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_SIZE = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@size = common dso_local global i64 0, align 8
@EA_POSTINCREMENT = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@SR_V = common dso_local global i32 0, align 4
@SR_C = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32)* @opCMPM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opCMPM(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @INSN_GET_REG, align 4
  %15 = load i32, i32* @INSN_GET_SIZE, align 4
  %16 = load i32, i32* @INSN_GET_REG0, align 4
  %17 = load i64, i64* @size, align 8
  %18 = call i32 @SIZE_TO_BYTES(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 8
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 -2, %22
  %24 = xor i32 %23, -1
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @EA_POSTINCREMENT, align 4
  %26 = shl i32 %25, 3
  %27 = load i32, i32* @reg0, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @EA_POSTINCREMENT, align 4
  %30 = shl i32 %29, 3
  %31 = load i32, i32* @reg, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i64, i64* @size, align 8
  %36 = call i32 @ea_get(%struct.TYPE_4__* %33, i32 %34, i64 %35, i32 0, i32* %10)
  store i32 %36, i32* %11, align 4
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* @size, align 8
  %40 = call i32 @ea_get(%struct.TYPE_4__* %37, i32 %38, i64 %39, i32 0, i32* %10)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %43, %44
  store i32 %45, i32* %13, align 4
  %46 = call i32 (...) @INSN_CLEAR_XCC()
  %47 = load i32, i32* %13, align 4
  %48 = call i32 @INSN_SETNZ_SHIFT(i32 %47)
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = xor i32 %49, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = xor i32 %52, %53
  %55 = and i32 %51, %54
  %56 = load i32, i32* %6, align 4
  %57 = ashr i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %2
  %60 = load i32, i32* @SR_V, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %2
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %6, align 4
  %68 = ashr i32 %66, %67
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %6, align 4
  %71 = ashr i32 %69, %70
  %72 = sub nsw i32 %68, %71
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* %6, align 4
  %75 = ashr i32 %73, %74
  %76 = add nsw i32 %72, %75
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %65
  %79 = load i32, i32* @SR_C, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %65
  %85 = load i64, i64* @size, align 8
  %86 = load i64, i64* @SIZE_L, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 20, i32 12
  ret i32 %89
}

declare dso_local i32 @SIZE_TO_BYTES(i64) #1

declare dso_local i32 @ea_get(%struct.TYPE_4__*, i32, i64, i32, i32*) #1

declare dso_local i32 @INSN_CLEAR_XCC(...) #1

declare dso_local i32 @INSN_SETNZ_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
