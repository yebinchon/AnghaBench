; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetChanMatColor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetChanMatColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@__gx = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetChanMatColor(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.TYPE_4__* %4 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 4
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 4
  store i32 %0, i32* %5, align 4
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @_SHIFTL(i32 %12, i32 24, i32 8)
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @_SHIFTL(i32 %15, i32 16, i32 8)
  %17 = or i32 %13, %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @_SHIFTL(i32 %19, i32 8, i32 8)
  %21 = or i32 %17, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  switch i32 %22, label %75 [
    i32 131, label %23
    i32 129, label %32
    i32 133, label %41
    i32 132, label %52
    i32 130, label %63
    i32 128, label %69
  ]

23:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = load i32, i32* %7, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %76

32:                                               ; preds = %3
  store i32 1, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 255
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  br label %76

41:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, -256
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 255
  %51 = or i32 %47, %50
  store i32 %51, i32* %7, align 4
  br label %76

52:                                               ; preds = %3
  store i32 1, i32* %6, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, -256
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 255
  %62 = or i32 %58, %61
  store i32 %62, i32* %7, align 4
  br label %76

63:                                               ; preds = %3
  store i32 0, i32* %6, align 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %7, align 4
  br label %76

69:                                               ; preds = %3
  store i32 1, i32* %6, align 4
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 255
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %76

75:                                               ; preds = %3
  br label %90

76:                                               ; preds = %69, %63, %52, %41, %32, %23
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* %6, align 4
  %85 = shl i32 1024, %84
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @__gx, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  br label %90

90:                                               ; preds = %76, %75
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
