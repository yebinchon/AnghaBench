; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_p32x_dreq0_trigger.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_sh2soc.c_p32x_dreq0_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }
%struct.dmac = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@msh2 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ssh2 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EL_32XP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"dreq0_trigger\00", align 1
@DMA_DME = common dso_local global i32 0, align 4
@DMA_DE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p32x_dreq0_trigger() #0 {
  %1 = alloca %struct.dmac*, align 8
  %2 = alloca %struct.dmac*, align 8
  %3 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @msh2, i32 0, i32 0), align 8
  %4 = getelementptr inbounds i32, i32* %3, i64 96
  %5 = bitcast i32* %4 to i8*
  %6 = bitcast i8* %5 to %struct.dmac*
  store %struct.dmac* %6, %struct.dmac** %1, align 8
  %7 = load i32*, i32** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @ssh2, i32 0, i32 0), align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 96
  %9 = bitcast i32* %8 to i8*
  %10 = bitcast i8* %9 to %struct.dmac*
  store %struct.dmac* %10, %struct.dmac** %2, align 8
  %11 = load i32, i32* @EL_32XP, align 4
  %12 = call i32 @elprintf(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.dmac*, %struct.dmac** %1, align 8
  %14 = getelementptr inbounds %struct.dmac, %struct.dmac* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DMA_DME, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %0
  %20 = load %struct.dmac*, %struct.dmac** %1, align 8
  %21 = getelementptr inbounds %struct.dmac, %struct.dmac* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 3
  %27 = load i32, i32* @DMA_DE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load %struct.dmac*, %struct.dmac** %1, align 8
  %31 = getelementptr inbounds %struct.dmac, %struct.dmac* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 0
  %34 = call i32 @dreq0_do(%struct.TYPE_5__* @msh2, %struct.TYPE_6__* %33)
  br label %35

35:                                               ; preds = %29, %19, %0
  %36 = load %struct.dmac*, %struct.dmac** %2, align 8
  %37 = getelementptr inbounds %struct.dmac, %struct.dmac* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @DMA_DME, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %35
  %43 = load %struct.dmac*, %struct.dmac** %2, align 8
  %44 = getelementptr inbounds %struct.dmac, %struct.dmac* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 3
  %50 = load i32, i32* @DMA_DE, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.dmac*, %struct.dmac** %2, align 8
  %54 = getelementptr inbounds %struct.dmac, %struct.dmac* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 0
  %57 = call i32 @dreq0_do(%struct.TYPE_5__* @ssh2, %struct.TYPE_6__* %56)
  br label %58

58:                                               ; preds = %52, %42, %35
  ret void
}

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @dreq0_do(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
