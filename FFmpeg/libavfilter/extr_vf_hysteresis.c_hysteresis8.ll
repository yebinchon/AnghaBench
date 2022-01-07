; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hysteresis.c_hysteresis8.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_hysteresis.c_hysteresis8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32*, i32*, i32*, i32, i32, i32, i32, i32)* @hysteresis8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hysteresis8(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
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
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %10, align 8
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %33

33:                                               ; preds = %210, %9
  %34 = load i32, i32* %21, align 4
  %35 = load i32, i32* %18, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %213

37:                                               ; preds = %33
  store i32 0, i32* %20, align 4
  br label %38

38:                                               ; preds = %206, %37
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %209

42:                                               ; preds = %38
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %14, align 4
  %47 = mul nsw i32 %45, %46
  %48 = add nsw i32 %44, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %19, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %205

54:                                               ; preds = %42
  %55 = load i32*, i32** %12, align 8
  %56 = load i32, i32* %20, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %15, align 4
  %59 = mul nsw i32 %57, %58
  %60 = add nsw i32 %56, %59
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %19, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %205

66:                                               ; preds = %54
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %68 = load i32, i32* %20, align 4
  %69 = load i32, i32* %21, align 4
  %70 = load i32, i32* %17, align 4
  %71 = call i32 @passed(%struct.TYPE_7__* %67, i32 %68, i32 %69, i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %205, label %73

73:                                               ; preds = %66
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* %21, align 4
  %77 = load i32, i32* %15, align 4
  %78 = mul nsw i32 %76, %77
  %79 = add nsw i32 %75, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %74, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %13, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load i32, i32* %16, align 4
  %87 = mul nsw i32 %85, %86
  %88 = add nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %83, i64 %89
  store i32 %82, i32* %90, align 4
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %17, align 4
  %95 = call i32 @push(%struct.TYPE_7__* %91, i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %203, %73
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %98 = call i32 @is_empty(%struct.TYPE_7__* %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br i1 %100, label %101, label %204

101:                                              ; preds = %96
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %103 = call i32 @pop(%struct.TYPE_7__* %102, i32* %22, i32* %23)
  %104 = load i32, i32* %22, align 4
  %105 = icmp sgt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %22, align 4
  %108 = sub nsw i32 %107, 1
  br label %110

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %106
  %111 = phi i32 [ %108, %106 ], [ 0, %109 ]
  store i32 %111, i32* %24, align 4
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %17, align 4
  %114 = sub nsw i32 %113, 1
  %115 = icmp slt i32 %112, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load i32, i32* %22, align 4
  %118 = add nsw i32 %117, 1
  br label %121

119:                                              ; preds = %110
  %120 = load i32, i32* %22, align 4
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i32 [ %118, %116 ], [ %120, %119 ]
  store i32 %122, i32* %25, align 4
  %123 = load i32, i32* %23, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i32, i32* %23, align 4
  %127 = sub nsw i32 %126, 1
  br label %129

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %125
  %130 = phi i32 [ %127, %125 ], [ 0, %128 ]
  store i32 %130, i32* %26, align 4
  %131 = load i32, i32* %23, align 4
  %132 = load i32, i32* %18, align 4
  %133 = sub nsw i32 %132, 1
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load i32, i32* %23, align 4
  %137 = add nsw i32 %136, 1
  br label %140

138:                                              ; preds = %129
  %139 = load i32, i32* %23, align 4
  br label %140

140:                                              ; preds = %138, %135
  %141 = phi i32 [ %137, %135 ], [ %139, %138 ]
  store i32 %141, i32* %27, align 4
  %142 = load i32, i32* %26, align 4
  store i32 %142, i32* %28, align 4
  br label %143

143:                                              ; preds = %200, %140
  %144 = load i32, i32* %28, align 4
  %145 = load i32, i32* %27, align 4
  %146 = icmp sle i32 %144, %145
  br i1 %146, label %147, label %203

147:                                              ; preds = %143
  %148 = load i32, i32* %24, align 4
  store i32 %148, i32* %29, align 4
  br label %149

149:                                              ; preds = %196, %147
  %150 = load i32, i32* %29, align 4
  %151 = load i32, i32* %25, align 4
  %152 = icmp sle i32 %150, %151
  br i1 %152, label %153, label %199

153:                                              ; preds = %149
  %154 = load i32*, i32** %12, align 8
  %155 = load i32, i32* %29, align 4
  %156 = load i32, i32* %28, align 4
  %157 = load i32, i32* %15, align 4
  %158 = mul nsw i32 %156, %157
  %159 = add nsw i32 %155, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %154, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %19, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %195

165:                                              ; preds = %153
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %167 = load i32, i32* %29, align 4
  %168 = load i32, i32* %28, align 4
  %169 = load i32, i32* %17, align 4
  %170 = call i32 @passed(%struct.TYPE_7__* %166, i32 %167, i32 %168, i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %195, label %172

172:                                              ; preds = %165
  %173 = load i32*, i32** %12, align 8
  %174 = load i32, i32* %29, align 4
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %174, %177
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %173, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %13, align 8
  %183 = load i32, i32* %29, align 4
  %184 = load i32, i32* %28, align 4
  %185 = load i32, i32* %16, align 4
  %186 = mul nsw i32 %184, %185
  %187 = add nsw i32 %183, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %182, i64 %188
  store i32 %181, i32* %189, align 4
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %191 = load i32, i32* %29, align 4
  %192 = load i32, i32* %28, align 4
  %193 = load i32, i32* %17, align 4
  %194 = call i32 @push(%struct.TYPE_7__* %190, i32 %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %172, %165, %153
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %29, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %29, align 4
  br label %149

199:                                              ; preds = %149
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %28, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %28, align 4
  br label %143

203:                                              ; preds = %143
  br label %96

204:                                              ; preds = %96
  br label %205

205:                                              ; preds = %204, %66, %54, %42
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %20, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %20, align 4
  br label %38

209:                                              ; preds = %38
  br label %210

210:                                              ; preds = %209
  %211 = load i32, i32* %21, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %21, align 4
  br label %33

213:                                              ; preds = %33
  ret void
}

declare dso_local i32 @passed(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @push(%struct.TYPE_7__*, i32, i32, i32) #1

declare dso_local i32 @is_empty(%struct.TYPE_7__*) #1

declare dso_local i32 @pop(%struct.TYPE_7__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
