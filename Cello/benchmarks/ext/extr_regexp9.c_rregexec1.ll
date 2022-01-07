; ModuleID = '/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_rregexec1.c'
source_filename = "/home/carl/AnghaBench/Cello/benchmarks/ext/extr_regexp9.c_rregexec1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_37__ = type { %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_25__ = type { i32, i8*, i32, i8*, %struct.TYPE_26__**, %struct.TYPE_26__** }
%struct.TYPE_26__ = type { i64, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { %struct.TYPE_32__, %struct.TYPE_31__ }
%struct.TYPE_32__ = type { i8* }
%struct.TYPE_31__ = type { i8* }
%struct.TYPE_27__ = type { i32, %struct.TYPE_36__, %struct.TYPE_34__ }
%struct.TYPE_36__ = type { i8, i64, %struct.TYPE_27__*, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i8*, i8* }
%struct.TYPE_34__ = type { %struct.TYPE_27__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i8*, %struct.TYPE_37__*, i32, %struct.TYPE_25__*)* @rregexec1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rregexec1(%struct.TYPE_24__* %0, i8* %1, %struct.TYPE_37__* %2, i32 %3, %struct.TYPE_25__* %4) #0 {
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
  %18 = alloca i8, align 1
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_26__*, align 8
  %22 = alloca %struct.TYPE_26__*, align 8
  %23 = alloca %struct.TYPE_26__*, align 8
  %24 = alloca %struct.TYPE_26__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.TYPE_37__* %2, %struct.TYPE_37__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %25, align 4
  %27 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %17, align 4
  %30 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %31 = icmp ne %struct.TYPE_37__* %30, null
  br i1 %31, label %32, label %54

32:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  br label %33

33:                                               ; preds = %50, %32
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %39 = load i32, i32* %16, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %9, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %37
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %16, align 4
  br label %33

53:                                               ; preds = %33
  br label %54

54:                                               ; preds = %53, %5
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %57, i64 0
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %60, i32 0, i32 0
  store i64 0, i64* %61, align 8
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 5
  %64 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %64, i64 1
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %66, i64 0
  %68 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %15, align 8
  br label %72

72:                                               ; preds = %460, %54
  %73 = load i32, i32* %17, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %120

75:                                               ; preds = %72
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  switch i32 %78, label %119 [
    i32 128, label %79
    i32 136, label %98
  ]

79:                                               ; preds = %75
  %80 = load i8*, i8** %15, align 8
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = trunc i32 %83 to i8
  %85 = call i8* @runestrchr(i8* %80, i8 signext %84)
  store i8* %85, i8** %26, align 8
  %86 = load i8*, i8** %26, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %94, label %88

88:                                               ; preds = %79
  %89 = load i8*, i8** %26, align 8
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = icmp eq i8* %89, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88, %79
  %95 = load i32, i32* %25, align 4
  store i32 %95, i32* %6, align 4
  br label %465

96:                                               ; preds = %88
  %97 = load i8*, i8** %26, align 8
  store i8* %97, i8** %15, align 8
  br label %119

98:                                               ; preds = %75
  %99 = load i8*, i8** %15, align 8
  %100 = load i8*, i8** %8, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %98
  br label %119

103:                                              ; preds = %98
  %104 = load i8*, i8** %15, align 8
  %105 = call i8* @runestrchr(i8* %104, i8 signext 10)
  store i8* %105, i8** %26, align 8
  %106 = load i8*, i8** %26, align 8
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
  %115 = load i32, i32* %25, align 4
  store i32 %115, i32* %6, align 4
  br label %465

116:                                              ; preds = %108
  %117 = load i8*, i8** %26, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 1
  store i8* %118, i8** %15, align 8
  br label %119

119:                                              ; preds = %75, %116, %102, %96
  br label %120

120:                                              ; preds = %119, %72
  %121 = load i8*, i8** %15, align 8
  %122 = load i8, i8* %121, align 1
  store i8 %122, i8* %18, align 1
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %125, i64 %127
  %129 = load %struct.TYPE_26__*, %struct.TYPE_26__** %128, align 8
  store %struct.TYPE_26__* %129, %struct.TYPE_26__** %21, align 8
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 4
  %132 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %131, align 8
  %133 = load i32, i32* %12, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %132, i64 %134
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %135, align 8
  store %struct.TYPE_26__* %136, %struct.TYPE_26__** %23, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 5
  %139 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %138, align 8
  %140 = load i32, i32* %12, align 4
  %141 = xor i32 %140, 1
  store i32 %141, i32* %12, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %139, i64 %142
  %144 = load %struct.TYPE_26__*, %struct.TYPE_26__** %143, align 8
  store %struct.TYPE_26__* %144, %struct.TYPE_26__** %22, align 8
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 4
  %147 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %146, align 8
  %148 = load i32, i32* %12, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_26__*, %struct.TYPE_26__** %147, i64 %149
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %150, align 8
  store %struct.TYPE_26__* %151, %struct.TYPE_26__** %24, align 8
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 0
  store i64 0, i64* %153, align 8
  %154 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  %155 = load %struct.TYPE_24__*, %struct.TYPE_24__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i8*, i8** %15, align 8
  %160 = call i32 @_rrenewemptythread(%struct.TYPE_26__* %154, i32 %157, i32 %158, i8* %159)
  %161 = load %struct.TYPE_26__*, %struct.TYPE_26__** %21, align 8
  store %struct.TYPE_26__* %161, %struct.TYPE_26__** %14, align 8
  br label %162

162:                                              ; preds = %435, %120
  %163 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %438

167:                                              ; preds = %162
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to %struct.TYPE_27__*
  store %struct.TYPE_27__* %171, %struct.TYPE_27__** %13, align 8
  br label %172

172:                                              ; preds = %429, %167
  %173 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  switch i32 %175, label %428 [
    i32 128, label %176
    i32 132, label %200
    i32 129, label %213
    i32 138, label %226
    i32 137, label %245
    i32 136, label %259
    i32 133, label %271
    i32 135, label %287
    i32 131, label %339
    i32 130, label %396
    i32 134, label %410
  ]

176:                                              ; preds = %172
  %177 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %178, i32 0, i32 0
  %180 = load i8, i8* %179, align 8
  %181 = sext i8 %180 to i32
  %182 = load i8, i8* %18, align 1
  %183 = sext i8 %182 to i32
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %176
  %186 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %187 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_27__*, %struct.TYPE_27__** %189, align 8
  %191 = load i32, i32* %10, align 4
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 1
  %194 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %186, %struct.TYPE_27__* %190, i32 %191, %struct.TYPE_29__* %193)
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %196 = icmp eq %struct.TYPE_26__* %194, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  store i32 -1, i32* %6, align 4
  br label %465

