; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_regexec1.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_regexec1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { i32, i8*, i8, i8*, %struct.TYPE_26__**, %struct.TYPE_26__** }
%struct.TYPE_26__ = type { i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_35__, %struct.TYPE_36__ }
%struct.TYPE_35__ = type { i64, i64, %struct.TYPE_27__*, %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i64*, i64* }
%struct.TYPE_36__ = type { %struct.TYPE_27__* }

@Runeself = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i8*, %struct.TYPE_37__*, i32, %struct.TYPE_25__*)* @regexec1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @regexec1(%struct.TYPE_24__* %0, i8* %1, %struct.TYPE_37__* %2, i32 %3, %struct.TYPE_25__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_24__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_37__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_25__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca %struct.TYPE_26__*, align 8
  %24 = alloca %struct.TYPE_26__*, align 8
  %25 = alloca %struct.TYPE_26__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %26, align 4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %17, align 4
  %31 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %32 = icmp ne %struct.TYPE_37__* %31, null
  br i1 %32, label %33, label %55

33:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %34

34:                                               ; preds = %51, %33
  %35 = load i32, i32* %16, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %34
  %39 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %46 = load i32, i32* %16, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  br label %51

51:                                               ; preds = %38
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %16, align 4
  br label %34

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %5
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 5
  %58 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %58, i64 0
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %65, i64 1
  %67 = load %struct.TYPE_26__*, %struct.TYPE_26__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  store i8* %72, i8** %15, align 8
  br label %73

73:                                               ; preds = %462, %55
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %120

76:                                               ; preds = %73
  %77 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  switch i32 %79, label %119 [
    i32 128, label %80
    i32 136, label %98
  ]

80:                                               ; preds = %76
  %81 = load i8*, i8** %15, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 2
  %84 = load i8, i8* %83, align 8
  %85 = call i8* @utfrune(i8* %81, i8 signext %84)
  store i8* %85, i8** %27, align 8
  %86 = load i8*, i8** %27, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  %89 = load i8*, i8** %15, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = icmp eq i8* %89, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88, %80
  %95 = load i32, i32* %26, align 4
  store i32 %95, i32* %6, align 4
  br label %467

96:                                               ; preds = %88
  %97 = load i8*, i8** %27, align 8
  store i8* %97, i8** %15, align 8
  br label %119

98:                                               ; preds = %76
  %99 = load i8*, i8** %15, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %119

103:                                              ; preds = %98
  %104 = load i8*, i8** %15, align 8
  %105 = call i8* @utfrune(i8* %104, i8 signext 10)
  store i8* %105, i8** %27, align 8
  %106 = load i8*, i8** %27, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %103
  %109 = load i8*, i8** %15, align 8
  %110 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = icmp eq i8* %109, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %108, %103
  %115 = load i32, i32* %26, align 4
  store i32 %115, i32* %6, align 4
  br label %467

116:                                              ; preds = %108
  %117 = load i8*, i8** %27, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  store i8* %118, i8** %15, align 8
  br label %119

119:                                              ; preds = %76, %116, %102, %96
  br label %120

120:                                              ; preds = %119, %73
  %121 = load i8*, i8** %15, align 8
  %122 = bitcast i8* %121 to i64*
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %18, align 8
  %124 = load i64, i64* %18, align 8
  %125 = load i64, i64* @Runeself, align 8
  %126 = icmp slt i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  store i32 1, i32* %21, align 4
  br label %131

128:                                              ; preds = %120
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @chartorune(i64* %18, i8* %129)
  store i32 %130, i32* %21, align 4
  br label %131

131:                                              ; preds = %128, %127
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %134, i64 %136
  %138 = load %struct.TYPE_26__*, %struct.TYPE_26__** %137, align 8
  store %struct.TYPE_26__* %138, %struct.TYPE_26__** %22, align 8
  %139 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %141, i64 %143
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %144, align 8
  store %struct.TYPE_26__* %145, %struct.TYPE_26__** %24, align 8
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %146, i32 0, i32 5
  %148 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %147, align 8
  %149 = load i32, i32* %12, align 4
  %150 = xor i32 %149, 1
  store i32 %150, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %148, i64 %151
  %153 = load %struct.TYPE_26__*, %struct.TYPE_26__** %152, align 8
  store %struct.TYPE_26__* %153, %struct.TYPE_26__** %23, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 4
  %156 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %156, i64 %158
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %159, align 8
  store %struct.TYPE_26__* %160, %struct.TYPE_26__** %25, align 8
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 0
  store i64 0, i64* %162, align 8
  %163 = load i32, i32* %26, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %131
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %10, align 4
  %171 = load i8*, i8** %15, align 8
  %172 = call i32 @_renewemptythread(%struct.TYPE_26__* %166, i32 %169, i32 %170, i8* %171)
  br label %173

173:                                              ; preds = %165, %131
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  store %struct.TYPE_26__* %174, %struct.TYPE_26__** %14, align 8
  br label %175

175:                                              ; preds = %435, %173
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %438

180:                                              ; preds = %175
  %181 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %182 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = inttoptr i64 %183 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %184, %struct.TYPE_27__** %13, align 8
  br label %185

185:                                              ; preds = %429, %180
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  switch i32 %188, label %428 [
    i32 128, label %189
    i32 132, label %211
    i32 129, label %224
    i32 138, label %237
    i32 137, label %255
    i32 136, label %269
    i32 133, label %281
    i32 135, label %295
    i32 131, label %343
    i32 130, label %396
    i32 134, label %410
  ]

189:                                              ; preds = %185
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %18, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %210

196:                                              ; preds = %189
  %197 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %198 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %199 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_27__*, %struct.TYPE_27__** %200, align 8
  %202 = load i32, i32* %10, align 4
  %203 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 1
  %205 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %197, %struct.TYPE_27__* %201, i32 %202, %struct.TYPE_29__* %204)
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %207 = icmp eq %struct.TYPE_26__* %205, %206
  br i1 %207, label %208, label %209

