; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawWindowFull.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawWindowFull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PicoDraw2FB = common dso_local global i8* null, align 8
@LINE_WIDTH = common dso_local global i32 0, align 4
@START_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @DrawWindowFull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawWindowFull(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.PicoVideo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), %struct.PicoVideo** %7, align 8
  store i32 -1, i32* %12, align 4
  %21 = load i8*, i8** @PicoDraw2FB, align 8
  store i8* %21, i8** %14, align 8
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 16
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %5, align 4
  %25 = ashr i32 %24, 16
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %4, align 4
  %27 = shl i32 %26, 16
  %28 = ashr i32 %27, 16
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = shl i32 %29, 16
  %31 = ashr i32 %30, 16
  store i32 %31, i32* %5, align 4
  %32 = load %struct.PicoVideo*, %struct.PicoVideo** %7, align 8
  %33 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 12
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %3
  %40 = load %struct.PicoVideo*, %struct.PicoVideo** %7, align 8
  %41 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 60
  %46 = shl i32 %45, 9
  store i32 %46, i32* %8, align 4
  store i32 64, i32* %9, align 4
  br label %55

47:                                               ; preds = %3
  %48 = load %struct.PicoVideo*, %struct.PicoVideo** %7, align 8
  %49 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 62
  %54 = shl i32 %53, 9
  store i32 %54, i32* %8, align 4
  store i32 32, i32* %9, align 4
  br label %55

55:                                               ; preds = %47, %39
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %4, align 4
  %58 = mul nsw i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %15, align 4
  %64 = add nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = ashr i32 %68, 15
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %180

73:                                               ; preds = %55
  %74 = load i32, i32* @LINE_WIDTH, align 4
  %75 = mul nsw i32 8, %74
  %76 = add nsw i32 %75, 8
  %77 = load i8*, i8** %14, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %14, align 8
  %80 = load i32, i32* @LINE_WIDTH, align 4
  %81 = mul nsw i32 8, %80
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @START_ROW, align 4
  %84 = sub nsw i32 %82, %83
  %85 = mul nsw i32 %81, %84
  %86 = load i8*, i8** %14, align 8
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  store i8* %88, i8** %14, align 8
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %174, %73
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %180

94:                                               ; preds = %90
  %95 = load i32, i32* %15, align 4
  store i32 %95, i32* %11, align 4
  br label %96

96:                                               ; preds = %165, %94
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %16, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %168

100:                                              ; preds = %96
  store i32 0, i32* %19, align 4
  %101 = load i32*, i32** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %11, align 4
  %104 = add nsw i32 %102, %103
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %17, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %100
  br label %165

112:                                              ; preds = %100
  %113 = load i32, i32* %17, align 4
  %114 = and i32 %113, 2047
  %115 = shl i32 %114, 4
  store i32 %115, i32* %18, align 4
  %116 = load i32, i32* %17, align 4
  %117 = ashr i32 %116, 9
  %118 = and i32 %117, 48
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %20, align 1
  %120 = load i32, i32* %17, align 4
  %121 = ashr i32 %120, 11
  %122 = and i32 %121, 3
  switch i32 %122, label %159 [
    i32 0, label %123
    i32 1, label %132
    i32 2, label %141
    i32 3, label %150
  ]

123:                                              ; preds = %112
  %124 = load i8*, i8** %14, align 8
  %125 = load i32, i32* %11, align 4
  %126 = shl i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i32, i32* %18, align 4
  %130 = load i8, i8* %20, align 1
  %131 = call i32 @TileXnormYnorm(i8* %128, i32 %129, i8 zeroext %130)
  store i32 %131, i32* %19, align 4
  br label %159

132:                                              ; preds = %112
  %133 = load i8*, i8** %14, align 8
  %134 = load i32, i32* %11, align 4
  %135 = shl i32 %134, 3
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %133, i64 %136
  %138 = load i32, i32* %18, align 4
  %139 = load i8, i8* %20, align 1
  %140 = call i32 @TileXflipYnorm(i8* %137, i32 %138, i8 zeroext %139)
  store i32 %140, i32* %19, align 4
  br label %159

141:                                              ; preds = %112
  %142 = load i8*, i8** %14, align 8
  %143 = load i32, i32* %11, align 4
  %144 = shl i32 %143, 3
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %142, i64 %145
  %147 = load i32, i32* %18, align 4
  %148 = load i8, i8* %20, align 1
  %149 = call i32 @TileXnormYflip(i8* %146, i32 %147, i8 zeroext %148)
  store i32 %149, i32* %19, align 4
  br label %159

150:                                              ; preds = %112
  %151 = load i8*, i8** %14, align 8
  %152 = load i32, i32* %11, align 4
  %153 = shl i32 %152, 3
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %151, i64 %154
  %156 = load i32, i32* %18, align 4
  %157 = load i8, i8* %20, align 1
  %158 = call i32 @TileXflipYflip(i8* %155, i32 %156, i8 zeroext %157)
  store i32 %158, i32* %19, align 4
  br label %159

159:                                              ; preds = %112, %150, %141, %132, %123
  %160 = load i32, i32* %19, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %162, %159
  br label %165

165:                                              ; preds = %164, %111
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %96

168:                                              ; preds = %96
  %169 = load i32, i32* @LINE_WIDTH, align 4
  %170 = mul nsw i32 %169, 8
  %171 = load i8*, i8** %14, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %14, align 8
  br label %174

174:                                              ; preds = %168
  %175 = load i32, i32* %10, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %10, align 4
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %8, align 4
  %179 = add nsw i32 %178, %177
  store i32 %179, i32* %8, align 4
  br label %90

180:                                              ; preds = %72, %90
  ret void
}

declare dso_local i32 @TileXnormYnorm(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXflipYnorm(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXnormYflip(i8*, i32, i8 zeroext) #1

declare dso_local i32 @TileXflipYflip(i8*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
