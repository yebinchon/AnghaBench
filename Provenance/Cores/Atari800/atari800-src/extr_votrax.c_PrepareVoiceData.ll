; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votrax.c_PrepareVoiceData.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_votrax.c_PrepareVoiceData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i32**, i64, i32* }
%struct.TYPE_3__ = type { i64, i32, i32, i32*, i64, i32*, i32*, i32 }

@PhonemeData = common dso_local global %struct.TYPE_4__* null, align 8
@votraxsc01_locals = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @PrepareVoiceData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PrepareVoiceData(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 128
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %26, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %13, align 4
  br label %36

36:                                               ; preds = %30, %25, %2
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %42, 128
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 1), align 8
  br label %307

45:                                               ; preds = %36
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @time_to_samples(i32 %51)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 2), align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %45
  %59 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 3), align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 3
  %64 = load i32**, i32*** %63, align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 4), align 8
  %66 = getelementptr inbounds i32*, i32** %64, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = call i32 @memcpy(i32* %59, i32* %67, i32 %71)
  br label %73

73:                                               ; preds = %58, %45
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 3), align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32* %77, i32** %7, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %82, %88
  br i1 %89, label %90, label %181

90:                                               ; preds = %73
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  switch i64 %95, label %172 [
    i64 131, label %96
    i64 130, label %101
    i64 129, label %101
    i64 132, label %124
    i64 128, label %138
    i64 133, label %138
  ]

96:                                               ; preds = %90
  %97 = call i32 @time_to_samples(i32 30)
  store i32 %97, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %98 = call i32 @time_to_samples(i32 30)
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %11, align 4
  %100 = call i32 @time_to_samples(i32 30)
  store i32 %100, i32* %10, align 4
  br label %176

101:                                              ; preds = %90, %90
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  switch i64 %107, label %118 [
    i64 134, label %108
    i64 129, label %108
    i64 132, label %113
  ]

108:                                              ; preds = %101, %101
  store i32 0, i32* %9, align 4
  %109 = call i32 @time_to_samples(i32 30)
  store i32 %109, i32* %8, align 4
  %110 = call i32 @time_to_samples(i32 30)
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %11, align 4
  %112 = call i32 @time_to_samples(i32 30)
  store i32 %112, i32* %10, align 4
  br label %123

113:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  %114 = call i32 @time_to_samples(i32 40)
  store i32 %114, i32* %8, align 4
  %115 = call i32 @time_to_samples(i32 10)
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %11, align 4
  %117 = call i32 @time_to_samples(i32 10)
  store i32 %117, i32* %10, align 4
  br label %123

118:                                              ; preds = %101
  store i32 0, i32* %9, align 4
  %119 = call i32 @time_to_samples(i32 20)
  store i32 %119, i32* %8, align 4
  %120 = call i32 @time_to_samples(i32 0)
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %11, align 4
  %122 = call i32 @time_to_samples(i32 20)
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %118, %113, %108
  br label %176

124:                                              ; preds = %90
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  switch i64 %130, label %136 [
    i64 130, label %131
    i64 129, label %131
  ]

131:                                              ; preds = %124, %124
  store i32 0, i32* %9, align 4
  %132 = call i32 @time_to_samples(i32 30)
  store i32 %132, i32* %8, align 4
  %133 = call i32 @time_to_samples(i32 10)
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %11, align 4
  %135 = call i32 @time_to_samples(i32 40)
  store i32 %135, i32* %10, align 4
  br label %137

136:                                              ; preds = %124
  br label %137

137:                                              ; preds = %136, %131
  br label %138

138:                                              ; preds = %90, %90, %137
  store i32 0, i32* %9, align 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %140 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 4), align 8
  %145 = getelementptr inbounds i32, i32* %143, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %148 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %146, %151
  store i32 %152, i32* %8, align 4
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %154 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 3
  %157 = load i32**, i32*** %156, align 8
  %158 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 4), align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %162 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %160, i64 %166
  store i32* %167, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 5), align 8
  %168 = load i32, i32* %8, align 4
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 1), align 8
  store i32 1, i32* %12, align 4
  %169 = call i32 @time_to_samples(i32 0)
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %11, align 4
  %171 = call i32 @time_to_samples(i32 0)
  store i32 %171, i32* %10, align 4
  br label %176

172:                                              ; preds = %90
  store i32 0, i32* %9, align 4
  %173 = call i32 @time_to_samples(i32 20)
  store i32 %173, i32* %8, align 4
  %174 = call i32 @time_to_samples(i32 20)
  %175 = sub nsw i32 0, %174
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %172, %138, %123, %96
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 7), align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %176
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %180

180:                                              ; preds = %179, %176
  br label %184

181:                                              ; preds = %73
  %182 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 1), align 8
  store i32 %182, i32* %5, align 4
  %183 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 5), align 8
  store i32* %183, i32** %6, align 8
  br label %184

184:                                              ; preds = %181, %180
  store i32 0, i32* %15, align 4
  br label %185