208:                                              ; preds = %196
  store i32 -1, i32* %6, align 4
  br label %467

209:                                              ; preds = %196
  br label %210

210:                                              ; preds = %209, %189
  br label %428

211:                                              ; preds = %185
  %212 = load i8*, i8** %15, align 8
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %214 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %215, align 8
  %217 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %218 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  store i8* %212, i8** %223, align 8
  br label %429

224:                                              ; preds = %185
  %225 = load i8*, i8** %15, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_33__*, %struct.TYPE_33__** %228, align 8
  %230 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %235, i32 0, i32 0
  store i8* %225, i8** %236, align 8
  br label %429

237:                                              ; preds = %185
  %238 = load i64, i64* %18, align 8
  %239 = icmp ne i64 %238, 10
  br i1 %239, label %240, label %254

240:                                              ; preds = %237
  %241 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %242 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %244, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %247, i32 0, i32 1
  %249 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %241, %struct.TYPE_27__* %245, i32 %246, %struct.TYPE_29__* %248)
  %250 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %251 = icmp eq %struct.TYPE_26__* %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %240
  store i32 -1, i32* %6, align 4
  br label %467

253:                                              ; preds = %240
  br label %254

254:                                              ; preds = %253, %237
  br label %428

255:                                              ; preds = %185
  %256 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_27__*, %struct.TYPE_27__** %259, align 8
  %261 = load i32, i32* %10, align 4
  %262 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %263 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %262, i32 0, i32 1
  %264 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %256, %struct.TYPE_27__* %260, i32 %261, %struct.TYPE_29__* %263)
  %265 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %266 = icmp eq %struct.TYPE_26__* %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %255
  store i32 -1, i32* %6, align 4
  br label %467

268:                                              ; preds = %255
  br label %428

269:                                              ; preds = %185
  %270 = load i8*, i8** %15, align 8
  %271 = load i8*, i8** %8, align 8
  %272 = icmp eq i8* %270, %271
  br i1 %272, label %279, label %273

273:                                              ; preds = %269
  %274 = load i8*, i8** %15, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 -1
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp eq i32 %277, 10
  br i1 %278, label %279, label %280

279:                                              ; preds = %273, %269
  br label %429

280:                                              ; preds = %273
  br label %428

281:                                              ; preds = %185
  %282 = load i8*, i8** %15, align 8
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 3
  %285 = load i8*, i8** %284, align 8
  %286 = icmp eq i8* %282, %285
  br i1 %286, label %293, label %287

287:                                              ; preds = %281
  %288 = load i64, i64* %18, align 8
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %293, label %290

