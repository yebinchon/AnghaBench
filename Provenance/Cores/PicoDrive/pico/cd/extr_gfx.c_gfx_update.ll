; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_gfx.c_gfx_update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_gfx.c_gfx_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@gfx = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@PCDS_IEN1 = common dso_local global i32 0, align 4
@EL_INTS = common dso_local global i32 0, align 4
@EL_CD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"s68k: gfx_cd irq 1\00", align 1
@PCD_EVENT_GFX = common dso_local global i32 0, align 4
@PicoOpt = common dso_local global i32 0, align 4
@POPT_EN_MCD_GFX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfx_update(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 88
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, 128
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %114

14:                                               ; preds = %1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 98
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 99
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %20, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 100
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 101
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %32, %37
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 4
  %41 = sub nsw i32 %39, %40
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %14
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 88
  store i32 0, i32* %48, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 101
  store i32 0, i32* %52, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 100
  store i32 0, i32* %56, align 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 51
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @PCDS_IEN1, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %44
  %66 = load i32, i32* @EL_INTS, align 4
  %67 = load i32, i32* @EL_CD, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @elprintf(i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %70 = call i32 @SekInterruptS68k(i32 1)
  br label %71

71:                                               ; preds = %65, %44
  br label %97

72:                                               ; preds = %14
  %73 = load i32, i32* %4, align 4
  %74 = ashr i32 %73, 8
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 100
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 101
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %72
  %88 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %72
  %90 = load i32, i32* %2, align 4
  %91 = load i32, i32* @PCD_EVENT_GFX, align 4
  %92 = load i32, i32* %5, align 4
  %93 = mul nsw i32 5, %92
  %94 = load i32, i32* %3, align 4
  %95 = mul nsw i32 %93, %94
  %96 = call i32 @pcd_event_schedule(i32 %90, i32 %91, i32 %95)
  br label %97

97:                                               ; preds = %89, %71
  %98 = load i32, i32* @PicoOpt, align 4
  %99 = load i32, i32* @POPT_EN_MCD_GFX, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %114

102:                                              ; preds = %97
  br label %103

103:                                              ; preds = %107, %102
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* %3, align 4
  %106 = icmp ne i32 %104, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @gfx_render(i32 %108, i32 %109)
  %111 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 4
  %112 = add nsw i32 %111, 8
  store i32 %112, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 4
  br label %103

113:                                              ; preds = %103
  br label %114

114:                                              ; preds = %13, %113, %97
  ret void
}

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @SekInterruptS68k(i32) #1

declare dso_local i32 @pcd_event_schedule(i32, i32, i32) #1

declare dso_local i32 @gfx_render(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
