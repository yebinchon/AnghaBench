; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_search_ntss.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_motion_estimation.c_ff_me_search_ntss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32, i32, i32)*, i64, i32, i32, i32, i32 }

@sqr1 = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_me_search_ntss(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  %30 = call i32 @FFMAX(i32 %23, i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = call i32 @FFMAX(i32 %33, i64 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @FFMIN(i64 %46, i32 %49)
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @FFMIN(i64 %56, i32 %59)
  store i32 %60, i32* %15, align 4
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ROUNDED_DIV(i64 %63, i32 2)
  store i32 %64, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32*, i32** %9, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32 (%struct.TYPE_4__*, i32, i32, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32, i32, i32)** %72, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 %73(%struct.TYPE_4__* %74, i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %17, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %4
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %5, align 4
  br label %225

83:                                               ; preds = %4
  br label %84

84:                                               ; preds = %220, %83
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %10, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  store i32 0, i32* %20, align 4
  br label %91

91:                                               ; preds = %118, %84
  %92 = load i32, i32* %20, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %121

94:                                               ; preds = %91
  %95 = load i32, i32* %10, align 4
  %96 = load i32**, i32*** @sqr1, align 8
  %97 = load i32, i32* %20, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %96, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %18, align 4
  %104 = mul nsw i32 %102, %103
  %105 = add nsw i32 %95, %104
  %106 = load i32, i32* %11, align 4
  %107 = load i32**, i32*** @sqr1, align 8
  %108 = load i32, i32* %20, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32*, i32** %107, i64 %109
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %18, align 4
  %115 = mul nsw i32 %113, %114
  %116 = add nsw i32 %106, %115
  %117 = call i32 @COST_P_MV(i32 %105, i32 %116)
  br label %118

118:                                              ; preds = %94
  %119 = load i32, i32* %20, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %20, align 4
  br label %91

121:                                              ; preds = %91
  %122 = load i32, i32* %19, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %217

124:                                              ; preds = %121
  store i32 0, i32* %20, align 4
  br label %125

125:                                              ; preds = %148, %124
  %126 = load i32, i32* %20, align 4
  %127 = icmp slt i32 %126, 8
  br i1 %127, label %128, label %151

128:                                              ; preds = %125
  %129 = load i32, i32* %10, align 4
  %130 = load i32**, i32*** @sqr1, align 8
  %131 = load i32, i32* %20, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32*, i32** %130, i64 %132
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %129, %136
  %138 = load i32, i32* %11, align 4
  %139 = load i32**, i32*** @sqr1, align 8
  %140 = load i32, i32* %20, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %139, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %138, %145
  %147 = call i32 @COST_P_MV(i32 %137, i32 %146)
  br label %148

148:                                              ; preds = %128
  %149 = load i32, i32* %20, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %20, align 4
  br label %125

151:                                              ; preds = %125
  %152 = load i32, i32* %10, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %152, %155
  br i1 %156, label %157, label %165

157:                                              ; preds = %151
  %158 = load i32, i32* %11, align 4
  %159 = load i32*, i32** %9, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %165

163:                                              ; preds = %157
  %164 = load i32, i32* %17, align 4
  store i32 %164, i32* %5, align 4
  br label %225

165:                                              ; preds = %157, %151
  %166 = load i32, i32* %10, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %166, %169
  %171 = call i32 @FFABS(i32 %170)
  %172 = icmp sle i32 %171, 1
  br i1 %172, label %173, label %216

173:                                              ; preds = %165
  %174 = load i32, i32* %11, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = sub nsw i32 %174, %177
  %179 = call i32 @FFABS(i32 %178)
  %180 = icmp sle i32 %179, 1
  br i1 %180, label %181, label %216

181:                                              ; preds = %173
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %10, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 1
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %11, align 4
  store i32 0, i32* %20, align 4
  br label %188

188:                                              ; preds = %211, %181
  %189 = load i32, i32* %20, align 4
  %190 = icmp slt i32 %189, 8
  br i1 %190, label %191, label %214

191:                                              ; preds = %188
  %192 = load i32, i32* %10, align 4
  %193 = load i32**, i32*** @sqr1, align 8
  %194 = load i32, i32* %20, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32*, i32** %193, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %192, %199
  %201 = load i32, i32* %11, align 4
  %202 = load i32**, i32*** @sqr1, align 8
  %203 = load i32, i32* %20, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %201, %208
  %210 = call i32 @COST_P_MV(i32 %200, i32 %209)
  br label %211

211:                                              ; preds = %191
  %212 = load i32, i32* %20, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %20, align 4
  br label %188

214:                                              ; preds = %188
  %215 = load i32, i32* %17, align 4
  store i32 %215, i32* %5, align 4
  br label %225

216:                                              ; preds = %173, %165
  store i32 0, i32* %19, align 4
  br label %217

217:                                              ; preds = %216, %121
  %218 = load i32, i32* %18, align 4
  %219 = ashr i32 %218, 1
  store i32 %219, i32* %18, align 4
  br label %220

220:                                              ; preds = %217
  %221 = load i32, i32* %18, align 4
  %222 = icmp sgt i32 %221, 0
  br i1 %222, label %84, label %223

223:                                              ; preds = %220
  %224 = load i32, i32* %17, align 4
  store i32 %224, i32* %5, align 4
  br label %225

225:                                              ; preds = %223, %214, %163, %81
  %226 = load i32, i32* %5, align 4
  ret i32 %226
}

declare dso_local i32 @FFMAX(i32, i64) #1

declare dso_local i32 @FFMIN(i64, i32) #1

declare dso_local i32 @ROUNDED_DIV(i64, i32) #1

declare dso_local i32 @COST_P_MV(i32, i32) #1

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