198:                                              ; preds = %185
  br label %199

199:                                              ; preds = %198, %176
  br label %428

200:                                              ; preds = %172
  %201 = load i8*, i8** %15, align 8
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_33__*, %struct.TYPE_33__** %204, align 8
  %206 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %205, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 0
  store i8* %201, i8** %212, align 8
  br label %429

213:                                              ; preds = %172
  %214 = load i8*, i8** %15, align 8
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %217, align 8
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %218, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %224, i32 0, i32 0
  store i8* %214, i8** %225, align 8
  br label %429

226:                                              ; preds = %172
  %227 = load i8, i8* %18, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 10
  br i1 %229, label %230, label %244

230:                                              ; preds = %226
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %233 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %233, i32 0, i32 0
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %234, align 8
  %236 = load i32, i32* %10, align 4
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 1
  %239 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %231, %struct.TYPE_27__* %235, i32 %236, %struct.TYPE_29__* %238)
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %241 = icmp eq %struct.TYPE_26__* %239, %240
  br i1 %241, label %242, label %243

242:                                              ; preds = %230
  store i32 -1, i32* %6, align 4
  br label %465

243:                                              ; preds = %230
  br label %244

244:                                              ; preds = %243, %226
  br label %428

245:                                              ; preds = %172
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %247 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %248 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %247, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %248, i32 0, i32 0
  %250 = load %struct.TYPE_27__*, %struct.TYPE_27__** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 1
  %254 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %246, %struct.TYPE_27__* %250, i32 %251, %struct.TYPE_29__* %253)
  %255 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %256 = icmp eq %struct.TYPE_26__* %254, %255
  br i1 %256, label %257, label %258

257:                                              ; preds = %245
  store i32 -1, i32* %6, align 4
  br label %465

258:                                              ; preds = %245
  br label %428

259:                                              ; preds = %172
  %260 = load i8*, i8** %15, align 8
  %261 = load i8*, i8** %8, align 8
  %262 = icmp eq i8* %260, %261
  br i1 %262, label %269, label %263

263:                                              ; preds = %259
  %264 = load i8*, i8** %15, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 -1
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 10
  br i1 %268, label %269, label %270

