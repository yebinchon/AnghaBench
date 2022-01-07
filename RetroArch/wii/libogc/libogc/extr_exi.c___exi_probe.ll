; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_probe.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_exi.c___exi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@eximap = common dso_local global %struct.TYPE_3__* null, align 8
@_exiReg = common dso_local global i32* null, align 8
@EXI_FLAG_ATTACH = common dso_local global i32 0, align 4
@EXI_EXT_IRQ = common dso_local global i32 0, align 4
@last_exi_idtime = common dso_local global i64* null, align 8
@EXI_EXT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @__exi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__exi_probe(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  store i64 1, i64* %5, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** @eximap, align 8
  %10 = load i64, i64* %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i64 %10
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @_CPU_ISR_Disable(i32 %12)
  %14 = load i32*, i32** @_exiReg, align 8
  %15 = load i64, i64* %3, align 8
  %16 = mul i64 %15, 5
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EXI_FLAG_ATTACH, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %82, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @EXI_EXT_IRQ, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i64, i64* %3, align 8
  %32 = call i32 @__exi_clearirqs(i64 %31, i32 0, i32 0, i32 1)
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  %35 = load i64*, i64** @last_exi_idtime, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64 0, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i32*, i32** @_exiReg, align 8
  %40 = load i64, i64* %3, align 8
  %41 = mul i64 %40, 5
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @EXI_EXT_BIT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %74

47:                                               ; preds = %38
  %48 = call i64 (...) @gettime()
  store i64 %48, i64* %4, align 8
  %49 = load i64*, i64** @last_exi_idtime, align 8
  %50 = load i64, i64* %3, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  %55 = load i64, i64* %4, align 8
  %56 = load i64*, i64** @last_exi_idtime, align 8
  %57 = load i64, i64* %3, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %54, %47
  %60 = load i64*, i64** @last_exi_idtime, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = call i32 @diff_usec(i64 %63, i64 %64)
  %66 = add nsw i32 %65, 10
  store i32 %66, i32* %7, align 4
  %67 = icmp slt i32 %66, 30
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  store i64 0, i64* %5, align 8
  br label %70

69:                                               ; preds = %59
  store i64 1, i64* %5, align 8
  br label %70

70:                                               ; preds = %69, %68
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @_CPU_ISR_Restore(i32 %71)
  %73 = load i64, i64* %5, align 8
  store i64 %73, i64* %2, align 8
  br label %110

74:                                               ; preds = %38
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load i64*, i64** @last_exi_idtime, align 8
  %78 = load i64, i64* %3, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @_CPU_ISR_Restore(i32 %80)
  store i64 0, i64* %2, align 8
  br label %110

82:                                               ; preds = %1
  %83 = load i32*, i32** @_exiReg, align 8
  %84 = load i64, i64* %3, align 8
  %85 = mul i64 %84, 5
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @EXI_EXT_BIT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %82
  %92 = load i32*, i32** @_exiReg, align 8
  %93 = load i64, i64* %3, align 8
  %94 = mul i64 %93, 5
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @EXI_EXT_IRQ, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %91, %82
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load i64*, i64** @last_exi_idtime, align 8
  %104 = load i64, i64* %3, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  store i64 0, i64* %105, align 8
  store i64 0, i64* %5, align 8
  br label %106

106:                                              ; preds = %100, %91
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @_CPU_ISR_Restore(i32 %107)
  %109 = load i64, i64* %5, align 8
  store i64 %109, i64* %2, align 8
  br label %110

110:                                              ; preds = %106, %74, %70
  %111 = load i64, i64* %2, align 8
  ret i64 %111
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local i32 @__exi_clearirqs(i64, i32, i32, i32) #1

declare dso_local i64 @gettime(...) #1

declare dso_local i32 @diff_usec(i64, i64) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
