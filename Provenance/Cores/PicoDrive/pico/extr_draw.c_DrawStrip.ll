; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawStrip.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawStrip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.TileStrip = type { i32, i32, i32, i32, i32, i64* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PDRAW_PLANE_HI_PRIO = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TileStrip*, i32, i32)* @DrawStrip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawStrip(%struct.TileStrip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TileStrip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TileStrip* %0, %struct.TileStrip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %5, align 4
  %20 = shl i32 %19, 5
  %21 = and i32 %20, 64
  store i32 %21, i32* %16, align 4
  %22 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %23 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 0, %24
  %26 = ashr i32 %25, 3
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %30 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 7
  %33 = shl i32 %32, 1
  store i32 %33, i32* %9, align 4
  %34 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %35 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %37, 7
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  %40 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %41 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 8
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %3
  %51 = load i32, i32* %6, align 4
  %52 = shl i32 %51, 3
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %145, %50
  %56 = load i32, i32* %12, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %152

58:                                               ; preds = %55
  store i32 0, i32* %17, align 4
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %60 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %61 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %65 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = and i32 %63, %66
  %68 = add nsw i32 %62, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %59, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %58
  br label %145

76:                                               ; preds = %58
  %77 = load i32, i32* %10, align 4
  %78 = ashr i32 %77, 15
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 %82, 16
  %84 = or i32 %81, %83
  %85 = load i32, i32* %9, align 4
  %86 = shl i32 %85, 25
  %87 = or i32 %84, %86
  store i32 %87, i32* %18, align 4
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, 4096
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %80
  %92 = load i32, i32* %18, align 4
  %93 = xor i32 %92, 469762048
  store i32 %93, i32* %18, align 4
  br label %94

94:                                               ; preds = %91, %80
  %95 = load i32, i32* %18, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %98 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %97, i32 0, i32 5
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i32 1
  store i64* %100, i64** %98, align 8
  store i64 %96, i64* %99, align 8
  br label %145

101:                                              ; preds = %76
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %13, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %125

105:                                              ; preds = %101
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %10, align 4
  %108 = and i32 %107, 2047
  %109 = shl i32 %108, 4
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, %110
  store i32 %112, i32* %11, align 4
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %113, 4096
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load i32, i32* %11, align 4
  %118 = xor i32 %117, 14
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116, %105
  %120 = load i32, i32* %10, align 4
  %121 = ashr i32 %120, 9
  %122 = and i32 %121, 48
  %123 = load i32, i32* %16, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %119, %101
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, 2048
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @TileFlip(i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %17, align 4
  br label %139

134:                                              ; preds = %125
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* %11, align 4
  %137 = load i32, i32* %15, align 4
  %138 = call i32 @TileNorm(i32 %135, i32 %136, i32 %137)
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %134, %129
  %140 = load i32, i32* %17, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* %10, align 4
  store i32 %143, i32* %14, align 4
  br label %144

144:                                              ; preds = %142, %139
  br label %145

145:                                              ; preds = %144, %94, %75
  %146 = load i32, i32* %8, align 4
  %147 = add nsw i32 %146, 8
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %7, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %7, align 4
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %12, align 4
  br label %55

152:                                              ; preds = %55
  %153 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %154 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %153, i32 0, i32 5
  %155 = load i64*, i64** %154, align 8
  store i64 0, i64* %155, align 8
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* @PDRAW_PLANE_HI_PRIO, align 4
  %160 = load i32, i32* @rendstatus, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* @rendstatus, align 4
  br label %162

162:                                              ; preds = %158, %152
  ret void
}

declare dso_local i32 @TileFlip(i32, i32, i32) #1

declare dso_local i32 @TileNorm(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
