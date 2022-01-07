; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler.c_allocate_frames.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/gfx/scaler/extr_scaler.c_allocate_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scaler_ctx = type { i32, i32, i64, i32, i64, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32* }

@SCALER_FMT_ARGB8888 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scaler_ctx*)* @allocate_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_frames(%struct.scaler_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scaler_ctx*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.scaler_ctx* %0, %struct.scaler_ctx** %3, align 8
  store i32* null, i32** %4, align 8
  %7 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %8 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = add nsw i32 %9, 7
  %11 = and i32 %10, -8
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %16 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 4
  %24 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %25 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %28 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i32 %26, i32* %29, align 8
  %30 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %31 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %30, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %35 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %34, i32 0, i32 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %33, %37
  %39 = ashr i32 %38, 3
  %40 = call i64 @calloc(i32 4, i32 %39)
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %4, align 8
  %42 = load i32*, i32** %4, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %124

45:                                               ; preds = %1
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %48 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 3
  store i32* %46, i32** %49, align 8
  %50 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %51 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SCALER_FMT_ARGB8888, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %45
  store i32* null, i32** %5, align 8
  %56 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 7
  %60 = and i32 %59, -8
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 4
  %63 = trunc i64 %62 to i32
  %64 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %64, i32 0, i32 7
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %68 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %67, i32 0, i32 7
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %72 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = ashr i32 %74, 2
  %76 = call i64 @calloc(i32 4, i32 %75)
  %77 = inttoptr i64 %76 to i32*
  store i32* %77, i32** %5, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %124

81:                                               ; preds = %55
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %84 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32* %82, i32** %85, align 8
  br label %86

86:                                               ; preds = %81, %45
  %87 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %88 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SCALER_FMT_ARGB8888, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %123

92:                                               ; preds = %86
  store i32* null, i32** %6, align 8
  %93 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %94 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 7
  %97 = and i32 %96, -8
  %98 = sext i32 %97 to i64
  %99 = mul i64 %98, 4
  %100 = trunc i64 %99 to i32
  %101 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %101, i32 0, i32 6
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  store i32 %100, i32* %103, align 8
  %104 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %109 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %107, %110
  %112 = ashr i32 %111, 2
  %113 = call i64 @calloc(i32 4, i32 %112)
  %114 = inttoptr i64 %113 to i32*
  store i32* %114, i32** %6, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %92
  store i32 0, i32* %2, align 4
  br label %124

118:                                              ; preds = %92
  %119 = load i32*, i32** %6, align 8
  %120 = load %struct.scaler_ctx*, %struct.scaler_ctx** %3, align 8
  %121 = getelementptr inbounds %struct.scaler_ctx, %struct.scaler_ctx* %120, i32 0, i32 6
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  store i32* %119, i32** %122, align 8
  br label %123

123:                                              ; preds = %118, %86
  store i32 1, i32* %2, align 4
  br label %124

124:                                              ; preds = %123, %117, %80, %44
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i64 @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