269:                                              ; preds = %263, %259
  br label %429

270:                                              ; preds = %263
  br label %428

271:                                              ; preds = %172
  %272 = load i8*, i8** %15, align 8
  %273 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %274 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %273, i32 0, i32 3
  %275 = load i8*, i8** %274, align 8
  %276 = icmp eq i8* %272, %275
  br i1 %276, label %285, label %277

277:                                              ; preds = %271
  %278 = load i8, i8* %18, align 1
  %279 = sext i8 %278 to i32
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %285, label %281

281:                                              ; preds = %277
  %282 = load i8, i8* %18, align 1
  %283 = sext i8 %282 to i32
  %284 = icmp eq i32 %283, 10
  br i1 %284, label %285, label %286

285:                                              ; preds = %281, %277, %271
  br label %429

286:                                              ; preds = %281
  br label %428

287:                                              ; preds = %172
  %288 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %289, i32 0, i32 3
  %291 = load %struct.TYPE_35__*, %struct.TYPE_35__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  store i8* %293, i8** %20, align 8
  %294 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %295 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %295, i32 0, i32 3
  %297 = load %struct.TYPE_35__*, %struct.TYPE_35__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %297, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  store i8* %299, i8** %19, align 8
  br label %300

300:                                              ; preds = %335, %287
  %301 = load i8*, i8** %19, align 8
  %302 = load i8*, i8** %20, align 8
  %303 = icmp ult i8* %301, %302
  br i1 %303, label %304, label %338

304:                                              ; preds = %300
  %305 = load i8, i8* %18, align 1
  %306 = sext i8 %305 to i32
  %307 = load i8*, i8** %19, align 8
  %308 = getelementptr inbounds i8, i8* %307, i64 0
  %309 = load i8, i8* %308, align 1
  %310 = sext i8 %309 to i32
  %311 = icmp sge i32 %306, %310
  br i1 %311, label %312, label %334

312:                                              ; preds = %304
  %313 = load i8, i8* %18, align 1
  %314 = sext i8 %313 to i32
  %315 = load i8*, i8** %19, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 1
  %317 = load i8, i8* %316, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp sle i32 %314, %318
  br i1 %319, label %320, label %334

320:                                              ; preds = %312
  %321 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %322 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %323 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %323, i32 0, i32 0
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %324, align 8
  %326 = load i32, i32* %10, align 4
  %327 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %328 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %327, i32 0, i32 1
  %329 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %321, %struct.TYPE_27__* %325, i32 %326, %struct.TYPE_29__* %328)
  %330 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %331 = icmp eq %struct.TYPE_26__* %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %320
  store i32 -1, i32* %6, align 4
  br label %465

333:                                              ; preds = %320
  br label %338

334:                                              ; preds = %312, %304
  br label %335

335:                                              ; preds = %334
  %336 = load i8*, i8** %19, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 2
  store i8* %337, i8** %19, align 8
  br label %300

338:                                              ; preds = %333, %300
  br label %428

339:                                              ; preds = %172
  %340 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %341 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %341, i32 0, i32 3
  %343 = load %struct.TYPE_35__*, %struct.TYPE_35__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  store i8* %345, i8** %20, align 8
  %346 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %347 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %346, i32 0, i32 1
  %348 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %347, i32 0, i32 3
  %349 = load %struct.TYPE_35__*, %struct.TYPE_35__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %349, i32 0, i32 1
  %351 = load i8*, i8** %350, align 8
  store i8* %351, i8** %19, align 8
  br label %352

352:                                              ; preds = %374, %339
  %353 = load i8*, i8** %19, align 8
  %354 = load i8*, i8** %20, align 8
  %355 = icmp ult i8* %353, %354
  br i1 %355, label %356, label %377

356:                                              ; preds = %352
  %357 = load i8, i8* %18, align 1
  %358 = sext i8 %357 to i32
  %359 = load i8*, i8** %19, align 8
  %360 = getelementptr inbounds i8, i8* %359, i64 0
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp sge i32 %358, %362
  br i1 %363, label %364, label %373

364:                                              ; preds = %356
  %365 = load i8, i8* %18, align 1
  %366 = sext i8 %365 to i32
  %367 = load i8*, i8** %19, align 8
  %368 = getelementptr inbounds i8, i8* %367, i64 1
  %369 = load i8, i8* %368, align 1
  %370 = sext i8 %369 to i32
  %371 = icmp sle i32 %366, %370
  br i1 %371, label %372, label %373

