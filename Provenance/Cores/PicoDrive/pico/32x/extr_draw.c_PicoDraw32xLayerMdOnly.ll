; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_draw.c_PicoDraw32xLayerMdOnly.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/32x/extr_draw.c_PicoDraw32xLayerMdOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32* }

@DrawLineDestBase = common dso_local global i64 0, align 8
@DrawLineDestIncrement = common dso_local global i32 0, align 4
@PicoDraw2FB = common dso_local global i8* null, align 8
@HighPal = common dso_local global i16* null, align 8
@Pico = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@DrawLineDest = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PicoDraw32xLayerMdOnly(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %13 = load i64, i64* @DrawLineDestBase, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @DrawLineDestIncrement, align 4
  %17 = mul nsw i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %14, i64 %18
  %20 = bitcast i8* %19 to i16*
  store i16* %20, i16** %6, align 8
  %21 = load i8*, i8** @PicoDraw2FB, align 8
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 328, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = getelementptr inbounds i8, i8* %25, i64 8
  store i8* %26, i8** %7, align 8
  %27 = load i16*, i16** @HighPal, align 8
  store i16* %27, i16** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 320, i32* %10, align 4
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 1, i32 0), align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 12
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 1
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %2
  store i32 32, i32* %9, align 4
  store i32 256, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico, i32 0, i32 0, i32 0), align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = call i32 (...) @PicoDrawUpdateHighPal()
  br label %39

39:                                               ; preds = %37, %34
  %40 = load i32, i32* %9, align 4
  %41 = load i16*, i16** %6, align 8
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i16, i16* %41, i64 %42
  store i16* %43, i16** %6, align 8
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %137, %39
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %140

48:                                               ; preds = %44
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %52, %53
  %55 = call i32 @PicoScan32xBegin(i32 %54)
  %56 = load i16*, i16** @DrawLineDest, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i16, i16* %56, i64 %58
  store i16* %59, i16** %6, align 8
  br label %60

60:                                               ; preds = %51, %48
  store i32 0, i32* %12, align 4
  br label %61

61:                                               ; preds = %114, %60
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %117

65:                                               ; preds = %61
  %66 = load i16*, i16** %8, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  %69 = load i8, i8* %67, align 1
  %70 = zext i8 %69 to i64
  %71 = getelementptr inbounds i16, i16* %66, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = load i16*, i16** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 0
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i16, i16* %73, i64 %76
  store i16 %72, i16* %77, align 2
  %78 = load i16*, i16** %8, align 8
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  %81 = load i8, i8* %79, align 1
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds i16, i16* %78, i64 %82
  %84 = load i16, i16* %83, align 2
  %85 = load i16*, i16** %6, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i16, i16* %85, i64 %88
  store i16 %84, i16* %89, align 2
  %90 = load i16*, i16** %8, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %7, align 8
  %93 = load i8, i8* %91, align 1
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds i16, i16* %90, i64 %94
  %96 = load i16, i16* %95, align 2
  %97 = load i16*, i16** %6, align 8
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 2
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i16, i16* %97, i64 %100
  store i16 %96, i16* %101, align 2
  %102 = load i16*, i16** %8, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %7, align 8
  %105 = load i8, i8* %103, align 1
  %106 = zext i8 %105 to i64
  %107 = getelementptr inbounds i16, i16* %102, i64 %106
  %108 = load i16, i16* %107, align 2
  %109 = load i16*, i16** %6, align 8
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i16, i16* %109, i64 %112
  store i16 %108, i16* %113, align 2
  br label %114

114:                                              ; preds = %65
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 4
  store i32 %116, i32* %12, align 4
  br label %61

117:                                              ; preds = %61
  %118 = load i16*, i16** %6, align 8
  %119 = bitcast i16* %118 to i8*
  %120 = load i32, i32* @DrawLineDestIncrement, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = bitcast i8* %122 to i16*
  store i16* %123, i16** %6, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sub nsw i32 328, %124
  %126 = load i8*, i8** %7, align 8
  %127 = sext i32 %125 to i64
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8* %128, i8** %7, align 8
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %117
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %3, align 4
  %134 = add nsw i32 %132, %133
  %135 = call i32 @PicoScan32xEnd(i32 %134)
  br label %136

136:                                              ; preds = %131, %117
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %44

140:                                              ; preds = %44
  ret void
}

declare dso_local i32 @PicoScan32xEnd(i32) #1

declare dso_local i32 @PicoDrawUpdateHighPal(...) #1

declare dso_local i32 @PicoScan32xBegin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
