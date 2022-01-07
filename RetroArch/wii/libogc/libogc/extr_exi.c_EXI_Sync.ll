; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Sync.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c_EXI_Sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64* }

@eximap = common dso_local global %struct.TYPE_3__* null, align 8
@_exiReg = common dso_local global i32* null, align 8
@EXI_FLAG_SELECT = common dso_local global i32 0, align 4
@EXI_FLAG_DMA = common dso_local global i32 0, align 4
@EXI_FLAG_IMM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @EXI_Sync(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %2, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eximap, align 8
  %11 = load i64, i64* %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %11
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %9, align 8
  br label %13

13:                                               ; preds = %22, %1
  %14 = load i32*, i32** @_exiReg, align 8
  %15 = load i64, i64* %2, align 8
  %16 = mul i64 %15, 5
  %17 = add i64 %16, 3
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  br label %13

23:                                               ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @_CPU_ISR_Disable(i64 %24)
  store i64 0, i64* %4, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EXI_FLAG_SELECT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %96

32:                                               ; preds = %23
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @EXI_FLAG_DMA, align 4
  %37 = load i32, i32* @EXI_FLAG_IMM, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %96

41:                                               ; preds = %32
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @EXI_FLAG_IMM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %87

48:                                               ; preds = %41
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  store i64* %54, i64** %3, align 8
  %55 = load i64*, i64** %3, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %86

57:                                               ; preds = %48
  %58 = load i64, i64* %7, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load i32*, i32** @_exiReg, align 8
  %62 = load i64, i64* %2, align 8
  %63 = mul i64 %62, 5
  %64 = add i64 %63, 4
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %8, align 8
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %82, %60
  %69 = load i64, i64* %6, align 8
  %70 = load i64, i64* %7, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %6, align 8
  %75 = sub nsw i64 3, %74
  %76 = mul nsw i64 %75, 8
  %77 = ashr i64 %73, %76
  %78 = and i64 %77, 255
  %79 = load i64*, i64** %3, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds i64, i64* %79, i64 %80
  store i64 %78, i64* %81, align 8
  br label %82

82:                                               ; preds = %72
  %83 = load i64, i64* %6, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %6, align 8
  br label %68

85:                                               ; preds = %68
  br label %86

86:                                               ; preds = %85, %57, %48
  br label %87

87:                                               ; preds = %86, %41
  %88 = load i32, i32* @EXI_FLAG_DMA, align 4
  %89 = load i32, i32* @EXI_FLAG_IMM, align 4
  %90 = or i32 %88, %89
  %91 = xor i32 %90, -1
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, %91
  store i32 %95, i32* %93, align 8
  store i64 1, i64* %4, align 8
  br label %96

96:                                               ; preds = %87, %32, %23
  %97 = load i64, i64* %5, align 8
  %98 = call i32 @_CPU_ISR_Restore(i64 %97)
  %99 = load i64, i64* %4, align 8
  ret i64 %99
}

declare dso_local i32 @_CPU_ISR_Disable(i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
