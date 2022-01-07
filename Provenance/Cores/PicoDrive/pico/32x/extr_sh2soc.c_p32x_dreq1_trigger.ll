; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_p32x_dreq1_trigger.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_p32x_dreq1_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.dmac = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@msh2 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ssh2 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EL_32XP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dreq1_trigger\00", align 1
@DMA_DME = common dso_local global i32 0, align 4
@DMA_DE = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p32x_dreq1_trigger() #0 {
  %1 = alloca %struct.dmac*, align 8
  %2 = alloca %struct.dmac*, align 8
  %3 = alloca i32, align 4
  %4 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 8
  %5 = getelementptr inbounds i32, i32* %4, i64 96
  %6 = bitcast i32* %5 to i8*
  %7 = bitcast i8* %6 to %struct.dmac*
  store %struct.dmac* %7, %struct.dmac** %1, align 8
  %8 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 96
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.dmac*
  store %struct.dmac* %11, %struct.dmac** %2, align 8
  store i32 0, i32* %3, align 4
  %12 = load i32, i32* @EL_32XP, align 4
  %13 = call i32 @elprintf(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dmac*, %struct.dmac** %1, align 8
  %15 = getelementptr inbounds %struct.dmac, %struct.dmac* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DMA_DME, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %0
  %21 = load %struct.dmac*, %struct.dmac** %1, align 8
  %22 = getelementptr inbounds %struct.dmac, %struct.dmac* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 3
  %28 = load i32, i32* @DMA_DE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %20
  %31 = load %struct.dmac*, %struct.dmac** %1, align 8
  %32 = getelementptr inbounds %struct.dmac, %struct.dmac* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 1
  %35 = call i32 @dreq1_do(%struct.TYPE_5__* @msh2, %struct.TYPE_6__* %34)
  store i32 1, i32* %3, align 4
  br label %36

36:                                               ; preds = %30, %20, %0
  %37 = load %struct.dmac*, %struct.dmac** %2, align 8
  %38 = getelementptr inbounds %struct.dmac, %struct.dmac* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @DMA_DME, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %36
  %44 = load %struct.dmac*, %struct.dmac** %2, align 8
  %45 = getelementptr inbounds %struct.dmac, %struct.dmac* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i64 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 3
  %51 = load i32, i32* @DMA_DE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.dmac*, %struct.dmac** %2, align 8
  %55 = getelementptr inbounds %struct.dmac, %struct.dmac* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 1
  %58 = call i32 @dreq1_do(%struct.TYPE_5__* @ssh2, %struct.TYPE_6__* %57)
  store i32 1, i32* %3, align 4
  br label %59

59:                                               ; preds = %53, %43, %36
  %60 = load i32, i32* %3, align 4
  ret void
}

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @dreq1_do(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
