; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_adaptive45.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_decode_adaptive45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32*, i32*, i32*, i32*, i32)* @decode_adaptive45 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_adaptive45(%struct.TYPE_5__* %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %26 = load i32*, i32** %14, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %20, align 4
  %28 = load i32*, i32** %14, align 8
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %21, align 4
  store i32 0, i32* %19, align 4
  br label %30

30:                                               ; preds = %36, %7
  %31 = load i32, i32* %20, align 4
  %32 = icmp sle i32 %31, 2048
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %20, align 4
  %35 = shl i32 %34, 1
  store i32 %35, i32* %20, align 4
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %19, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %19, align 4
  br label %30

39:                                               ; preds = %30
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load i32, i32* %10, align 4
  %45 = ashr i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %18, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %14, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %20, align 4
  %55 = sub nsw i32 4096, %54
  %56 = load i32, i32* %19, align 4
  %57 = ashr i32 %55, %56
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %18, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, %57
  store i32 %65, i32* %63, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %20, align 4
  br label %66

66:                                               ; preds = %210, %39
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %213

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %16, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %23, align 4
  %80 = load i32, i32* %20, align 4
  %81 = load i32, i32* %23, align 4
  %82 = add nsw i32 %80, %81
  %83 = load i32, i32* %17, align 4
  %84 = sub nsw i32 %82, %83
  store i32 %84, i32* %24, align 4
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %16, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %25, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %24, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %126

95:                                               ; preds = %72
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* %20, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* %17, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32*, i32** %11, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %19, align 4
  %104 = shl i32 %102, %103
  %105 = load i32*, i32** %13, align 8
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* %19, align 4
  %107 = shl i32 1, %106
  %108 = load i32*, i32** %12, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32*, i32** %14, align 8
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %18, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32, i32* %113, i64 %115
  store i32 %110, i32* %116, align 4
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %118 = load i32, i32* %16, align 4
  %119 = load i32*, i32** %11, align 8
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @add_symbol(%struct.TYPE_5__* %117, i32 %118, i32 %120, i32* %21, i32 %121)
  store i32 %122, i32* %22, align 4
  %123 = load i32, i32* %21, align 4
  %124 = load i32*, i32** %14, align 8
  store i32 %123, i32* %124, align 4
  %125 = load i32, i32* %22, align 4
  store i32 %125, i32* %8, align 4
  br label %244

126:                                              ; preds = %72
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %25, align 4
  %129 = add nsw i32 %127, %128
  %130 = load i32, i32* %10, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %200

132:                                              ; preds = %126
  %133 = load i32, i32* %23, align 4
  %134 = load i32*, i32** %11, align 8
  store i32 %133, i32* %134, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %17, align 4
  %138 = sub nsw i32 %136, %137
  %139 = load i32, i32* %20, align 4
  %140 = add nsw i32 %139, %138
  store i32 %140, i32* %20, align 4
  %141 = load i32, i32* %20, align 4
  %142 = load i32, i32* %19, align 4
  %143 = shl i32 %141, %142
  %144 = load i32*, i32** %13, align 8
  store i32 %143, i32* %144, align 4
  %145 = load i32, i32* %25, align 4
  %146 = load i32, i32* %19, align 4
  %147 = shl i32 %145, %146
  %148 = load i32*, i32** %12, align 8
  store i32 %147, i32* %148, align 4
  %149 = load i32*, i32** %14, align 8
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 50
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* %21, align 4
  %166 = add nsw i32 %165, 50
  store i32 %166, i32* %21, align 4
  %167 = load i32, i32* %16, align 4
  %168 = load i32, i32* %18, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %190

170:                                              ; preds = %132
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* %18, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = icmp sgt i32 %177, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %170
  %187 = load i32, i32* %16, align 4
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 8
  br label %190

190:                                              ; preds = %186, %170, %132
  %191 = load i32, i32* %21, align 4
  %192 = add nsw i32 %191, 50
  %193 = icmp sgt i32 %192, 4096
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %196 = call i32 @rescale(%struct.TYPE_5__* %195, i32* %21)
  br label %197

197:                                              ; preds = %194, %190
  %198 = load i32, i32* %21, align 4
  %199 = load i32*, i32** %14, align 8
  store i32 %198, i32* %199, align 4
  store i32 1, i32* %8, align 4
  br label %244

200:                                              ; preds = %126
  %201 = load i32, i32* %23, align 4
  %202 = load i32, i32* %17, align 4
  %203 = sub nsw i32 %201, %202
  %204 = load i32, i32* %25, align 4
  %205 = add nsw i32 %203, %204
  %206 = load i32, i32* %20, align 4
  %207 = add nsw i32 %206, %205
  store i32 %207, i32* %20, align 4
  %208 = load i32, i32* %23, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %17, align 4
  br label %210

210:                                              ; preds = %200
  %211 = load i32, i32* %16, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %16, align 4
  br label %66

213:                                              ; preds = %66
  %214 = load i32*, i32** %14, align 8
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %18, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  store i32 %215, i32* %221, align 4
  %222 = load i32, i32* %17, align 4
  %223 = load i32, i32* %10, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* %20, align 4
  %226 = sub nsw i32 %224, %225
  %227 = load i32*, i32** %11, align 8
  store i32 %226, i32* %227, align 4
  %228 = load i32, i32* %10, align 4
  %229 = load i32, i32* %19, align 4
  %230 = shl i32 %228, %229
  %231 = load i32*, i32** %13, align 8
  store i32 %230, i32* %231, align 4
  %232 = load i32, i32* %19, align 4
  %233 = shl i32 1, %232
  %234 = load i32*, i32** %12, align 8
  store i32 %233, i32* %234, align 4
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %236 = load i32, i32* %16, align 4
  %237 = load i32*, i32** %11, align 8
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %15, align 4
  %240 = call i32 @add_symbol(%struct.TYPE_5__* %235, i32 %236, i32 %238, i32* %21, i32 %239)
  store i32 %240, i32* %22, align 4
  %241 = load i32, i32* %21, align 4
  %242 = load i32*, i32** %14, align 8
  store i32 %241, i32* %242, align 4
  %243 = load i32, i32* %22, align 4
  store i32 %243, i32* %8, align 4
  br label %244

244:                                              ; preds = %213, %197, %95
  %245 = load i32, i32* %8, align 4
  ret i32 %245
}

declare dso_local i32 @add_symbol(%struct.TYPE_5__*, i32, i32, i32*, i32) #1

declare dso_local i32 @rescale(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
