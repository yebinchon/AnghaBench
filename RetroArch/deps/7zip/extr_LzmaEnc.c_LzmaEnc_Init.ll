; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_Init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/7zip/extr_LzmaEnc.c_LzmaEnc_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, i32, i32, i32, i64, i64, i64, i8**, %struct.TYPE_6__, %struct.TYPE_5__, i8**, i8***, i8**, i8**, i8**, i8**, i8**, i8***, i8***, i32, i64*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@LZMA_NUM_REPS = common dso_local global i64 0, align 8
@kNumStates = common dso_local global i64 0, align 8
@LZMA_NUM_PB_STATES_MAX = common dso_local global i64 0, align 8
@kProbInitValue = common dso_local global i8* null, align 8
@kNumLenToPosStates = common dso_local global i64 0, align 8
@kNumPosSlotBits = common dso_local global i32 0, align 4
@kNumFullDistances = common dso_local global i64 0, align 8
@kEndPosModelIndex = common dso_local global i64 0, align 8
@kNumAlignBits = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @LzmaEnc_Init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 22
  store i64 0, i64* %10, align 8
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %21, %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @LZMA_NUM_REPS, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 21
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %15
  %22 = load i64, i64* %3, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %3, align 8
  br label %11

24:                                               ; preds = %11
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 20
  %27 = call i32 @RangeEnc_Init(i32* %26)
  store i64 0, i64* %3, align 8
  br label %28

28:                                               ; preds = %84, %24
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @kNumStates, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %87

32:                                               ; preds = %28
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %56, %32
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @LZMA_NUM_PB_STATES_MAX, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load i8*, i8** @kProbInitValue, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 19
  %41 = load i8***, i8**** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds i8**, i8*** %41, i64 %42
  %44 = load i8**, i8*** %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i8*, i8** %44, i64 %45
  store i8* %38, i8** %46, align 8
  %47 = load i8*, i8** @kProbInitValue, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 18
  %50 = load i8***, i8**** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds i8**, i8*** %50, i64 %51
  %53 = load i8**, i8*** %52, align 8
  %54 = load i64, i64* %4, align 8
  %55 = getelementptr inbounds i8*, i8** %53, i64 %54
  store i8* %47, i8** %55, align 8
  br label %56

56:                                               ; preds = %37
  %57 = load i64, i64* %4, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %4, align 8
  br label %33

59:                                               ; preds = %33
  %60 = load i8*, i8** @kProbInitValue, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 17
  %63 = load i8**, i8*** %62, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds i8*, i8** %63, i64 %64
  store i8* %60, i8** %65, align 8
  %66 = load i8*, i8** @kProbInitValue, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 16
  %69 = load i8**, i8*** %68, align 8
  %70 = load i64, i64* %3, align 8
  %71 = getelementptr inbounds i8*, i8** %69, i64 %70
  store i8* %66, i8** %71, align 8
  %72 = load i8*, i8** @kProbInitValue, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 15
  %75 = load i8**, i8*** %74, align 8
  %76 = load i64, i64* %3, align 8
  %77 = getelementptr inbounds i8*, i8** %75, i64 %76
  store i8* %72, i8** %77, align 8
  %78 = load i8*, i8** @kProbInitValue, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 14
  %81 = load i8**, i8*** %80, align 8
  %82 = load i64, i64* %3, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8* %78, i8** %83, align 8
  br label %84

84:                                               ; preds = %59
  %85 = load i64, i64* %3, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %3, align 8
  br label %28

87:                                               ; preds = %28
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  %95 = shl i64 768, %94
  store i64 %95, i64* %5, align 8
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 13
  %98 = load i8**, i8*** %97, align 8
  store i8** %98, i8*** %6, align 8
  store i64 0, i64* %3, align 8
  br label %99

99:                                               ; preds = %108, %87
  %100 = load i64, i64* %3, align 8
  %101 = load i64, i64* %5, align 8
  %102 = icmp ult i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %99
  %104 = load i8*, i8** @kProbInitValue, align 8
  %105 = load i8**, i8*** %6, align 8
  %106 = load i64, i64* %3, align 8
  %107 = getelementptr inbounds i8*, i8** %105, i64 %106
  store i8* %104, i8** %107, align 8
  br label %108

