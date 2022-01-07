; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawStripVSRam.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawStripVSRam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32* }
%struct.TileStrip = type { i32, i32, i32, i32, i32, i64* }

@DrawScanline = common dso_local global i32 0, align 4
@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PDRAW_PLANE_HI_PRIO = common dso_local global i32 0, align 4
@rendstatus = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DrawStripVSRam(%struct.TileStrip* %0, i32 %1, i32 %2) #0 {
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
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TileStrip* %0, %struct.TileStrip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @DrawScanline, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %24 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 0, %25
  %27 = ashr i32 %26, 3
  store i32 %27, i32* %7, align 4
  %28 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %29 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %31, 7
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 8
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %36, %3
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 3
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %177, %39
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %53 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %184

56:                                               ; preds = %50
  store i32 0, i32* %16, align 4
  %57 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %58 = load i32, i32* %5, align 4
  %59 = and i32 %58, 1
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, -2
  %62 = add nsw i32 %59, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %57, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %20, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %66, %67
  %69 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %70 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %68, %71
  %73 = and i32 %72, 65535
  store i32 %73, i32* %19, align 4
  %74 = load i32, i32* %19, align 4
  %75 = ashr i32 %74, 3
  %76 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %77 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = ashr i32 %78, 24
  %80 = shl i32 %75, %79
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %19, align 4
  %82 = and i32 %81, 7
  %83 = shl i32 %82, 1
  store i32 %83, i32* %18, align 4
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %85 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %86 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %17, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %92 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %90, %93
  %95 = add nsw i32 %89, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %84, i64 %96
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %56
  br label %177

103:                                              ; preds = %56
  %104 = load i32, i32* %9, align 4
  %105 = ashr i32 %104, 15
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %103
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %8, align 4
  %110 = shl i32 %109, 16
  %111 = or i32 %108, %110
  %112 = load i32, i32* %18, align 4
  %113 = shl i32 %112, 25
  %114 = or i32 %111, %113
  store i32 %114, i32* %21, align 4
  %115 = load i32, i32* %9, align 4
  %116 = and i32 %115, 4096
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load i32, i32* %21, align 4
  %120 = xor i32 %119, 469762048
  store i32 %120, i32* %21, align 4
  br label %121

121:                                              ; preds = %118, %107
  %122 = load i32, i32* %21, align 4
  %123 = sext i32 %122 to i64
  %124 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %125 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %124, i32 0, i32 5
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i32 1
  store i64* %127, i64** %125, align 8
  store i64 %123, i64* %126, align 8
  br label %177

128:                                              ; preds = %103
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %129, %130
  br i1 %131, label %132, label %157

132:                                              ; preds = %128
  %133 = load i32, i32* %9, align 4
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %9, align 4
  %135 = and i32 %134, 2047
  %136 = shl i32 %135, 4
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, 4096
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load i32, i32* %18, align 4
  %142 = sub nsw i32 14, %141
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %10, align 4
  br label %149

145:                                              ; preds = %132
  %146 = load i32, i32* %18, align 4
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i32, i32* %9, align 4
  %151 = ashr i32 %150, 9
  %152 = and i32 %151, 48
  %153 = load i32, i32* %5, align 4
  %154 = shl i32 %153, 5
  %155 = and i32 %154, 64
  %156 = or i32 %152, %155
  store i32 %156, i32* %14, align 4
  br label %157

157:                                              ; preds = %149, %128
  %158 = load i32, i32* %9, align 4
  %159 = and i32 %158, 2048
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %157
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @TileFlip(i32 %162, i32 %163, i32 %164)
  store i32 %165, i32* %16, align 4
  br label %171

166:                                              ; preds = %157
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* %14, align 4
  %170 = call i32 @TileNorm(i32 %167, i32 %168, i32 %169)
  store i32 %170, i32* %16, align 4
  br label %171

171:                                              ; preds = %166, %161
  %172 = load i32, i32* %16, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %174, %171
  br label %177

177:                                              ; preds = %176, %121, %102
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, 8
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %7, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %7, align 4
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %50

184:                                              ; preds = %50
  %185 = load %struct.TileStrip*, %struct.TileStrip** %4, align 8
  %186 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %185, i32 0, i32 5
  %187 = load i64*, i64** %186, align 8
  store i64 0, i64* %187, align 8
  %188 = load i32, i32* %12, align 4
  %189 = icmp eq i32 %188, -1
  br i1 %189, label %190, label %194

190:                                              ; preds = %184
  %191 = load i32, i32* @PDRAW_PLANE_HI_PRIO, align 4
  %192 = load i32, i32* @rendstatus, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* @rendstatus, align 4
  br label %194

194:                                              ; preds = %190, %184
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
