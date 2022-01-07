; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawAllSpritesFull.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_draw2.c_DrawAllSpritesFull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.PicoVideo }
%struct.PicoVideo = type { i32* }

@Pico = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@START_ROW = common dso_local global i32 0, align 4
@END_ROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @DrawAllSpritesFull to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DrawAllSpritesFull(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.PicoVideo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [80 x i32*], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.PicoVideo* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 1), %struct.PicoVideo** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* @START_ROW, align 4
  %22 = mul nsw i32 %21, 8
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @END_ROW, align 4
  %24 = mul nsw i32 %23, 8
  store i32 %24, i32* %13, align 4
  %25 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %26 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 5
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 127
  store i32 %30, i32* %6, align 4
  %31 = load %struct.PicoVideo*, %struct.PicoVideo** %5, align 8
  %32 = getelementptr inbounds %struct.PicoVideo, %struct.PicoVideo* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 12
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, 126
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %2
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 %42, 8
  store i32 %43, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %195, %41
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 80
  br i1 %46, label %47, label %198

47:                                               ; preds = %44
  store i32* null, i32** %14, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Pico, i32 0, i32 0), align 8
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 %50, 2
  %52 = add nsw i32 %49, %51
  %53 = and i32 %52, 32764
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %48, %54
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %14, align 8
  %57 = load i32*, i32** %14, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = and i32 %60, 511
  %62 = sub nsw i32 %61, 128
  store i32 %62, i32* %18, align 4
  %63 = load i32, i32* %15, align 4
  %64 = ashr i32 %63, 24
  %65 = and i32 %64, 3
  %66 = add nsw i32 %65, 1
  %67 = shl i32 %66, 3
  store i32 %67, i32* %19, align 4
  %68 = load i32, i32* %18, align 4
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %47
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %73, %47
  br label %187

78:                                               ; preds = %73
  %79 = load i32*, i32** %14, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = ashr i32 %82, 16
  %84 = and i32 %83, 511
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %164, label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %18, align 4
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %88, %89
  store i32 %90, i32* %20, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %133

93:                                               ; preds = %87
  %94 = load i32, i32* %7, align 4
  %95 = ashr i32 %94, 16
  %96 = add nsw i32 %95, 1
  %97 = load i32, i32* %18, align 4
  %98 = icmp sge i32 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %93
  %100 = load i32, i32* %7, align 4
  %101 = ashr i32 %100, 16
  %102 = load i32, i32* %20, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, 65535
  %107 = load i32, i32* %18, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, 65535
  store i32 %111, i32* %18, align 4
  br label %132

112:                                              ; preds = %104, %99, %93
  %113 = load i32, i32* %7, align 4
  %114 = and i32 %113, 65535
  %115 = sub nsw i32 %114, 1
  %116 = load i32, i32* %20, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  %120 = and i32 %119, 65535
  %121 = load i32, i32* %18, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %131

123:                                              ; preds = %118
  %124 = load i32, i32* %7, align 4
  %125 = ashr i32 %124, 16
  %126 = load i32, i32* %20, align 4
  %127 = icmp sgt i32 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* %7, align 4
  %130 = ashr i32 %129, 16
  store i32 %130, i32* %20, align 4
  br label %131

131:                                              ; preds = %128, %123, %118, %112
  br label %132

132:                                              ; preds = %131, %109
  br label %133

133:                                              ; preds = %132, %87
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp sle i32 %134, %135
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load i32, i32* %20, align 4
  %139 = add nsw i32 %138, 1
  %140 = load i32, i32* %12, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %20, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %163

145:                                              ; preds = %137, %133
  %146 = load i32, i32* %20, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp sge i32 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load i32, i32* %18, align 4
  %151 = sub nsw i32 %150, 1
  %152 = load i32, i32* %13, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %149
  %155 = load i32, i32* %18, align 4
  %156 = sub nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %162

157:                                              ; preds = %149, %145
  %158 = load i32, i32* %18, align 4
  %159 = load i32, i32* %20, align 4
  %160 = shl i32 %159, 16
  %161 = or i32 %158, %160
  store i32 %161, i32* %7, align 4
  br label %162

162:                                              ; preds = %157, %154
  br label %163

163:                                              ; preds = %162, %142
  br label %187

164:                                              ; preds = %78
  %165 = load i32, i32* %16, align 4
  %166 = ashr i32 %165, 15
  %167 = and i32 %166, 1
  %168 = load i32, i32* %3, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  br label %187

171:                                              ; preds = %164
  %172 = load i32, i32* %17, align 4
  %173 = sub nsw i32 %172, 120
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp sle i32 %174, -24
  br i1 %175, label %180, label %176

176:                                              ; preds = %171
  %177 = load i32, i32* %17, align 4
  %178 = load i32, i32* %4, align 4
  %179 = icmp sge i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176, %171
  br label %187

181:                                              ; preds = %176
  %182 = load i32*, i32** %14, align 8
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %8, align 4
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds [80 x i32*], [80 x i32*]* %11, i64 0, i64 %185
  store i32* %182, i32** %186, align 8
  br label %187

187:                                              ; preds = %181, %180, %170, %163, %77
  %188 = load i32, i32* %15, align 4
  %189 = ashr i32 %188, 16
  %190 = and i32 %189, 127
  store i32 %190, i32* %10, align 4
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %187
  br label %198

194:                                              ; preds = %187
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %44

198:                                              ; preds = %193, %44
  %199 = load i32, i32* %8, align 4
  %200 = add nsw i32 %199, -1
  store i32 %200, i32* %8, align 4
  br label %201

201:                                              ; preds = %210, %198
  %202 = load i32, i32* %8, align 4
  %203 = icmp sge i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %201
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [80 x i32*], [80 x i32*]* %11, i64 0, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = call i32 @DrawSpriteFull(i32* %208)
  br label %210

210:                                              ; preds = %204
  %211 = load i32, i32* %8, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %8, align 4
  br label %201

213:                                              ; preds = %201
  ret void
}

declare dso_local i32 @DrawSpriteFull(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
