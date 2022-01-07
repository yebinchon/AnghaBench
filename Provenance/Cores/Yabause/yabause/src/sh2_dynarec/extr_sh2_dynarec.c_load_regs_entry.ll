; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_load_regs_entry.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_load_regs_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64* }

@is_ds = common dso_local global i64* null, align 8
@HOST_CCREG = common dso_local global i64 0, align 8
@CLOCK_DIVIDER = common dso_local global i32 0, align 4
@ccadj = common dso_local global i32* null, align 8
@regs = common dso_local global %struct.TYPE_2__* null, align 8
@CCREG = common dso_local global i64 0, align 8
@HOST_REGS = common dso_local global i32 0, align 4
@TEMPREG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load_regs_entry(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64*, i64** @is_ds, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i64, i64* %4, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i64, i64* @HOST_CCREG, align 8
  %12 = load i32, i32* @CLOCK_DIVIDER, align 4
  %13 = load i64, i64* @HOST_CCREG, align 8
  %14 = call i32 @emit_addimm(i64 %11, i32 %12, i64 %13)
  br label %35

15:                                               ; preds = %1
  %16 = load i32*, i32** @ccadj, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %15
  %23 = load i64, i64* @HOST_CCREG, align 8
  %24 = load i32*, i32** @ccadj, align 8
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 0, %28
  %30 = load i32, i32* @CLOCK_DIVIDER, align 4
  %31 = mul nsw i32 %29, %30
  %32 = load i64, i64* @HOST_CCREG, align 8
  %33 = call i32 @emit_addimm(i64 %23, i32 %31, i64 %32)
  br label %34

34:                                               ; preds = %22, %15
  br label %35

35:                                               ; preds = %34, %10
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %37 = load i32, i32* %2, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* @HOST_CCREG, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @CCREG, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %35
  %48 = load i64, i64* @CCREG, align 8
  %49 = load i64, i64* @HOST_CCREG, align 8
  %50 = call i32 @emit_storereg(i64 %48, i64 %49)
  br label %51

51:                                               ; preds = %47, %35
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %109, %51
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @HOST_REGS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %112

56:                                               ; preds = %52
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %56
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %70 = load i32, i32* %2, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @TEMPREG, align 8
  %80 = icmp slt i64 %78, %79
  br i1 %80, label %81, label %108

81:                                               ; preds = %68
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %83 = load i32, i32* %2, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i64, i64* %87, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CCREG, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %81
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %96 = load i32, i32* %2, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load i32, i32* %3, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %3, align 4
  %106 = call i32 @emit_loadreg(i64 %104, i32 %105)
  br label %107

107:                                              ; preds = %94, %81
  br label %108

108:                                              ; preds = %107, %68, %56
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %3, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %3, align 4
  br label %52

112:                                              ; preds = %52
  ret void
}

declare dso_local i32 @emit_addimm(i64, i32, i64) #1

declare dso_local i32 @emit_storereg(i64, i64) #1

declare dso_local i32 @emit_loadreg(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
