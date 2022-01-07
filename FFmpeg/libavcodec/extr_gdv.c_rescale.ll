; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gdv.c_rescale.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gdv.c_rescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PREAMBLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*, i32, i32, i32, i32)* @rescale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rescale(%struct.TYPE_3__* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %6
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %246

38:                                               ; preds = %31, %6
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %38
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %84, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %87

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sub nsw i32 %49, %50
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %15, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @PREAMBLE_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* %9, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  store i32* %61, i32** %16, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32, i32* @PREAMBLE_SIZE, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %15, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = ashr i32 %66, %73
  %75 = load i32, i32* %9, align 4
  %76 = ashr i32 %75, 1
  %77 = mul nsw i32 %74, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %65, i64 %78
  store i32* %79, i32** %17, align 8
  %80 = load i32*, i32** %16, align 8
  %81 = load i32*, i32** %17, align 8
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @scaleup_rev(i32* %80, i32* %81, i32 %82)
  br label %84

84:                                               ; preds = %48
  %85 = load i32, i32* %13, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %13, align 4
  br label %44

87:                                               ; preds = %44
  br label %131

88:                                               ; preds = %38
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %130

93:                                               ; preds = %88
  store i32 0, i32* %13, align 4
  br label %94

94:                                               ; preds = %126, %93
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %129

98:                                               ; preds = %94
  %99 = load i32, i32* %10, align 4
  %100 = load i32, i32* %13, align 4
  %101 = sub nsw i32 %99, %100
  %102 = sub nsw i32 %101, 1
  store i32 %102, i32* %18, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* @PREAMBLE_SIZE, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %9, align 4
  %109 = mul nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32* %111, i32** %19, align 8
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* @PREAMBLE_SIZE, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %18, align 4
  %117 = ashr i32 %116, 1
  %118 = load i32, i32* %9, align 4
  %119 = mul nsw i32 %117, %118
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %115, i64 %120
  store i32* %121, i32** %20, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = load i32*, i32** %20, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @memcpy(i32* %122, i32* %123, i32 %124)
  br label %126

126:                                              ; preds = %98
  %127 = load i32, i32* %13, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %13, align 4
  br label %94

129:                                              ; preds = %94
  br label %130

130:                                              ; preds = %129, %88
  br label %131

131:                                              ; preds = %130, %87
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %173

134:                                              ; preds = %131
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %173

137:                                              ; preds = %134
  store i32 0, i32* %14, align 4
  br label %138

138:                                              ; preds = %169, %137
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %10, align 4
  %141 = ashr i32 %140, 1
  %142 = icmp slt i32 %139, %141
  br i1 %142, label %143, label %172

143:                                              ; preds = %138
  %144 = load i32*, i32** %8, align 8
  %145 = load i32, i32* @PREAMBLE_SIZE, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %9, align 4
  %150 = ashr i32 %149, 1
  %151 = mul nsw i32 %148, %150
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  store i32* %153, i32** %21, align 8
  %154 = load i32*, i32** %8, align 8
  %155 = load i32, i32* @PREAMBLE_SIZE, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %14, align 4
  %159 = mul nsw i32 %158, 2
  %160 = load i32, i32* %9, align 4
  %161 = mul nsw i32 %159, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %157, i64 %162
  store i32* %163, i32** %22, align 8
  %164 = load i32*, i32** %21, align 8
  %165 = load i32*, i32** %22, align 8
  %166 = load i32, i32* %9, align 4
  %167 = ashr i32 %166, 1
  %168 = call i32 @scaledown(i32* %164, i32* %165, i32 %167)
  br label %169

169:                                              ; preds = %143
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  br label %138

172:                                              ; preds = %138
  br label %239

173:                                              ; preds = %134, %131
  %174 = load i32, i32* %12, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %210

176:                                              ; preds = %173
  store i32 0, i32* %14, align 4
  br label %177

177:                                              ; preds = %206, %176
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %10, align 4
  %180 = ashr i32 %179, 1
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %177
  %183 = load i32*, i32** %8, align 8
  %184 = load i32, i32* @PREAMBLE_SIZE, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = load i32, i32* %14, align 4
  %188 = load i32, i32* %9, align 4
  %189 = mul nsw i32 %187, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %186, i64 %190
  store i32* %191, i32** %23, align 8
  %192 = load i32*, i32** %8, align 8
  %193 = load i32, i32* @PREAMBLE_SIZE, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %14, align 4
  %197 = mul nsw i32 %196, 2
  %198 = load i32, i32* %9, align 4
  %199 = mul nsw i32 %197, %198
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32, i32* %195, i64 %200
  store i32* %201, i32** %24, align 8
  %202 = load i32*, i32** %23, align 8
  %203 = load i32*, i32** %24, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @memcpy(i32* %202, i32* %203, i32 %204)
  br label %206

206:                                              ; preds = %182
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %177

209:                                              ; preds = %177
  br label %238

210:                                              ; preds = %173
  %211 = load i32, i32* %11, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %237

213:                                              ; preds = %210
  store i32 0, i32* %14, align 4
  br label %214

214:                                              ; preds = %233, %213
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %10, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %236

218:                                              ; preds = %214
  %219 = load i32*, i32** %8, align 8
  %220 = load i32, i32* @PREAMBLE_SIZE, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  %223 = load i32, i32* %14, align 4
  %224 = load i32, i32* %9, align 4
  %225 = mul nsw i32 %223, %224
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %222, i64 %226
  store i32* %227, i32** %25, align 8
  %228 = load i32*, i32** %25, align 8
  %229 = load i32*, i32** %25, align 8
  %230 = load i32, i32* %9, align 4
  %231 = ashr i32 %230, 1
  %232 = call i32 @scaledown(i32* %228, i32* %229, i32 %231)
  br label %233

233:                                              ; preds = %218
  %234 = load i32, i32* %14, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %14, align 4
  br label %214

236:                                              ; preds = %214
  br label %237

237:                                              ; preds = %236, %210
  br label %238

238:                                              ; preds = %237, %209
  br label %239

239:                                              ; preds = %238, %172
  %240 = load i32, i32* %11, align 4
  %241 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 4
  %243 = load i32, i32* %12, align 4
  %244 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 1
  store i32 %243, i32* %245, align 4
  br label %246

246:                                              ; preds = %239, %37
  ret void
}

declare dso_local i32 @scaleup_rev(i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @scaledown(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
