; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omapfb_blend_glyph_argb8888.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers/extr_omap_gfx.c_omapfb_blend_glyph_argb8888.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*, i32*, i32, i32, i32, i32, i32)* @omapfb_blend_glyph_argb8888 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_blend_glyph_argb8888(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  %36 = ashr i32 %35, 2
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

51:                                               ; preds = %144, %8
  %52 = load i32, i32* %18, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %155

55:                                               ; preds = %51
  store i32 0, i32* %17, align 4
  br label %56

56:                                               ; preds = %140, %55
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %143

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
  br label %140

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
  %91 = call i32 @omapfb_put_pixel_argb8888(i32* %81, i32 %84, i32 %87, i32 %90)
  br label %140

92:                                               ; preds = %74
  %93 = load i32, i32* %25, align 4
  %94 = and i32 %93, 16711680
  %95 = ashr i32 %94, 16
  store i32 %95, i32* %19, align 4
  %96 = load i32, i32* %25, align 4
  %97 = and i32 %96, 65280
  %98 = ashr i32 %97, 8
  store i32 %98, i32* %20, align 4
  %99 = load i32, i32* %25, align 4
  %100 = and i32 %99, 255
  %101 = ashr i32 %100, 0
  store i32 %101, i32* %21, align 4
  %102 = load i32*, i32** %23, align 8
  %103 = load i32, i32* %17, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %19, align 4
  %107 = load i32, i32* %24, align 4
  %108 = sub nsw i32 256, %107
  %109 = mul i32 %106, %108
  %110 = load i32*, i32** %11, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %24, align 4
  %114 = mul nsw i32 %112, %113
  %115 = add i32 %109, %114
  %116 = lshr i32 %115, 8
  %117 = load i32, i32* %20, align 4
  %118 = load i32, i32* %24, align 4
  %119 = sub nsw i32 256, %118
  %120 = mul i32 %117, %119
  %121 = load i32*, i32** %11, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %24, align 4
  %125 = mul nsw i32 %123, %124
  %126 = add i32 %120, %125
  %127 = lshr i32 %126, 8
  %128 = load i32, i32* %21, align 4
  %129 = load i32, i32* %24, align 4
  %130 = sub nsw i32 256, %129
  %131 = mul i32 %128, %130
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 2
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %24, align 4
  %136 = mul nsw i32 %134, %135
  %137 = add i32 %131, %136
  %138 = lshr i32 %137, 8
  %139 = call i32 @omapfb_put_pixel_argb8888(i32* %105, i32 %116, i32 %127, i32 %138)
  br label %140

140:                                              ; preds = %92, %77, %73
  %141 = load i32, i32* %17, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %17, align 4
  br label %56

143:                                              ; preds = %56
  br label %144

144:                                              ; preds = %143
  %145 = load i32, i32* %18, align 4
  %146 = add i32 %145, 1
  store i32 %146, i32* %18, align 4
  %147 = load i32, i32* %14, align 4
  %148 = load i32*, i32** %10, align 8
  %149 = zext i32 %147 to i64
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32* %150, i32** %10, align 8
  %151 = load i32, i32* %22, align 4
  %152 = load i32*, i32** %23, align 8
  %153 = zext i32 %151 to i64
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  store i32* %154, i32** %23, align 8
  br label %51

155:                                              ; preds = %51
  ret void
}

declare dso_local i32 @omapfb_put_pixel_argb8888(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
