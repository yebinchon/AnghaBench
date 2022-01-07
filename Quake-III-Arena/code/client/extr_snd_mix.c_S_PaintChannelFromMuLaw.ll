; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_PaintChannelFromMuLaw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_mix.c_S_PaintChannelFromMuLaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, float, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_8__* }

@snd_vol = common dso_local global i32 0, align 4
@paintbuffer = common dso_local global %struct.TYPE_10__* null, align 8
@SND_CHUNK_SIZE = common dso_local global i32 0, align 4
@mulawToShort = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @S_PaintChannelFromMuLaw(%struct.TYPE_11__* %0, %struct.TYPE_9__* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca float, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @snd_vol, align 4
  %23 = mul nsw i32 %21, %22
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @snd_vol, align 4
  %28 = mul nsw i32 %26, %27
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @paintbuffer, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %15, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  store %struct.TYPE_8__* %35, %struct.TYPE_8__** %16, align 8
  br label %36

36:                                               ; preds = %55, %5
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %39 = mul nsw i32 %38, 2
  %40 = icmp sge i32 %37, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  store %struct.TYPE_8__* %44, %struct.TYPE_8__** %16, align 8
  %45 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %46 = mul nsw i32 %45, 2
  %47 = load i32, i32* %9, align 4
  %48 = sub nsw i32 %47, %46
  store i32 %48, i32* %9, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %55, label %51

51:                                               ; preds = %41
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  store %struct.TYPE_8__* %54, %struct.TYPE_8__** %16, align 8
  br label %55

55:                                               ; preds = %51, %41
  br label %36

56:                                               ; preds = %36
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %126, label %61

61:                                               ; preds = %56
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i64*
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  store i64* %68, i64** %17, align 8
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %122, %61
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %125

73:                                               ; preds = %69
  %74 = load i32*, i32** @mulawToShort, align 8
  %75 = load i64*, i64** %17, align 8
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %12, align 4
  %81 = mul nsw i32 %79, %80
  %82 = ashr i32 %81, 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, %82
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* %13, align 4
  %92 = mul nsw i32 %90, %91
  %93 = ashr i32 %92, 8
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %93
  store i32 %100, i32* %98, align 4
  %101 = load i64*, i64** %17, align 8
  %102 = getelementptr inbounds i64, i64* %101, i32 1
  store i64* %102, i64** %17, align 8
  %103 = load i64*, i64** %17, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i64*
  %108 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %109 = mul nsw i32 %108, 2
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %107, i64 %110
  %112 = icmp eq i64* %103, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %73
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %115, align 8
  store %struct.TYPE_8__* %116, %struct.TYPE_8__** %16, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i64*
  store i64* %120, i64** %17, align 8
  br label %121

121:                                              ; preds = %113, %73
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %14, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %14, align 4
  br label %69

125:                                              ; preds = %69
  br label %199

126:                                              ; preds = %56
  %127 = load i32, i32* %9, align 4
  %128 = sitofp i32 %127 to float
  store float %128, float* %18, align 4
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to i64*
  store i64* %132, i64** %17, align 8
  store i32 0, i32* %14, align 4
  br label %133

133:                                              ; preds = %195, %126
  %134 = load i32, i32* %14, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %134, %135
  br i1 %136, label %137, label %198

137:                                              ; preds = %133
  %138 = load i32*, i32** @mulawToShort, align 8
  %139 = load i64*, i64** %17, align 8
  %140 = load float, float* %18, align 4
  %141 = fptosi float %140 to i32
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %139, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %138, i64 %144
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %11, align 4
  %147 = load float, float* %18, align 4
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 2
  %150 = load float, float* %149, align 4
  %151 = fadd float %147, %150
  store float %151, float* %18, align 4
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* %12, align 4
  %154 = mul nsw i32 %152, %153
  %155 = ashr i32 %154, 8
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %155
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* %13, align 4
  %165 = mul nsw i32 %163, %164
  %166 = ashr i32 %165, 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %168 = load i32, i32* %14, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %166
  store i32 %173, i32* %171, align 4
  %174 = load float, float* %18, align 4
  %175 = load i32, i32* @SND_CHUNK_SIZE, align 4
  %176 = mul nsw i32 %175, 2
  %177 = sitofp i32 %176 to float
  %178 = fcmp oge float %174, %177
  br i1 %178, label %179, label %194

179:                                              ; preds = %137
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %181, align 8
  store %struct.TYPE_8__* %182, %struct.TYPE_8__** %16, align 8
  %183 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %184 = icmp ne %struct.TYPE_8__* %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %179
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %187, align 8
  store %struct.TYPE_8__* %188, %struct.TYPE_8__** %16, align 8
  br label %189

189:                                              ; preds = %185, %179
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = inttoptr i64 %192 to i64*
  store i64* %193, i64** %17, align 8
  store float 0.000000e+00, float* %18, align 4
  br label %194

194:                                              ; preds = %189, %137
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %14, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %14, align 4
  br label %133

198:                                              ; preds = %133
  br label %199

199:                                              ; preds = %198, %125
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