290:                                              ; preds = %287
  %291 = load i64, i64* %18, align 8
  %292 = icmp eq i64 %291, 10
  br i1 %292, label %293, label %294

293:                                              ; preds = %290, %287, %281
  br label %429

294:                                              ; preds = %290
  br label %428

295:                                              ; preds = %185
  %296 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %297 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 3
  %299 = load %struct.TYPE_34__*, %struct.TYPE_34__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %299, i32 0, i32 1
  %301 = load i64*, i64** %300, align 8
  store i64* %301, i64** %20, align 8
  %302 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %303 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %303, i32 0, i32 3
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 0
  %307 = load i64*, i64** %306, align 8
  store i64* %307, i64** %19, align 8
  br label %308

308:                                              ; preds = %339, %295
  %309 = load i64*, i64** %19, align 8
  %310 = load i64*, i64** %20, align 8
  %311 = icmp ult i64* %309, %310
  br i1 %311, label %312, label %342

312:                                              ; preds = %308
  %313 = load i64, i64* %18, align 8
  %314 = load i64*, i64** %19, align 8
  %315 = getelementptr inbounds i64, i64* %314, i64 0
  %316 = load i64, i64* %315, align 8
  %317 = icmp sge i64 %313, %316
  br i1 %317, label %318, label %338

318:                                              ; preds = %312
  %319 = load i64, i64* %18, align 8
  %320 = load i64*, i64** %19, align 8
  %321 = getelementptr inbounds i64, i64* %320, i64 1
  %322 = load i64, i64* %321, align 8
  %323 = icmp sle i64 %319, %322
  br i1 %323, label %324, label %338

324:                                              ; preds = %318
  %325 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %326 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %327 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %327, i32 0, i32 0
  %329 = load %struct.TYPE_27__*, %struct.TYPE_27__** %328, align 8
  %330 = load i32, i32* %10, align 4
  %331 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %331, i32 0, i32 1
  %333 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %325, %struct.TYPE_27__* %329, i32 %330, %struct.TYPE_29__* %332)
  %334 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %335 = icmp eq %struct.TYPE_26__* %333, %334
  br i1 %335, label %336, label %337

336:                                              ; preds = %324
  store i32 -1, i32* %6, align 4
  br label %467

337:                                              ; preds = %324
  br label %342

338:                                              ; preds = %318, %312
  br label %339

339:                                              ; preds = %338
  %340 = load i64*, i64** %19, align 8
  %341 = getelementptr inbounds i64, i64* %340, i64 2
  store i64* %341, i64** %19, align 8
  br label %308

342:                                              ; preds = %337, %308
  br label %428

343:                                              ; preds = %185
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %345, i32 0, i32 3
  %347 = load %struct.TYPE_34__*, %struct.TYPE_34__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %347, i32 0, i32 1
  %349 = load i64*, i64** %348, align 8
  store i64* %349, i64** %20, align 8
  %350 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %351 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %351, i32 0, i32 3
  %353 = load %struct.TYPE_34__*, %struct.TYPE_34__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %353, i32 0, i32 0
  %355 = load i64*, i64** %354, align 8
  store i64* %355, i64** %19, align 8
  br label %356

356:                                              ; preds = %374, %343
  %357 = load i64*, i64** %19, align 8
  %358 = load i64*, i64** %20, align 8
  %359 = icmp ult i64* %357, %358
  br i1 %359, label %360, label %377

360:                                              ; preds = %356
  %361 = load i64, i64* %18, align 8
  %362 = load i64*, i64** %19, align 8
  %363 = getelementptr inbounds i64, i64* %362, i64 0
  %364 = load i64, i64* %363, align 8
  %365 = icmp sge i64 %361, %364
  br i1 %365, label %366, label %373

366:                                              ; preds = %360
  %367 = load i64, i64* %18, align 8
  %368 = load i64*, i64** %19, align 8
  %369 = getelementptr inbounds i64, i64* %368, i64 1
  %370 = load i64, i64* %369, align 8
  %371 = icmp sle i64 %367, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %366
  br label %377

373:                                              ; preds = %366, %360
  br label %374

374:                                              ; preds = %373
  %375 = load i64*, i64** %19, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 2
  store i64* %376, i64** %19, align 8
  br label %356

