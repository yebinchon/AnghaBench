; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetChanCtrl.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_gx.c_GX_SetChanCtrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64*, i32 }

@GX_AF_SPEC = common dso_local global i64 0, align 8
@GX_DF_NONE = common dso_local global i64 0, align 8
@GX_AF_NONE = common dso_local global i64 0, align 8
@__gx = common dso_local global %struct.TYPE_2__* null, align 8
@GX_COLOR0A0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GX_SetChanCtrl(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %18 = load i64, i64* %14, align 8
  %19 = load i64, i64* @GX_AF_SPEC, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i64, i64* @GX_DF_NONE, align 8
  br label %25

23:                                               ; preds = %7
  %24 = load i64, i64* %13, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %11, align 8
  %28 = and i64 %27, 1
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i64 @_SHIFTL(i32 %30, i32 1, i32 1)
  %32 = or i64 %28, %31
  %33 = load i64, i64* %12, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i64 @_SHIFTL(i32 %34, i32 2, i32 4)
  %36 = or i64 %32, %35
  %37 = load i64, i64* %10, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i64 @_SHIFTL(i32 %38, i32 6, i32 1)
  %40 = or i64 %36, %39
  %41 = load i64, i64* %16, align 8
  %42 = trunc i64 %41 to i32
  %43 = call i64 @_SHIFTL(i32 %42, i32 7, i32 2)
  %44 = or i64 %40, %43
  %45 = load i64, i64* @GX_AF_NONE, align 8
  %46 = load i64, i64* %14, align 8
  %47 = sub nsw i64 %45, %46
  %48 = icmp sgt i64 %47, 0
  %49 = zext i1 %48 to i32
  %50 = call i64 @_SHIFTL(i32 %49, i32 9, i32 1)
  %51 = or i64 %44, %50
  %52 = load i64, i64* %14, align 8
  %53 = icmp sgt i64 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @_SHIFTL(i32 %54, i32 10, i32 1)
  %56 = or i64 %51, %55
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @_SHIFTR(i64 %57, i32 4, i32 4)
  %59 = call i64 @_SHIFTL(i32 %58, i32 11, i32 4)
  %60 = or i64 %56, %59
  store i64 %60, i64* %17, align 8
  %61 = load i32, i32* %8, align 4
  %62 = and i32 %61, 3
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %15, align 8
  %64 = load i64, i64* %17, align 8
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  store i64 %64, i64* %69, align 8
  %70 = load i64, i64* %15, align 8
  %71 = trunc i64 %70 to i32
  %72 = shl i32 4096, %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* @GX_COLOR0A0, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %25
  %81 = load i64, i64* %17, align 8
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  store i64 %81, i64* %85, align 8
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, 20480
  store i32 %89, i32* %87, align 8
  br label %100

90:                                               ; preds = %25
  %91 = load i64, i64* %17, align 8
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds i64, i64* %94, i64 3
  store i64 %91, i64* %95, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @__gx, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = or i32 %98, 40960
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %90, %80
  ret void
}

declare dso_local i64 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @_SHIFTR(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
