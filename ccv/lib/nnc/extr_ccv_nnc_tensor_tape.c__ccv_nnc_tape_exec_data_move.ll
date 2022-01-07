; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_tensor_tape.c__ccv_nnc_tape_exec_data_move.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_nnc_tensor_tape.c__ccv_nnc_tape_exec_data_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32*, i32, i32*, i32)* @_ccv_nnc_tape_exec_data_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_nnc_tape_exec_data_move(i32* %0, i32* %1, i32 %2, i32* %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
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
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @ccv_max(i32 %26, i32 %27)
  %29 = sub nsw i32 %28, 1
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %114

31:                                               ; preds = %7
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi i32 [ %41, %35 ], [ 0, %42 ]
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %43
  br label %55

55:                                               ; preds = %54, %48
  %56 = phi i32 [ %53, %48 ], [ 0, %54 ]
  store i32 %56, i32* %17, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ule i32* %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %80, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %17, align 4
  %67 = call i32 @ccv_max(i32 %65, i32 %66)
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %76, %64
  %69 = load i32, i32* %15, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 0, i32* %75, align 4
  br label %76

76:                                               ; preds = %71
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %15, align 4
  br label %68

79:                                               ; preds = %68
  br label %113

80:                                               ; preds = %55
  %81 = load i32, i32* %17, align 4
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %91, %80
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %16, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %15, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 0, i32* %90, align 4
  br label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %15, align 4
  %93 = add nsw i32 %92, -1
  store i32 %93, i32* %15, align 4
  br label %82

94:                                               ; preds = %82
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %15, align 4
  br label %96

96:                                               ; preds = %109, %94
  %97 = load i32, i32* %15, align 4
  %98 = icmp sge i32 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %9, align 8
  %106 = load i32, i32* %15, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %104, i32* %108, align 4
  br label %109

109:                                              ; preds = %99
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %15, align 4
  br label %96

112:                                              ; preds = %96
  br label %113

113:                                              ; preds = %112, %79
  br label %249

114:                                              ; preds = %7
  store i32 1, i32* %18, align 4
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %15, align 4
  br label %117

117:                                              ; preds = %129, %114
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %117
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %18, align 4
  %128 = mul nsw i32 %127, %126
  store i32 %128, i32* %18, align 4
  br label %129

129:                                              ; preds = %121
  %130 = load i32, i32* %15, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %15, align 4
  br label %117

132:                                              ; preds = %117
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %14, align 4
  %135 = call i32 @ccv_max(i32 %133, i32 %134)
  store i32 %135, i32* %19, align 4
  store i32 1, i32* %20, align 4
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %138

138:                                              ; preds = %173, %132
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* %19, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %176

142:                                              ; preds = %138
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load i32*, i32** %13, align 8
  %148 = load i32, i32* %15, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  br label %153

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %146
  %154 = phi i32 [ %151, %146 ], [ 1, %152 ]
  store i32 %154, i32* %21, align 4
  %155 = load i32, i32* %15, align 4
  %156 = load i32, i32* %12, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  br label %166

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %158
  %167 = phi i32 [ %164, %158 ], [ 1, %165 ]
  store i32 %167, i32* %22, align 4
  %168 = load i32, i32* %21, align 4
  %169 = load i32, i32* %22, align 4
  %170 = call i32 @ccv_max(i32 %168, i32 %169)
  %171 = load i32, i32* %20, align 4
  %172 = mul nsw i32 %171, %170
  store i32 %172, i32* %20, align 4
  br label %173

173:                                              ; preds = %166
  %174 = load i32, i32* %15, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %15, align 4
  br label %138

176:                                              ; preds = %138
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %187

180:                                              ; preds = %176
  %181 = load i32*, i32** %13, align 8
  %182 = load i32, i32* %10, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %181, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, 1
  br label %188

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187, %180
  %189 = phi i32 [ %186, %180 ], [ 0, %187 ]
  store i32 %189, i32* %23, align 4
  %190 = load i32, i32* %10, align 4
  %191 = load i32, i32* %12, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %188
  %194 = load i32*, i32** %11, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  br label %200

199:                                              ; preds = %188
  br label %200

200:                                              ; preds = %199, %193
  %201 = phi i32 [ %198, %193 ], [ 0, %199 ]
  store i32 %201, i32* %24, align 4
  %202 = load i32, i32* %23, align 4
  %203 = load i32, i32* %24, align 4
  %204 = call i32 @ccv_max(i32 %202, i32 %203)
  store i32 %204, i32* %15, align 4
  br label %205

205:                                              ; preds = %245, %200
  %206 = load i32, i32* %15, align 4
  %207 = icmp sge i32 %206, 0
  br i1 %207, label %208, label %248

208:                                              ; preds = %205
  %209 = load i32*, i32** %8, align 8
  %210 = icmp ne i32* %209, null
  br i1 %210, label %211, label %230

211:                                              ; preds = %208
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %14, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %230

215:                                              ; preds = %211
  %216 = load i32, i32* %15, align 4
  %217 = load i32*, i32** %13, align 8
  %218 = load i32, i32* %10, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = icmp slt i32 %216, %221
  br i1 %222, label %223, label %230

223:                                              ; preds = %215
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %15, align 4
  %226 = load i32, i32* %18, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %224, i64 %228
  br label %231

230:                                              ; preds = %215, %211, %208
  br label %231

231:                                              ; preds = %230, %223
  %232 = phi i32* [ %229, %223 ], [ null, %230 ]
  %233 = load i32*, i32** %9, align 8
  %234 = load i32, i32* %15, align 4
  %235 = load i32, i32* %20, align 4
  %236 = mul nsw i32 %234, %235
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %10, align 4
  %240 = add nsw i32 %239, 1
  %241 = load i32*, i32** %11, align 8
  %242 = load i32, i32* %12, align 4
  %243 = load i32*, i32** %13, align 8
  %244 = load i32, i32* %14, align 4
  call void @_ccv_nnc_tape_exec_data_move(i32* %232, i32* %238, i32 %240, i32* %241, i32 %242, i32* %243, i32 %244)
  br label %245

245:                                              ; preds = %231
  %246 = load i32, i32* %15, align 4
  %247 = add nsw i32 %246, -1
  store i32 %247, i32* %15, align 4
  br label %205

248:                                              ; preds = %205
  br label %249

249:                                              ; preds = %248, %113
  ret void
}

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