377:                                              ; preds = %372, %356
  %378 = load i64*, i64** %19, align 8
  %379 = load i64*, i64** %20, align 8
  %380 = icmp eq i64* %378, %379
  br i1 %380, label %381, label %395

381:                                              ; preds = %377
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %383 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %384 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_27__*, %struct.TYPE_27__** %385, align 8
  %387 = load i32, i32* %10, align 4
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 1
  %390 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %382, %struct.TYPE_27__* %386, i32 %387, %struct.TYPE_29__* %389)
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %25, align 8
  %392 = icmp eq %struct.TYPE_26__* %390, %391
  br i1 %392, label %393, label %394

393:                                              ; preds = %381
  store i32 -1, i32* %6, align 4
  br label %467

394:                                              ; preds = %381
  br label %395

395:                                              ; preds = %394, %377
  br label %428

396:                                              ; preds = %185
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %399, i32 0, i32 2
  %401 = load %struct.TYPE_27__*, %struct.TYPE_27__** %400, align 8
  %402 = load i32, i32* %10, align 4
  %403 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %404 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %403, i32 0, i32 1
  %405 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %397, %struct.TYPE_27__* %401, i32 %402, %struct.TYPE_29__* %404)
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %407 = icmp eq %struct.TYPE_26__* %405, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %396
  store i32 -1, i32* %6, align 4
  br label %467

409:                                              ; preds = %396
  br label %429

410:                                              ; preds = %185
  store i32 1, i32* %26, align 4
  %411 = load i8*, i8** %15, align 8
  %412 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %413 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %413, i32 0, i32 0
  %415 = load %struct.TYPE_33__*, %struct.TYPE_33__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %415, i64 0
  %417 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %417, i32 0, i32 0
  store i8* %411, i8** %418, align 8
  %419 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %420 = icmp ne %struct.TYPE_37__* %419, null
  br i1 %420, label %421, label %427

421:                                              ; preds = %410
  %422 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %423 = load i32, i32* %10, align 4
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 1
  %426 = call i32 @_renewmatch(%struct.TYPE_37__* %422, i32 %423, %struct.TYPE_29__* %425)
  br label %427

427:                                              ; preds = %421, %410
  br label %428

428:                                              ; preds = %185, %427, %395, %342, %294, %280, %268, %254, %210
  br label %434

429:                                              ; preds = %409, %293, %279, %224, %211
  %430 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %431 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %432, align 8
  store %struct.TYPE_27__* %433, %struct.TYPE_27__** %13, align 8
  br label %185

434:                                              ; preds = %428
  br label %435

435:                                              ; preds = %434
  %436 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %437 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %436, i32 1
  store %struct.TYPE_26__* %437, %struct.TYPE_26__** %14, align 8
  br label %175

438:                                              ; preds = %175
  %439 = load i8*, i8** %15, align 8
  %440 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %441 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %440, i32 0, i32 3
  %442 = load i8*, i8** %441, align 8
  %443 = icmp eq i8* %439, %442
  br i1 %443, label %444, label %445

444:                                              ; preds = %438
  br label %465

445:                                              ; preds = %438
  %446 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %447 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %445
  %451 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %452 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = icmp eq i64 %453, 0
  br label %455

455:                                              ; preds = %450, %445
  %456 = phi i1 [ false, %445 ], [ %454, %450 ]
  %457 = zext i1 %456 to i32
  store i32 %457, i32* %17, align 4
  %458 = load i32, i32* %21, align 4
  %459 = load i8*, i8** %15, align 8
  %460 = sext i32 %458 to i64
  %461 = getelementptr inbounds i8, i8* %459, i64 %460
  store i8* %461, i8** %15, align 8
  br label %462

462:                                              ; preds = %455
  %463 = load i64, i64* %18, align 8
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %73, label %465

465:                                              ; preds = %462, %444
  %466 = load i32, i32* %26, align 4
  store i32 %466, i32* %6, align 4
  br label %467

467:                                              ; preds = %465, %408, %393, %336, %267, %252, %208, %114, %94
  %468 = load i32, i32* %6, align 4
  ret i32 %468
}

declare dso_local i8* @utfrune(i8*, i8 signext) #1

declare dso_local i32 @chartorune(i64*, i8*) #1

declare dso_local i32 @_renewemptythread(%struct.TYPE_26__*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__*, %struct.TYPE_27__*, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @_renewmatch(%struct.TYPE_37__*, i32, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