108:                                              ; preds = %103
  %109 = load i64, i64* %3, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %3, align 8
  br label %99

111:                                              ; preds = %99
  store i64 0, i64* %3, align 8
  br label %112

112:                                              ; preds = %138, %111
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* @kNumLenToPosStates, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %141

116:                                              ; preds = %112
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 12
  %119 = load i8***, i8**** %118, align 8
  %120 = load i64, i64* %3, align 8
  %121 = getelementptr inbounds i8**, i8*** %119, i64 %120
  %122 = load i8**, i8*** %121, align 8
  store i8** %122, i8*** %7, align 8
  store i64 0, i64* %8, align 8
  br label %123

123:                                              ; preds = %134, %116
  %124 = load i64, i64* %8, align 8
  %125 = load i32, i32* @kNumPosSlotBits, align 4
  %126 = shl i32 1, %125
  %127 = sext i32 %126 to i64
  %128 = icmp ult i64 %124, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %123
  %130 = load i8*, i8** @kProbInitValue, align 8
  %131 = load i8**, i8*** %7, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds i8*, i8** %131, i64 %132
  store i8* %130, i8** %133, align 8
  br label %134

134:                                              ; preds = %129
  %135 = load i64, i64* %8, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %8, align 8
  br label %123

137:                                              ; preds = %123
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %3, align 8
  br label %112

141:                                              ; preds = %112
  store i64 0, i64* %3, align 8
  br label %142

142:                                              ; preds = %155, %141
  %143 = load i64, i64* %3, align 8
  %144 = load i64, i64* @kNumFullDistances, align 8
  %145 = load i64, i64* @kEndPosModelIndex, align 8
  %146 = sub i64 %144, %145
  %147 = icmp ult i64 %143, %146
  br i1 %147, label %148, label %158

148:                                              ; preds = %142
  %149 = load i8*, i8** @kProbInitValue, align 8
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 11
  %152 = load i8**, i8*** %151, align 8
  %153 = load i64, i64* %3, align 8
  %154 = getelementptr inbounds i8*, i8** %152, i64 %153
  store i8* %149, i8** %154, align 8
  br label %155

155:                                              ; preds = %148
  %156 = load i64, i64* %3, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %3, align 8
  br label %142

158:                                              ; preds = %142
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 10
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = call i32 @LenEnc_Init(i32* %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = call i32 @LenEnc_Init(i32* %165)
  store i64 0, i64* %3, align 8
  br label %167

167:                                              ; preds = %180, %158
  %168 = load i64, i64* %3, align 8
  %169 = load i32, i32* @kNumAlignBits, align 4
  %170 = shl i32 1, %169
  %171 = sext i32 %170 to i64
  %172 = icmp ult i64 %168, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %167
  %174 = load i8*, i8** @kProbInitValue, align 8
  %175 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 8
  %177 = load i8**, i8*** %176, align 8
  %178 = load i64, i64* %3, align 8
  %179 = getelementptr inbounds i8*, i8** %177, i64 %178
  store i8* %174, i8** %179, align 8
  br label %180

180:                                              ; preds = %173
  %181 = load i64, i64* %3, align 8
  %182 = add i64 %181, 1
  store i64 %182, i64* %3, align 8
  br label %167

183:                                              ; preds = %167
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 7
  store i64 0, i64* %185, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 6
  store i64 0, i64* %187, align 8
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 5
  store i64 0, i64* %189, align 8
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = shl i32 1, %192
  %194 = sub nsw i32 %193, 1
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 2
  store i32 %194, i32* %196, align 8
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = trunc i64 %199 to i32
  %201 = shl i32 1, %200
  %202 = sub nsw i32 %201, 1
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  ret void
}

declare dso_local i32 @RangeEnc_Init(i32*) #1

declare dso_local i32 @LenEnc_Init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
