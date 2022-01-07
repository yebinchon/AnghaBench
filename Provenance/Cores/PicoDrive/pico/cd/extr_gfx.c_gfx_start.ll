; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_gfx.c_gfx_start.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/cd/extr_gfx.c_gfx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32*, i32* }

@Pico_mcd = common dso_local global %struct.TYPE_4__* null, align 8
@gfx = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gfx_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 3
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %93, label %12

12:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 %16, 2
  %18 = and i32 %17, 262136
  %19 = zext i32 %18 to i64
  %20 = add nsw i64 %15, %19
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 6), align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 89
  %26 = load i32, i32* %25, align 4
  %27 = ashr i32 %26, 1
  %28 = and i32 %27, 3
  switch i32 %28, label %33 [
    i32 0, label %29
    i32 1, label %30
    i32 2, label %31
    i32 3, label %32
  ]

29:                                               ; preds = %12
  store i32 524287, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 8
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 4
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 2), align 8
  store i32 261632, i32* %3, align 4
  br label %33

30:                                               ; preds = %12
  store i32 524287, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 8
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 4
  store i32 3, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 2), align 8
  store i32 262016, i32* %3, align 4
  br label %33

31:                                               ; preds = %12
  store i32 8388607, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 8
  store i32 15, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 4
  store i32 8, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 2), align 8
  store i32 131072, i32* %3, align 4
  br label %33

32:                                               ; preds = %12
  store i32 8388607, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 0), align 8
  store i32 16, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 1), align 4
  store i32 7, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 2), align 8
  store i32 229376, i32* %3, align 4
  br label %33

33:                                               ; preds = %12, %32, %31, %30, %29
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 90
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 8
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 91
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %39, %44
  store i32 %45, i32* %4, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = shl i32 %49, 2
  %51 = load i32, i32* %3, align 4
  %52 = and i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %48, %53
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 5), align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 93
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 31
  %62 = add nsw i32 %61, 1
  %63 = shl i32 %62, 6
  %64 = sub nsw i32 %63, 7
  store i32 %64, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 3), align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 94
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 95
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %70, %75
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = shl i32 %77, 3
  %79 = and i32 %78, 524224
  store i32 %79, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 4), align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 97
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, 63
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 4), align 8
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @gfx, i32 0, i32 4), align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @Pico_mcd, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 88
  store i32 128, i32* %91, align 4
  %92 = call i32 (...) @gfx_schedule()
  br label %93

93:                                               ; preds = %33, %1
  ret void
}

declare dso_local i32 @gfx_schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