372:                                              ; preds = %364
  br label %377

373:                                              ; preds = %364, %356
  br label %374

374:                                              ; preds = %373
  %375 = load i8*, i8** %19, align 8
  %376 = getelementptr inbounds i8, i8* %375, i64 2
  store i8* %376, i8** %19, align 8
  br label %352

377:                                              ; preds = %372, %352
  %378 = load i8*, i8** %19, align 8
  %379 = load i8*, i8** %20, align 8
  %380 = icmp eq i8* %378, %379
  br i1 %380, label %381, label %395

381:                                              ; preds = %377
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %383 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %384 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %383, i32 0, i32 2
  %385 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %384, i32 0, i32 0
  %386 = load %struct.TYPE_27__*, %struct.TYPE_27__** %385, align 8
  %387 = load i32, i32* %10, align 4
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %389 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %388, i32 0, i32 1
  %390 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %382, %struct.TYPE_27__* %386, i32 %387, %struct.TYPE_29__* %389)
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %392 = icmp eq %struct.TYPE_26__* %390, %391
  br i1 %392, label %393, label %394

393:                                              ; preds = %381
  store i32 -1, i32* %6, align 4
  br label %465

394:                                              ; preds = %381
  br label %395

395:                                              ; preds = %394, %377
  br label %428

396:                                              ; preds = %172
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %398 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %398, i32 0, i32 1
  %400 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %399, i32 0, i32 2
  %401 = load %struct.TYPE_27__*, %struct.TYPE_27__** %400, align 8
  %402 = load i32, i32* %10, align 4
  %403 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %404 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %403, i32 0, i32 1
  %405 = call %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__* %397, %struct.TYPE_27__* %401, i32 %402, %struct.TYPE_29__* %404)
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %407 = icmp eq %struct.TYPE_26__* %405, %406
  br i1 %407, label %408, label %409

408:                                              ; preds = %396
  store i32 -1, i32* %6, align 4
  br label %465

409:                                              ; preds = %396
  br label %429

410:                                              ; preds = %172
  store i32 1, i32* %25, align 4
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

428:                                              ; preds = %172, %427, %395, %338, %286, %270, %258, %244, %199
  br label %434

429:                                              ; preds = %409, %285, %269, %213, %200
  %430 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %431 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %432, align 8
  store %struct.TYPE_27__* %433, %struct.TYPE_27__** %13, align 8
  br label %172

434:                                              ; preds = %428
  br label %435

435:                                              ; preds = %434
  %436 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %437 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %436, i32 1
  store %struct.TYPE_26__* %437, %struct.TYPE_26__** %14, align 8
  br label %162

438:                                              ; preds = %162
  %439 = load i8*, i8** %15, align 8
  %440 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %441 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %440, i32 0, i32 3
  %442 = load i8*, i8** %441, align 8
  %443 = icmp eq i8* %439, %442
  br i1 %443, label %444, label %445

444:                                              ; preds = %438
  br label %463

445:                                              ; preds = %438
  %446 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %447 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %450, label %455

450:                                              ; preds = %445
  %451 = load %struct.TYPE_26__*, %struct.TYPE_26__** %22, align 8
  %452 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = icmp eq i64 %453, 0
  br label %455

455:                                              ; preds = %450, %445
  %456 = phi i1 [ false, %445 ], [ %454, %450 ]
  %457 = zext i1 %456 to i32
  store i32 %457, i32* %17, align 4
  %458 = load i8*, i8** %15, align 8
  %459 = getelementptr inbounds i8, i8* %458, i32 1
  store i8* %459, i8** %15, align 8
  br label %460

460:                                              ; preds = %455
  %461 = load i8, i8* %18, align 1
  %462 = icmp ne i8 %461, 0
  br i1 %462, label %72, label %463

463:                                              ; preds = %460, %444
  %464 = load i32, i32* %25, align 4
  store i32 %464, i32* %6, align 4
  br label %465

465:                                              ; preds = %463, %408, %393, %332, %257, %242, %197, %114, %94
  %466 = load i32, i32* %6, align 4
  ret i32 %466
}

declare dso_local i8* @runestrchr(i8*, i8 signext) #1

declare dso_local i32 @_rrenewemptythread(%struct.TYPE_26__*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_26__* @_renewthread(%struct.TYPE_26__*, %struct.TYPE_27__*, i32, %struct.TYPE_29__*) #1

declare dso_local i32 @_renewmatch(%struct.TYPE_37__*, i32, %struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
