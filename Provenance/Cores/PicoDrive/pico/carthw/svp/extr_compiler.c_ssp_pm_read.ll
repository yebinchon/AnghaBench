; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_ssp_pm_read.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_ssp_pm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@ssp = common dso_local global %struct.TYPE_6__* null, align 8
@SSP_PMC_SET = common dso_local global i32 0, align 4
@rPMC = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@SSP_PMC_HAVE_ADDR = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@svp = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssp_pm_read(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SSP_PMC_SET, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rPMC, i32 0, i32 0), align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  store i32 %15, i32* %21, align 4
  %22 = load i32, i32* @SSP_PMC_SET, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  store i32 0, i32* %2, align 4
  br label %112

28:                                               ; preds = %1
  %29 = load i32, i32* @SSP_PMC_HAVE_ADDR, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 16
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, 65520
  %45 = icmp eq i32 %44, 2048
  br i1 %45, label %46, label %69

46:                                               ; preds = %28
  %47 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @Pico, i32 0, i32 0), align 8
  %48 = inttoptr i64 %47 to i16*
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 1048575
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i16, i16* %48, i64 %57
  %59 = load i16, i16* %58, align 2
  %60 = zext i16 %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %103

69:                                               ; preds = %28
  %70 = load i32, i32* %5, align 4
  %71 = and i32 %70, 18431
  %72 = icmp eq i32 %71, 24
  br i1 %72, label %73, label %102

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** @svp, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i16*
  store i16* %77, i16** %6, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @get_inc(i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i16*, i16** %6, align 8
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 65535
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i16, i16* %80, i64 %89
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  store i32 %92, i32* %4, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %3, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %93
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %73, %69
  br label %103

103:                                              ; preds = %102, %46
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ssp, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rPMC, i32 0, i32 0), align 4
  %111 = load i32, i32* %4, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %103, %14
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @get_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
