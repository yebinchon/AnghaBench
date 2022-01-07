; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_TransferPaintBuffer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_TransferPaintBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@dma = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@s_testsound = common dso_local global %struct.TYPE_4__* null, align 8
@s_paintedtime = common dso_local global i32 0, align 4
@paintbuffer = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_TransferPaintBuffer(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16*, align 8
  %13 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 3), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %9, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_testsound, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %52

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @s_paintedtime, align 4
  %23 = sub nsw i32 %21, %22
  store i32 %23, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %48, %20
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load i32, i32* @s_paintedtime, align 4
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %29, %30
  %32 = sitofp i32 %31 to double
  %33 = fmul double %32, 1.000000e-01
  %34 = fptosi double %33 to i32
  %35 = call i32 @sin(i32 %34)
  %36 = mul nsw i32 %35, 20000
  %37 = mul nsw i32 %36, 256
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @paintbuffer, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  store i32 %37, i32* %42, align 4
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** @paintbuffer, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %37, i32* %47, align 4
  br label %48

48:                                               ; preds = %28
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %24

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %1
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 8
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %57 = icmp eq i32 %56, 2
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load i64*, i64** %9, align 8
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @S_TransferStereo16(i64* %59, i32 %60)
  br label %158

62:                                               ; preds = %55, %52
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** @paintbuffer, align 8
  %64 = bitcast %struct.TYPE_5__* %63 to i32*
  store i32* %64, i32** %6, align 8
  %65 = load i32, i32* %2, align 4
  %66 = load i32, i32* @s_paintedtime, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %69 = mul nsw i32 %67, %68
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 2), align 8
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* @s_paintedtime, align 4
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %3, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 1), align 4
  %78 = sub nsw i32 3, %77
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 8
  %80 = icmp eq i32 %79, 16
  br i1 %80, label %81, label %116

81:                                               ; preds = %62
  %82 = load i64*, i64** %9, align 8
  %83 = bitcast i64* %82 to i16*
  store i16* %83, i16** %12, align 8
  br label %84

84:                                               ; preds = %104, %81
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %4, align 4
  %87 = icmp ne i32 %85, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %84
  %89 = load i32*, i32** %6, align 8
  %90 = load i32, i32* %89, align 4
  %91 = ashr i32 %90, 8
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %7, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32* %95, i32** %6, align 8
  %96 = load i32, i32* %8, align 4
  %97 = icmp sgt i32 %96, 32767
  br i1 %97, label %98, label %99

98:                                               ; preds = %88
  store i32 32767, i32* %8, align 4
  br label %104

99:                                               ; preds = %88
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, -32768
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 -32768, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %99
  br label %104

104:                                              ; preds = %103, %98
  %105 = load i32, i32* %8, align 4
  %106 = trunc i32 %105 to i16
  %107 = load i16*, i16** %12, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %107, i64 %109
  store i16 %106, i16* %110, align 2
  %111 = load i32, i32* %3, align 4
  %112 = add nsw i32 %111, 1
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %3, align 4
  br label %84

115:                                              ; preds = %84
  br label %157

116:                                              ; preds = %62
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @dma, i32 0, i32 0), align 8
  %118 = icmp eq i32 %117, 8
  br i1 %118, label %119, label %156

119:                                              ; preds = %116
  %120 = load i64*, i64** %9, align 8
  %121 = bitcast i64* %120 to i8*
  store i8* %121, i8** %13, align 8
  br label %122

122:                                              ; preds = %142, %119
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, -1
  store i32 %124, i32* %4, align 4
  %125 = icmp ne i32 %123, 0
  br i1 %125, label %126, label %155

126:                                              ; preds = %122
  %127 = load i32*, i32** %6, align 8
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 8
  store i32 %129, i32* %8, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = icmp sgt i32 %134, 32767
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  store i32 32767, i32* %8, align 4
  br label %142

137:                                              ; preds = %126
  %138 = load i32, i32* %8, align 4
  %139 = icmp slt i32 %138, -32768
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 -32768, i32* %8, align 4
  br label %141

141:                                              ; preds = %140, %137
  br label %142

142:                                              ; preds = %141, %136
  %143 = load i32, i32* %8, align 4
  %144 = ashr i32 %143, 8
  %145 = add nsw i32 %144, 128
  %146 = trunc i32 %145 to i8
  %147 = load i8*, i8** %13, align 8
  %148 = load i32, i32* %3, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  store i8 %146, i8* %150, align 1
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32, i32* %5, align 4
  %154 = and i32 %152, %153
  store i32 %154, i32* %3, align 4
  br label %122

155:                                              ; preds = %122
  br label %156

156:                                              ; preds = %155, %116
  br label %157

157:                                              ; preds = %156, %115
  br label %158

158:                                              ; preds = %157, %58
  ret void
}

declare dso_local i32 @sin(i32) #1

declare dso_local i32 @S_TransferStereo16(i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
