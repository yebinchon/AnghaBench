; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9_superframe_bsf.c_merge_superframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9_superframe_bsf.c_merge_superframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__**, i32, %struct.TYPE_6__*)* @merge_superframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge_superframe(%struct.TYPE_6__** %0, i32 %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_6__** %0, %struct.TYPE_6__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @stats(%struct.TYPE_6__** %16, i32 %17, i32* %8, i32* %9)
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @av_log2(i32 %19)
  %21 = ashr i32 %20, 3
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = shl i32 %22, 3
  %24 = add i32 192, %23
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 1
  %27 = add i32 %24, %26
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %28, 2
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 1
  %32 = load i32, i32* %6, align 4
  %33 = mul i32 %31, %32
  %34 = add i32 %29, %33
  store i32 %34, i32* %13, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 @av_new_packet(%struct.TYPE_6__* %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %3
  %41 = load i32, i32* %15, align 4
  store i32 %41, i32* %4, align 4
  br label %204

42:                                               ; preds = %3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64*, i64** %44, align 8
  store i64* %45, i64** %14, align 8
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %76, %42
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %79

50:                                               ; preds = %46
  %51 = load i64*, i64** %14, align 8
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %53 = load i32, i32* %12, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %52, i64 %54
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %60 = load i32, i32* %12, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %59, i64 %61
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @memcpy(i64* %51, i64* %58, i64 %65)
  %67 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %67, i64 %69
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64*, i64** %14, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 %73
  store i64* %75, i64** %14, align 8
  br label %76

76:                                               ; preds = %50
  %77 = load i32, i32* %12, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %12, align 4
  br label %46

79:                                               ; preds = %46
  %80 = load i32, i32* %11, align 4
  %81 = zext i32 %80 to i64
  %82 = load i64*, i64** %14, align 8
  %83 = getelementptr inbounds i64, i64* %82, i32 1
  store i64* %83, i64** %14, align 8
  store i64 %81, i64* %82, align 8
  %84 = load i32, i32* %10, align 4
  switch i32 %84, label %188 [
    i32 0, label %85
    i32 1, label %110
    i32 2, label %136
    i32 3, label %162
  ]

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %105, %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %87
  %92 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %92, i64 %94
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64*, i64** %14, align 8
  store i64 %98, i64* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add i32 %100, 1
  %102 = load i64*, i64** %14, align 8
  %103 = zext i32 %101 to i64
  %104 = getelementptr inbounds i64, i64* %102, i64 %103
  store i64* %104, i64** %14, align 8
  br label %105

105:                                              ; preds = %91
  %106 = load i32, i32* %12, align 4
  %107 = add i32 %106, 1
  store i32 %107, i32* %12, align 4
  br label %87

108:                                              ; preds = %87
  br label %109

109:                                              ; preds = %108
  br label %188

110:                                              ; preds = %79
  br label %111

111:                                              ; preds = %110
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %131, %111
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %112
  %117 = load i64*, i64** %14, align 8
  %118 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %119 = load i32, i32* %12, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %118, i64 %120
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = call i64 @AV_WL16(i64* %117, i64 %124)
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %126, 1
  %128 = load i64*, i64** %14, align 8
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  store i64* %130, i64** %14, align 8
  br label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %12, align 4
  %133 = add i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %112

134:                                              ; preds = %112
  br label %135

135:                                              ; preds = %134
  br label %188

136:                                              ; preds = %79
  br label %137

137:                                              ; preds = %136
  store i32 0, i32* %12, align 4
  br label %138

138:                                              ; preds = %157, %137
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ult i32 %139, %140
  br i1 %141, label %142, label %160

142:                                              ; preds = %138
  %143 = load i64*, i64** %14, align 8
  %144 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %145 = load i32, i32* %12, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %144, i64 %146
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @AV_WL24(i64* %143, i64 %150)
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, 1
  %154 = load i64*, i64** %14, align 8
  %155 = zext i32 %153 to i64
  %156 = getelementptr inbounds i64, i64* %154, i64 %155
  store i64* %156, i64** %14, align 8
  br label %157

157:                                              ; preds = %142
  %158 = load i32, i32* %12, align 4
  %159 = add i32 %158, 1
  store i32 %159, i32* %12, align 4
  br label %138

160:                                              ; preds = %138
  br label %161

161:                                              ; preds = %160
  br label %188

162:                                              ; preds = %79
  br label %163

163:                                              ; preds = %162
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %183, %163
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp ult i32 %165, %166
  br i1 %167, label %168, label %186

168:                                              ; preds = %164
  %169 = load i64*, i64** %14, align 8
  %170 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  %171 = load i32, i32* %12, align 4
  %172 = zext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %170, i64 %172
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = call i64 @AV_WL32(i64* %169, i64 %176)
  %178 = load i32, i32* %10, align 4
  %179 = add i32 %178, 1
  %180 = load i64*, i64** %14, align 8
  %181 = zext i32 %179 to i64
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  store i64* %182, i64** %14, align 8
  br label %183

183:                                              ; preds = %168
  %184 = load i32, i32* %12, align 4
  %185 = add i32 %184, 1
  store i32 %185, i32* %12, align 4
  br label %164

186:                                              ; preds = %164
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %79, %187, %161, %135, %109
  %189 = load i32, i32* %11, align 4
  %190 = zext i32 %189 to i64
  %191 = load i64*, i64** %14, align 8
  %192 = getelementptr inbounds i64, i64* %191, i32 1
  store i64* %192, i64** %14, align 8
  store i64 %190, i64* %191, align 8
  %193 = load i64*, i64** %14, align 8
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 0
  %196 = load i64*, i64** %195, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i64, i64* %196, i64 %199
  %201 = icmp eq i64* %193, %200
  %202 = zext i1 %201 to i32
  %203 = call i32 @av_assert0(i32 %202)
  store i32 0, i32* %4, align 4
  br label %204

204:                                              ; preds = %188, %40
  %205 = load i32, i32* %4, align 4
  ret i32 %205
}

declare dso_local i32 @stats(%struct.TYPE_6__**, i32, i32*, i32*) #1

declare dso_local i32 @av_log2(i32) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i64 @AV_WL16(i64*, i64) #1

declare dso_local i64 @AV_WL24(i64*, i64) #1

declare dso_local i64 @AV_WL32(i64*, i64) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
