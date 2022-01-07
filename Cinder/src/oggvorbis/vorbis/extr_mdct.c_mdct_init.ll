; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mdct.c_mdct_init.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_mdct.c_mdct_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32*, i8*, i8** }

@M_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdct_init(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = sdiv i32 %15, 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  %20 = call i8* @_ogg_malloc(i32 %19)
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = sdiv i32 %23, 4
  %25 = add nsw i32 %22, %24
  %26 = sext i32 %25 to i64
  %27 = mul i64 8, %26
  %28 = trunc i64 %27 to i32
  %29 = call i8* @_ogg_malloc(i32 %28)
  %30 = bitcast i8* %29 to i8**
  store i8** %30, i8*** %6, align 8
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, 1
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %4, align 4
  %34 = sitofp i32 %33 to float
  %35 = call i32 @log(float %34)
  %36 = call i32 @log(float 2.000000e+00)
  %37 = sdiv i32 %35, %36
  %38 = call i32 @rint(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 %38, i32* %9, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i8**, i8*** %6, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 4
  store i8** %44, i8*** %46, align 8
  %47 = load i32*, i32** %5, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 2
  store i32* %47, i32** %49, align 8
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %123, %2
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %4, align 4
  %53 = sdiv i32 %52, 4
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %126

55:                                               ; preds = %50
  %56 = load i32, i32* @M_PI, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sdiv i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 4, %59
  %61 = mul nsw i32 %58, %60
  %62 = call double @cos(i32 %61)
  %63 = fptrunc double %62 to float
  %64 = call i8* @FLOAT_CONV(float %63)
  %65 = load i8**, i8*** %6, align 8
  %66 = load i32, i32* %7, align 4
  %67 = mul nsw i32 %66, 2
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8*, i8** %65, i64 %68
  store i8* %64, i8** %69, align 8
  %70 = load i32, i32* @M_PI, align 4
  %71 = load i32, i32* %4, align 4
  %72 = sdiv i32 %70, %71
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 4, %73
  %75 = mul nsw i32 %72, %74
  %76 = call double @sin(i32 %75)
  %77 = fneg double %76
  %78 = fptrunc double %77 to float
  %79 = call i8* @FLOAT_CONV(float %78)
  %80 = load i8**, i8*** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %81, 2
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8*, i8** %80, i64 %84
  store i8* %79, i8** %85, align 8
  %86 = load i32, i32* @M_PI, align 4
  %87 = load i32, i32* %4, align 4
  %88 = mul nsw i32 2, %87
  %89 = sdiv i32 %86, %88
  %90 = load i32, i32* %7, align 4
  %91 = mul nsw i32 2, %90
  %92 = add nsw i32 %91, 1
  %93 = mul nsw i32 %89, %92
  %94 = call double @cos(i32 %93)
  %95 = fptrunc double %94 to float
  %96 = call i8* @FLOAT_CONV(float %95)
  %97 = load i8**, i8*** %6, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* %7, align 4
  %100 = mul nsw i32 %99, 2
  %101 = add nsw i32 %98, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8*, i8** %97, i64 %102
  store i8* %96, i8** %103, align 8
  %104 = load i32, i32* @M_PI, align 4
  %105 = load i32, i32* %4, align 4
  %106 = mul nsw i32 2, %105
  %107 = sdiv i32 %104, %106
  %108 = load i32, i32* %7, align 4
  %109 = mul nsw i32 2, %108
  %110 = add nsw i32 %109, 1
  %111 = mul nsw i32 %107, %110
  %112 = call double @sin(i32 %111)
  %113 = fptrunc double %112 to float
  %114 = call i8* @FLOAT_CONV(float %113)
  %115 = load i8**, i8*** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %7, align 4
  %118 = mul nsw i32 %117, 2
  %119 = add nsw i32 %116, %118
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8*, i8** %115, i64 %121
  store i8* %114, i8** %122, align 8
  br label %123

123:                                              ; preds = %55
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %50

126:                                              ; preds = %50
  store i32 0, i32* %7, align 4
  br label %127

127:                                              ; preds = %171, %126
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %4, align 4
  %130 = sdiv i32 %129, 8
  %131 = icmp slt i32 %128, %130
  br i1 %131, label %132, label %174

132:                                              ; preds = %127
  %133 = load i32, i32* @M_PI, align 4
  %134 = load i32, i32* %4, align 4
  %135 = sdiv i32 %133, %134
  %136 = load i32, i32* %7, align 4
  %137 = mul nsw i32 4, %136
  %138 = add nsw i32 %137, 2
  %139 = mul nsw i32 %135, %138
  %140 = call double @cos(i32 %139)
  %141 = fmul double %140, 5.000000e-01
  %142 = fptrunc double %141 to float
  %143 = call i8* @FLOAT_CONV(float %142)
  %144 = load i8**, i8*** %6, align 8
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %7, align 4
  %147 = mul nsw i32 %146, 2
  %148 = add nsw i32 %145, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8*, i8** %144, i64 %149
  store i8* %143, i8** %150, align 8
  %151 = load i32, i32* @M_PI, align 4
  %152 = load i32, i32* %4, align 4
  %153 = sdiv i32 %151, %152
  %154 = load i32, i32* %7, align 4
  %155 = mul nsw i32 4, %154
  %156 = add nsw i32 %155, 2
  %157 = mul nsw i32 %153, %156
  %158 = call double @sin(i32 %157)
  %159 = fneg double %158
  %160 = fmul double %159, 5.000000e-01
  %161 = fptrunc double %160 to float
  %162 = call i8* @FLOAT_CONV(float %161)
  %163 = load i8**, i8*** %6, align 8
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 %165, 2
  %167 = add nsw i32 %164, %166
  %168 = add nsw i32 %167, 1
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i8*, i8** %163, i64 %169
  store i8* %162, i8** %170, align 8
  br label %171

171:                                              ; preds = %132
  %172 = load i32, i32* %7, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %7, align 4
  br label %127

174:                                              ; preds = %127
  %175 = load i32, i32* %9, align 4
  %176 = sub nsw i32 %175, 1
  %177 = shl i32 1, %176
  %178 = sub nsw i32 %177, 1
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %9, align 4
  %180 = sub nsw i32 %179, 2
  %181 = shl i32 1, %180
  store i32 %181, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %182

182:                                              ; preds = %227, %174
  %183 = load i32, i32* %11, align 4
  %184 = load i32, i32* %4, align 4
  %185 = sdiv i32 %184, 8
  %186 = icmp slt i32 %183, %185
  br i1 %186, label %187, label %230

187:                                              ; preds = %182
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %188

188:                                              ; preds = %206, %187
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %12, align 4
  %191 = ashr i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %209

193:                                              ; preds = %188
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %12, align 4
  %196 = ashr i32 %194, %195
  %197 = load i32, i32* %11, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %193
  %201 = load i32, i32* %12, align 4
  %202 = shl i32 1, %201
  %203 = load i32, i32* %14, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %200, %193
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %12, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %12, align 4
  br label %188

209:                                              ; preds = %188
  %210 = load i32, i32* %14, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %10, align 4
  %213 = and i32 %211, %212
  %214 = sub nsw i32 %213, 1
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* %11, align 4
  %217 = mul nsw i32 %216, 2
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %215, i64 %218
  store i32 %214, i32* %219, align 4
  %220 = load i32, i32* %14, align 4
  %221 = load i32*, i32** %5, align 8
  %222 = load i32, i32* %11, align 4
  %223 = mul nsw i32 %222, 2
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %221, i64 %225
  store i32 %220, i32* %226, align 4
  br label %227

227:                                              ; preds = %209
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %182

230:                                              ; preds = %182
  %231 = load i32, i32* %4, align 4
  %232 = sitofp i32 %231 to float
  %233 = fdiv float 4.000000e+00, %232
  %234 = call i8* @FLOAT_CONV(float %233)
  %235 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 3
  store i8* %234, i8** %236, align 8
  ret void
}

declare dso_local i8* @_ogg_malloc(i32) #1

declare dso_local i32 @rint(i32) #1

declare dso_local i32 @log(float) #1

declare dso_local i8* @FLOAT_CONV(float) #1

declare dso_local double @cos(i32) #1

declare dso_local double @sin(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
