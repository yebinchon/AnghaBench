; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omapfb_blend_glyph_rgb565.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omapfb_blend_glyph_rgb565.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*, i32, i32, i32, i32, i32)* @omapfb_blend_glyph_rgb565 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_blend_glyph_rgb565(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %31, %34
  %36 = ashr i32 %35, 1
  store i32 %36, i32* %22, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* %22, align 4
  %45 = mul i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %42, i64 %46
  %48 = load i32, i32* %15, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %23, align 8
  store i32 0, i32* %18, align 4
  br label %51

51:                                               ; preds = %159, %8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %170

55:                                               ; preds = %51
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %155, %55
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %158

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %17, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %24, align 4
  %66 = load i32*, i32** %23, align 8
  %67 = load i32, i32* %17, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %25, align 4
  %71 = load i32, i32* %24, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %155

74:                                               ; preds = %60
  %75 = load i32, i32* %24, align 4
  %76 = icmp eq i32 %75, 255
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i32*, i32** %23, align 8
  %79 = load i32, i32* %17, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32*, i32** %11, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @omapfb_put_pixel_rgb565(i32* %81, i32 %84, i32 %87, i32 %90)
  br label %155

92:                                               ; preds = %74
  %93 = load i32, i32* %25, align 4
  %94 = and i32 %93, 63488
  %95 = ashr i32 %94, 11
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %25, align 4
  %97 = and i32 %96, 2016
  %98 = ashr i32 %97, 5
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %25, align 4
  %100 = and i32 %99, 31
  %101 = ashr i32 %100, 0
  store i32 %101, i32* %21, align 4
  %102 = load i32, i32* %19, align 4
  %103 = shl i32 %102, 3
  %104 = load i32, i32* %19, align 4
  %105 = lshr i32 %104, 2
  %106 = or i32 %103, %105
  store i32 %106, i32* %19, align 4
  %107 = load i32, i32* %20, align 4
  %108 = shl i32 %107, 2
  %109 = load i32, i32* %20, align 4
  %110 = lshr i32 %109, 4
  %111 = or i32 %108, %110
  store i32 %111, i32* %20, align 4
  %112 = load i32, i32* %21, align 4
  %113 = shl i32 %112, 3
  %114 = load i32, i32* %21, align 4
  %115 = lshr i32 %114, 2
  %116 = or i32 %113, %115
  store i32 %116, i32* %21, align 4
  %117 = load i32*, i32** %23, align 8
  %118 = load i32, i32* %17, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %19, align 4
  %122 = load i32, i32* %24, align 4
  %123 = sub nsw i32 256, %122
  %124 = mul i32 %121, %123
  %125 = load i32*, i32** %11, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %24, align 4
  %129 = mul nsw i32 %127, %128
  %130 = add i32 %124, %129
  %131 = lshr i32 %130, 8
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* %24, align 4
  %134 = sub nsw i32 256, %133
  %135 = mul i32 %132, %134
  %136 = load i32*, i32** %11, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %24, align 4
  %140 = mul nsw i32 %138, %139
  %141 = add i32 %135, %140
  %142 = lshr i32 %141, 8
  %143 = load i32, i32* %21, align 4
  %144 = load i32, i32* %24, align 4
  %145 = sub nsw i32 256, %144
  %146 = mul i32 %143, %145
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %24, align 4
  %151 = mul nsw i32 %149, %150
  %152 = add i32 %146, %151
  %153 = lshr i32 %152, 8
  %154 = call i32 @omapfb_put_pixel_rgb565(i32* %120, i32 %131, i32 %142, i32 %153)
  br label %155

155:                                              ; preds = %92, %77, %73
  %156 = load i32, i32* %17, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %17, align 4
  br label %56

158:                                              ; preds = %56
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %18, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %18, align 4
  %162 = load i32, i32* %14, align 4
  %163 = load i32*, i32** %10, align 8
  %164 = zext i32 %162 to i64
  %165 = getelementptr inbounds i32, i32* %163, i64 %164
  store i32* %165, i32** %10, align 8
  %166 = load i32, i32* %22, align 4
  %167 = load i32*, i32** %23, align 8
  %168 = zext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  store i32* %169, i32** %23, align 8
  br label %51

170:                                              ; preds = %51
  ret void
}

declare dso_local i32 @omapfb_put_pixel_rgb565(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
