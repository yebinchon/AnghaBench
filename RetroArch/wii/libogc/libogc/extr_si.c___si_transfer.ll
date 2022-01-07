; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c___si_transfer.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_si.c___si_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i8*, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@sicntrl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@_siReg = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i8*, i32, i64)* @__si_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__si_transfer(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_5__, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* %14, align 4
  %19 = call i32 @_CPU_ISR_Disable(i32 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sicntrl, i32 0, i32 0), align 8
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* %14, align 4
  %24 = call i32 @_CPU_ISR_Restore(i32 %23)
  store i32 0, i32* %7, align 4
  br label %101

25:                                               ; preds = %6
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @SISR_ERRORMASK(i32 %26)
  %28 = load i32*, i32** @_siReg, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 14
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sicntrl, i32 0, i32 0), align 8
  %33 = load i64, i64* %13, align 8
  store i64 %33, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sicntrl, i32 0, i32 3), align 8
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sicntrl, i32 0, i32 1), align 4
  %35 = load i8*, i8** %11, align 8
  store i8* %35, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @sicntrl, i32 0, i32 2), align 8
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 3
  %38 = sdiv i32 %37, 4
  store i32 %38, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %39

39:                                               ; preds = %55, %25
  %40 = load i32, i32* %16, align 4
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %39
  %44 = load i8*, i8** %9, align 8
  %45 = bitcast i8* %44 to i32*
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** @_siReg, align 8
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 32, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %16, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %16, align 4
  br label %39

58:                                               ; preds = %39
  %59 = load i32*, i32** @_siReg, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 13
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load i64, i64* %13, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %58
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  br label %72

72:                                               ; preds = %69, %58
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 128
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %10, align 4
  %78 = and i32 %77, 127
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp eq i32 %81, 128
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* %12, align 4
  br label %84

84:                                               ; preds = %83, %76
  %85 = load i32, i32* %12, align 4
  %86 = and i32 %85, 127
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  store i32 1, i32* %94, align 4
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** @_siReg, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 13
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* %14, align 4
  %100 = call i32 @_CPU_ISR_Restore(i32 %99)
  store i32 1, i32* %7, align 4
  br label %101

101:                                              ; preds = %84, %22
  %102 = load i32, i32* %7, align 4
  ret i32 %102
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local i32 @SISR_ERRORMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
