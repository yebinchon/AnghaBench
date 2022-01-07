; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_cwrsi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_opus_pvq.c_celt_cwrsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ff_celt_pvq_u_row = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @celt_cwrsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @celt_cwrsi(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %191, %4
  %17 = load i32, i32* %5, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %194

19:                                               ; preds = %16
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %111

23:                                               ; preds = %19
  %24 = load i32**, i32*** @ff_celt_pvq_u_row, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %15, align 8
  %29 = load i32*, i32** %15, align 8
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp sge i32 %35, %36
  %38 = zext i1 %37 to i32
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %23
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %67, %54
  %57 = load i32**, i32*** @ff_celt_pvq_u_row, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %57, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %56, label %71

71:                                               ; preds = %67
  br label %92

72:                                               ; preds = %23
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %85, %72
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp sgt i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %82
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %11, align 4
  br label %78

91:                                               ; preds = %78
  br label %92

92:                                               ; preds = %91, %71
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %7, align 4
  %95 = sub nsw i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %6, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* %12, align 4
  %100 = add nsw i32 %98, %99
  %101 = load i32, i32* %12, align 4
  %102 = xor i32 %100, %101
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = mul nsw i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %13, align 4
  %109 = load i32*, i32** %8, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %8, align 8
  store i32 %108, i32* %109, align 4
  br label %191

111:                                              ; preds = %19
  %112 = load i32**, i32*** @ff_celt_pvq_u_row, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %11, align 4
  %121 = load i32**, i32*** @ff_celt_pvq_u_row, align 8
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %121, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %111
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %134
  %139 = load i32, i32* %11, align 4
  %140 = load i32, i32* %7, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %7, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %8, align 8
  store i32 0, i32* %142, align 4
  br label %190

144:                                              ; preds = %134, %111
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp sge i32 %145, %146
  %148 = zext i1 %147 to i32
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %12, align 4
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %12, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* %7, align 4
  %154 = sub nsw i32 %153, %152
  store i32 %154, i32* %7, align 4
  %155 = load i32, i32* %6, align 4
  store i32 %155, i32* %14, align 4
  br label %156

156:                                              ; preds = %167, %144
  %157 = load i32**, i32*** @ff_celt_pvq_u_row, align 8
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, -1
  store i32 %159, i32* %6, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32*, i32** %157, i64 %160
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %5, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %156
  %168 = load i32, i32* %11, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp sgt i32 %168, %169
  br i1 %170, label %156, label %171

171:                                              ; preds = %167
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %7, align 4
  %174 = sub nsw i32 %173, %172
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %6, align 4
  %177 = sub nsw i32 %175, %176
  %178 = load i32, i32* %12, align 4
  %179 = add nsw i32 %177, %178
  %180 = load i32, i32* %12, align 4
  %181 = xor i32 %179, %180
  store i32 %181, i32* %13, align 4
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* %13, align 4
  %184 = mul nsw i32 %182, %183
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, %184
  store i32 %186, i32* %9, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %8, align 8
  store i32 %187, i32* %188, align 4
  br label %190

190:                                              ; preds = %171, %138
  br label %191

191:                                              ; preds = %190, %92
  %192 = load i32, i32* %5, align 4
  %193 = add nsw i32 %192, -1
  store i32 %193, i32* %5, align 4
  br label %16

194:                                              ; preds = %16
  %195 = load i32, i32* %6, align 4
  %196 = mul nsw i32 2, %195
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %11, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %11, align 4
  %200 = icmp sge i32 %198, %199
  %201 = zext i1 %200 to i32
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %12, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %12, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* %7, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %7, align 4
  %208 = load i32, i32* %6, align 4
  store i32 %208, i32* %14, align 4
  %209 = load i32, i32* %7, align 4
  %210 = add nsw i32 %209, 1
  %211 = sdiv i32 %210, 2
  store i32 %211, i32* %6, align 4
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %194
  %215 = load i32, i32* %6, align 4
  %216 = mul nsw i32 2, %215
  %217 = sub nsw i32 %216, 1
  %218 = load i32, i32* %7, align 4
  %219 = sub nsw i32 %218, %217
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %214, %194
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %6, align 4
  %223 = sub nsw i32 %221, %222
  %224 = load i32, i32* %12, align 4
  %225 = add nsw i32 %223, %224
  %226 = load i32, i32* %12, align 4
  %227 = xor i32 %225, %226
  store i32 %227, i32* %13, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = mul nsw i32 %228, %229
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %9, align 4
  %233 = load i32, i32* %13, align 4
  %234 = load i32*, i32** %8, align 8
  %235 = getelementptr inbounds i32, i32* %234, i32 1
  store i32* %235, i32** %8, align 8
  store i32 %233, i32* %234, align 4
  %236 = load i32, i32* %7, align 4
  %237 = sub nsw i32 0, %236
  store i32 %237, i32* %12, align 4
  %238 = load i32, i32* %6, align 4
  %239 = load i32, i32* %12, align 4
  %240 = add nsw i32 %238, %239
  %241 = load i32, i32* %12, align 4
  %242 = xor i32 %240, %241
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %13, align 4
  %245 = mul nsw i32 %243, %244
  %246 = load i32, i32* %9, align 4
  %247 = add nsw i32 %246, %245
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %13, align 4
  %249 = load i32*, i32** %8, align 8
  store i32 %248, i32* %249, align 4
  %250 = load i32, i32* %9, align 4
  ret i32 %250
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
