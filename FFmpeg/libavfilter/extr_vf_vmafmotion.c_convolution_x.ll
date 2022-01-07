; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vmafmotion.c_convolution_x.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vmafmotion.c_convolution_x.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BIT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*, i32*, i32, i32, i32, i32)* @convolution_x to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @convolution_x(i32* %0, i32 %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %29 = load i32, i32* %15, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %16, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %10, align 4
  %38 = sdiv i32 %37, 2
  store i32 %38, i32* %19, align 4
  %39 = load i32, i32* %19, align 4
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %19, align 4
  %43 = sub nsw i32 %41, %42
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %21, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %22, align 4
  br label %45

45:                                               ; preds = %228, %8
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* %14, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %231

49:                                               ; preds = %45
  store i32 0, i32* %23, align 4
  br label %50

50:                                               ; preds = %109, %49
  %51 = load i32, i32* %23, align 4
  %52 = load i32, i32* %20, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %112

54:                                               ; preds = %50
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %55

55:                                               ; preds = %94, %54
  %56 = load i32, i32* %24, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %97

59:                                               ; preds = %55
  %60 = load i32, i32* %23, align 4
  %61 = load i32, i32* %19, align 4
  %62 = sub nsw i32 %60, %61
  %63 = load i32, i32* %24, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 @FFABS(i32 %64)
  store i32 %65, i32* %26, align 4
  %66 = load i32, i32* %26, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %59
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %26, align 4
  %72 = load i32, i32* %13, align 4
  %73 = sub nsw i32 %71, %72
  %74 = add nsw i32 %73, 1
  %75 = sub nsw i32 %70, %74
  store i32 %75, i32* %26, align 4
  br label %76

76:                                               ; preds = %69, %59
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %24, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* %22, align 4
  %84 = load i32, i32* %17, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load i32, i32* %26, align 4
  %87 = add nsw i32 %85, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %82, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %81, %90
  %92 = load i32, i32* %25, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %25, align 4
  br label %94

94:                                               ; preds = %76
  %95 = load i32, i32* %24, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %24, align 4
  br label %55

97:                                               ; preds = %55
  %98 = load i32, i32* %25, align 4
  %99 = load i32, i32* @BIT_SHIFT, align 4
  %100 = ashr i32 %98, %99
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %22, align 4
  %103 = load i32, i32* %18, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load i32, i32* %23, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %101, i64 %107
  store i32 %100, i32* %108, align 4
  br label %109

109:                                              ; preds = %97
  %110 = load i32, i32* %23, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %23, align 4
  br label %50

112:                                              ; preds = %50
  %113 = load i32, i32* %20, align 4
  store i32 %113, i32* %23, align 4
  br label %114

114:                                              ; preds = %160, %112
  %115 = load i32, i32* %23, align 4
  %116 = load i32, i32* %21, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %163

118:                                              ; preds = %114
  store i32 0, i32* %27, align 4
  store i32 0, i32* %24, align 4
  br label %119

119:                                              ; preds = %145, %118
  %120 = load i32, i32* %24, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %148

123:                                              ; preds = %119
  %124 = load i32*, i32** %9, align 8
  %125 = load i32, i32* %24, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %11, align 8
  %130 = load i32, i32* %22, align 4
  %131 = load i32, i32* %17, align 4
  %132 = mul nsw i32 %130, %131
  %133 = load i32, i32* %23, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %19, align 4
  %136 = sub nsw i32 %134, %135
  %137 = load i32, i32* %24, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %129, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %128, %141
  %143 = load i32, i32* %27, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %27, align 4
  br label %145

145:                                              ; preds = %123
  %146 = load i32, i32* %24, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %24, align 4
  br label %119

148:                                              ; preds = %119
  %149 = load i32, i32* %27, align 4
  %150 = load i32, i32* @BIT_SHIFT, align 4
  %151 = ashr i32 %149, %150
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* %18, align 4
  %155 = mul nsw i32 %153, %154
  %156 = load i32, i32* %23, align 4
  %157 = add nsw i32 %155, %156
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %152, i64 %158
  store i32 %151, i32* %159, align 4
  br label %160

160:                                              ; preds = %148
  %161 = load i32, i32* %23, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %23, align 4
  br label %114

163:                                              ; preds = %114
  %164 = load i32, i32* %21, align 4
  store i32 %164, i32* %23, align 4
  br label %165

165:                                              ; preds = %224, %163
  %166 = load i32, i32* %23, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %227

169:                                              ; preds = %165
  store i32 0, i32* %25, align 4
  store i32 0, i32* %24, align 4
  br label %170

170:                                              ; preds = %209, %169
  %171 = load i32, i32* %24, align 4
  %172 = load i32, i32* %10, align 4
  %173 = icmp slt i32 %171, %172
  br i1 %173, label %174, label %212

174:                                              ; preds = %170
  %175 = load i32, i32* %23, align 4
  %176 = load i32, i32* %19, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i32, i32* %24, align 4
  %179 = add nsw i32 %177, %178
  %180 = call i32 @FFABS(i32 %179)
  store i32 %180, i32* %28, align 4
  %181 = load i32, i32* %28, align 4
  %182 = load i32, i32* %13, align 4
  %183 = icmp sge i32 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %174
  %185 = load i32, i32* %13, align 4
  %186 = load i32, i32* %28, align 4
  %187 = load i32, i32* %13, align 4
  %188 = sub nsw i32 %186, %187
  %189 = add nsw i32 %188, 1
  %190 = sub nsw i32 %185, %189
  store i32 %190, i32* %28, align 4
  br label %191

191:                                              ; preds = %184, %174
  %192 = load i32*, i32** %9, align 8
  %193 = load i32, i32* %24, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = load i32, i32* %22, align 4
  %199 = load i32, i32* %17, align 4
  %200 = mul nsw i32 %198, %199
  %201 = load i32, i32* %28, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %197, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = mul nsw i32 %196, %205
  %207 = load i32, i32* %25, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %25, align 4
  br label %209

209:                                              ; preds = %191
  %210 = load i32, i32* %24, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %24, align 4
  br label %170

212:                                              ; preds = %170
  %213 = load i32, i32* %25, align 4
  %214 = load i32, i32* @BIT_SHIFT, align 4
  %215 = ashr i32 %213, %214
  %216 = load i32*, i32** %12, align 8
  %217 = load i32, i32* %22, align 4
  %218 = load i32, i32* %18, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load i32, i32* %23, align 4
  %221 = add nsw i32 %219, %220
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %216, i64 %222
  store i32 %215, i32* %223, align 4
  br label %224

224:                                              ; preds = %212
  %225 = load i32, i32* %23, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %23, align 4
  br label %165

227:                                              ; preds = %165
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %22, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %22, align 4
  br label %45

231:                                              ; preds = %45
  ret void
}

declare dso_local i32 @FFABS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
