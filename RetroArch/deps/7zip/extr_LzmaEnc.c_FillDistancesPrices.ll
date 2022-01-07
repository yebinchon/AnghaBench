; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_FillDistancesPrices.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_FillDistancesPrices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32**, i32, i32**, i64, i32, i32** }

@kNumFullDistances = common dso_local global i32 0, align 4
@kStartPosModelIndex = common dso_local global i32 0, align 4
@kNumLenToPosStates = common dso_local global i32 0, align 4
@kNumPosSlotBits = common dso_local global i32 0, align 4
@kEndPosModelIndex = common dso_local global i32 0, align 4
@kNumAlignBits = common dso_local global i32 0, align 4
@kNumBitPriceShiftBits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @FillDistancesPrices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FillDistancesPrices(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %14 = load i32, i32* @kNumFullDistances, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %3, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %18 = load i32, i32* @kStartPosModelIndex, align 4
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %54, %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @kNumFullDistances, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @GetPosSlot1(i32 %24)
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 1
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 1
  %32 = or i32 2, %31
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sub nsw i32 %41, 1
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %44, %45
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @RcTree_ReverseGetPrice(i32 %42, i32 %43, i32 %46, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %17, i64 %52
  store i32 %50, i32* %53, align 4
  br label %54

54:                                               ; preds = %23
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %19

57:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %172, %57
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @kNumLenToPosStates, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %175

62:                                               ; preds = %58
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 6
  %65 = load i32**, i32*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*, i32** %65, i64 %67
  %69 = load i32*, i32** %68, align 8
  store i32* %69, i32** %11, align 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  store i32* %76, i32** %12, align 8
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %95, %62
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %77
  %84 = load i32*, i32** %11, align 8
  %85 = load i32, i32* @kNumPosSlotBits, align 4
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @RcTree_GetPrice(i32* %84, i32 %85, i32 %86, i32 %89)
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  store i32 %90, i32* %94, align 4
  br label %95

95:                                               ; preds = %83
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %77

98:                                               ; preds = %77
  %99 = load i32, i32* @kEndPosModelIndex, align 4
  store i32 %99, i32* %10, align 4
  br label %100

100:                                              ; preds = %120, %98
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %100
  %107 = load i32, i32* %10, align 4
  %108 = ashr i32 %107, 1
  %109 = sub nsw i32 %108, 1
  %110 = load i32, i32* @kNumAlignBits, align 4
  %111 = sub nsw i32 %109, %110
  %112 = load i32, i32* @kNumBitPriceShiftBits, align 4
  %113 = shl i32 %111, %112
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %118, %113
  store i32 %119, i32* %117, align 4
  br label %120

120:                                              ; preds = %106
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %100

123:                                              ; preds = %100
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  store i32* %130, i32** %13, align 8
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %145, %123
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @kStartPosModelIndex, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32*, i32** %13, align 8
  %142 = load i32, i32* %5, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %140, i32* %144, align 4
  br label %145

145:                                              ; preds = %135
  %146 = load i32, i32* %5, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %5, align 4
  br label %131

148:                                              ; preds = %131
  br label %149

149:                                              ; preds = %168, %148
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @kNumFullDistances, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %149
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* %5, align 4
  %156 = call i64 @GetPosSlot1(i32 %155)
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %17, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %158, %162
  %164 = load i32*, i32** %13, align 8
  %165 = load i32, i32* %5, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %153
  %169 = load i32, i32* %5, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %5, align 4
  br label %149

171:                                              ; preds = %149
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %58

175:                                              ; preds = %58
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 4
  store i64 0, i64* %177, align 8
  %178 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %178)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @GetPosSlot1(i32) #2

declare dso_local i32 @RcTree_ReverseGetPrice(i32, i32, i32, i32) #2

declare dso_local i32 @RcTree_GetPrice(i32*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
