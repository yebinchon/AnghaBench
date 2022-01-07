; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawLayer.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw.c_DrawLayer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }
%struct.TileStrip = type { i32*, i32, i32, i32, i32, i32 }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@__const.DrawLayer.shift = private unnamed_addr constant [4 x i8] c"\05\06\05\07", align 1
@DrawScanline = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32)* @DrawLayer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawLayer(i32 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.PicoVideo*, align 8
  %10 = alloca [4 x i8], align 1
  %11 = alloca %struct.TileStrip, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 2), %struct.PicoVideo** %9, align 8
  %17 = bitcast [4 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.DrawLayer.shift, i32 0, i32 0), i64 4, i1 false)
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 0
  store i32* %18, i32** %19, align 8
  %20 = load i32, i32* %8, align 4
  %21 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %23 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 16
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = ashr i32 %27, 4
  %29 = and i32 %28, 3
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %12, align 4
  %31 = and i32 %30, 3
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = shl i32 1, %36
  %38 = sub nsw i32 %37, 1
  %39 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load i32, i32* %13, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %41, 255
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %4
  %46 = load i32, i32* %14, align 4
  %47 = and i32 %46, 511
  store i32 %47, i32* %14, align 4
  br label %53

48:                                               ; preds = %4
  %49 = load i32, i32* %12, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 255, i32* %14, align 4
  br label %52

52:                                               ; preds = %51, %48
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32, i32* %5, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %59 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 4
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 7
  %64 = shl i32 %63, 12
  %65 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 3
  store i32 %64, i32* %65, align 8
  br label %75

66:                                               ; preds = %53
  %67 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %68 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 56
  %73 = shl i32 %72, 9
  %74 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 3
  store i32 %73, i32* %74, align 8
  br label %75

75:                                               ; preds = %66, %57
  %76 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %77 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 13
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 9
  store i32 %81, i32* %16, align 4
  %82 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %83 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 11
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 2
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %75
  %90 = load i32, i32* @DrawScanline, align 4
  %91 = shl i32 %90, 1
  %92 = load i32, i32* %16, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %16, align 4
  br label %94

94:                                               ; preds = %89, %75
  %95 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %96 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 11
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 1
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %94
  %103 = load i32, i32* %16, align 4
  %104 = and i32 %103, -16
  store i32 %104, i32* %16, align 4
  br label %105

105:                                              ; preds = %102, %94
  %106 = load i32, i32* %5, align 4
  %107 = and i32 %106, 1
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %16, align 4
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), align 8
  %111 = load i32, i32* %16, align 4
  %112 = and i32 %111, 32767
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 5
  store i32 %115, i32* %116, align 8
  %117 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %118 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 12
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 6
  %123 = icmp eq i32 %122, 6
  br i1 %123, label %124, label %153

124:                                              ; preds = %105
  %125 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @DrawScanline, align 4
  %133 = shl i32 %132, 1
  %134 = add nsw i32 %131, %133
  %135 = load i32, i32* %14, align 4
  %136 = shl i32 %135, 1
  %137 = or i32 %136, 1
  %138 = and i32 %134, %137
  %139 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 4
  store i32 %138, i32* %139, align 4
  %140 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = ashr i32 %141, 4
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = shl i32 %142, %147
  %149 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, %148
  store i32 %151, i32* %149, align 8
  %152 = call i32 @DrawStripInterlace(%struct.TileStrip* %11)
  br label %203

153:                                              ; preds = %105
  %154 = load %struct.PicoVideo*, %struct.PicoVideo** %9, align 8
  %155 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 11
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %153
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %164
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = shl i32 %167, 24
  %169 = or i32 %162, %168
  %170 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 4
  store i32 %169, i32* %170, align 4
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @DrawStripVSRam(%struct.TileStrip* %11, i32 %171, i32 %172)
  br label %202

174:                                              ; preds = %153
  %175 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %176 = load i32, i32* %5, align 4
  %177 = and i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %15, align 4
  %181 = load i32, i32* %15, align 4
  %182 = load i32, i32* @DrawScanline, align 4
  %183 = add nsw i32 %181, %182
  %184 = load i32, i32* %14, align 4
  %185 = and i32 %183, %184
  %186 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 4
  store i32 %185, i32* %186, align 4
  %187 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = ashr i32 %188, 3
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [4 x i8], [4 x i8]* %10, i64 0, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = sext i8 %193 to i32
  %195 = shl i32 %189, %194
  %196 = getelementptr inbounds %struct.TileStrip, %struct.TileStrip* %11, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, %195
  store i32 %198, i32* %196, align 8
  %199 = load i32, i32* %5, align 4
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @DrawStrip(%struct.TileStrip* %11, i32 %199, i32 %200)
  br label %202

202:                                              ; preds = %174, %161
  br label %203

203:                                              ; preds = %202, %124
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DrawStripInterlace(%struct.TileStrip*) #2

declare dso_local i32 @DrawStripVSRam(%struct.TileStrip*, i32, i32) #2

declare dso_local i32 @DrawStrip(%struct.TileStrip*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