185:                                              ; preds = %300, %184
  %186 = load i32, i32* %15, align 4
  %187 = load i32, i32* %14, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %303

189:                                              ; preds = %185
  store i32 0, i32* %16, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %8, align 4
  %192 = icmp slt i32 %190, %191
  br i1 %192, label %193, label %239

193:                                              ; preds = %189
  store double 1.000000e+00, double* %17, align 8
  %194 = load i32, i32* %12, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %207, label %196

196:                                              ; preds = %193
  %197 = load i32, i32* %9, align 4
  %198 = sitofp i32 %197 to double
  %199 = fmul double 1.000000e+00, %198
  %200 = load i32, i32* %8, align 4
  %201 = sitofp i32 %200 to double
  %202 = fdiv double %199, %201
  %203 = fmul double %202, 3.141500e+00
  %204 = fdiv double %203, 2.000000e+00
  %205 = call double @sin(double %204) #3
  %206 = fsub double 1.000000e+00, %205
  store double %206, double* %17, align 8
  br label %207

207:                                              ; preds = %196, %193
  %208 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 1), align 8
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %227, label %210

210:                                              ; preds = %207
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %212 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 5
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 4), align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 1), align 8
  %219 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %220 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 0), align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %219, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %221, i32 0, i32 3
  %223 = load i32**, i32*** %222, align 8
  %224 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 4), align 8
  %225 = getelementptr inbounds i32*, i32** %223, i64 %224
  %226 = load i32*, i32** %225, align 8
  store i32* %226, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 5), align 8
  br label %227

227:                                              ; preds = %210, %207
  %228 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 5), align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 5), align 8
  %230 = load i32, i32* %228, align 4
  %231 = sitofp i32 %230 to double
  %232 = load double, double* %17, align 8
  %233 = fmul double %231, %232
  %234 = fptosi double %233 to i32
  store i32 %234, i32* %16, align 4
  %235 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 1), align 8
  %236 = add nsw i32 %235, -1
  store i32 %236, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 1), align 8
  %237 = load i32, i32* %9, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %9, align 4
  br label %239

239:                                              ; preds = %227, %189
  %240 = load i32, i32* %11, align 4
  %241 = icmp sge i32 %240, 0
  br i1 %241, label %242, label %294

242:                                              ; preds = %239
  store double 1.000000e+00, double* %18, align 8
  %243 = load i32, i32* %11, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %258

246:                                              ; preds = %242
  %247 = load i32, i32* %11, align 4
  %248 = sitofp i32 %247 to double
  %249 = fmul double 1.000000e+00, %248
  %250 = load i32, i32* %10, align 4
  %251 = sitofp i32 %250 to double
  %252 = fdiv double %249, %251
  %253 = fmul double %252, 3.141500e+00
  %254 = fdiv double %253, 2.000000e+00
  %255 = call double @sin(double %254) #3
  store double %255, double* %18, align 8
  %256 = load i32, i32* %11, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %11, align 4
  br label %258

258:                                              ; preds = %246, %242
  %259 = load i32, i32* %5, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %282, label %261

261:                                              ; preds = %258
  %262 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %263 = load i32, i32* %3, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %265, i32 0, i32 5
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* %5, align 4
  %272 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PhonemeData, align 8
  %273 = load i32, i32* %3, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i32 0, i32 3
  %277 = load i32**, i32*** %276, align 8
  %278 = load i32, i32* %4, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  %281 = load i32*, i32** %280, align 8
  store i32* %281, i32** %6, align 8
  br label %282

282:                                              ; preds = %261, %258
  %283 = load i32*, i32** %6, align 8
  %284 = getelementptr inbounds i32, i32* %283, i32 1
  store i32* %284, i32** %6, align 8
  %285 = load i32, i32* %283, align 4
  %286 = sitofp i32 %285 to double
  %287 = load double, double* %18, align 8
  %288 = fmul double %286, %287
  %289 = fptosi double %288 to i32
  %290 = load i32, i32* %16, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %16, align 4
  %292 = load i32, i32* %5, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %5, align 4
  br label %294

294:                                              ; preds = %282, %239
  %295 = load i32, i32* %11, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %11, align 4
  %297 = load i32, i32* %16, align 4
  %298 = load i32*, i32** %7, align 8
  %299 = getelementptr inbounds i32, i32* %298, i32 1
  store i32* %299, i32** %7, align 8
  store i32 %297, i32* %298, align 4
  br label %300

300:                                              ; preds = %294
  %301 = load i32, i32* %15, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %15, align 4
  br label %185

303:                                              ; preds = %185
  %304 = load i32*, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 3), align 8
  store i32* %304, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 6), align 8
  %305 = load i32*, i32** %6, align 8
  store i32* %305, i32** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 5), align 8
  %306 = load i32, i32* %5, align 4
  store i32 %306, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @votraxsc01_locals, i32 0, i32 1), align 8
  br label %307

307:                                              ; preds = %303, %44
  ret void
}

declare dso_local i32 @time_to_samples(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare dso_local double @sin(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
