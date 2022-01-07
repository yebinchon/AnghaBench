; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_advance_ticks.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_mzpokeysnd.c_advance_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, i64, i64, i64, i8*, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)*, i64, i64, i32 (%struct.TYPE_18__*, i32, i32, i32)*, i32, i64, i32 (%struct.TYPE_18__*, i32, i32, i32)*, i32, i64, i32 (%struct.TYPE_18__*, i32, i32, i32)*, i32, i32 (%struct.TYPE_18__*, i32, i32, i32)*, i32, i64, i64 }

@poly5tbl = common dso_local global i32* null, align 8
@poly4tbl = common dso_local global i32* null, align 8
@poly9tbl = common dso_local global i32* null, align 8
@poly17tbl = common dso_local global i32* null, align 8
@pokeymix = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32)* @advance_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advance_ticks(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %438

23:                                               ; preds = %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 38
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %29, i32 0, i32 38
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %33, %36
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = add i64 %37, %40
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = add i64 %41, %44
  %46 = inttoptr i64 %45 to i8*
  store i8* %46, i8** %14, align 8
  %47 = load i8*, i8** %14, align 8
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %47, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %28
  %53 = load i8*, i8** %14, align 8
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 5
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = load i8*, i8** %14, align 8
  %58 = call i32 @add_change(%struct.TYPE_18__* %56, i8* %57)
  br label %59

59:                                               ; preds = %52, %28
  br label %60

60:                                               ; preds = %59, %23
  br label %61

61:                                               ; preds = %437, %60
  %62 = load i32, i32* %4, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %438

64:                                               ; preds = %61
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  store i32 %67, i32* %7, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %8, align 4
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %9, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 36
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %64
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %87, %83, %64
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 34
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %94, %89
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 31
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = load i32, i32* %9, align 4
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %109, %105, %100
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 28
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %116, %111
  %123 = load i32, i32* %6, align 4
  %124 = load i32, i32* %4, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = load i32, i32* %4, align 4
  store i32 %127, i32* %5, align 4
  br label %130

128:                                              ; preds = %122
  %129 = load i32, i32* %6, align 4
  store i32 %129, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %130

130:                                              ; preds = %128, %126
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %4, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %4, align 4
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 36
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %144, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* %5, align 4
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = sub nsw i32 %142, %139
  store i32 %143, i32* %141, align 8
  br label %144

144:                                              ; preds = %138, %130
  %145 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 34
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %149, %144
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %156, i32 0, i32 31
  %158 = load i32, i32* %157, align 8
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %166, label %160

160:                                              ; preds = %155
  %161 = load i32, i32* %5, align 4
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 8
  %164 = load i32, i32* %163, align 8
  %165 = sub nsw i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %160, %155
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 28
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %5, align 4
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %171, %166
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @advance_polies(%struct.TYPE_18__* %178, i32 %179)
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @bump_qe_subticks(%struct.TYPE_18__* %181, i32 %182)
  %184 = load i32, i32* %19, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %437

186:                                              ; preds = %177
  %187 = load i32*, i32** @poly5tbl, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 10
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 1
  store i32 %193, i32* %11, align 4
  %194 = load i32*, i32** @poly4tbl, align 8
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 11
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, 1
  store i32 %200, i32* %12, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 37
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %213

205:                                              ; preds = %186
  %206 = load i32*, i32** @poly9tbl, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 12
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds i32, i32* %206, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 1
  store i32 %212, i32* %13, align 4
  br label %221

213:                                              ; preds = %186
  %214 = load i32*, i32** @poly17tbl, align 8
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 13
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = and i32 %219, 1
  store i32 %220, i32* %13, align 4
  br label %221

221:                                              ; preds = %213, %205
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 36
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %244, label %226

226:                                              ; preds = %221
  %227 = load i32, i32* %5, align 4
  %228 = load i32, i32* %7, align 4
  %229 = icmp eq i32 %227, %228
  br i1 %229, label %230, label %244

230:                                              ; preds = %226
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 35
  %233 = load i32 (%struct.TYPE_18__*, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32, i32, i32)** %232, align 8
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %235 = load i32, i32* %11, align 4
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* %13, align 4
  %238 = call i32 %233(%struct.TYPE_18__* %234, i32 %235, i32 %236, i32 %237)
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 14
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 6
  store i32 %241, i32* %243, align 8
  store i32 1, i32* %15, align 4
  br label %244

244:                                              ; preds = %230, %226, %221
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 34
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %290, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* %5, align 4
  %251 = load i32, i32* %8, align 4
  %252 = icmp eq i32 %250, %251
  br i1 %252, label %253, label %290

253:                                              ; preds = %249
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %255 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %254, i32 0, i32 33
  %256 = load i32 (%struct.TYPE_18__*, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32, i32, i32)** %255, align 8
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* %12, align 4
  %260 = load i32, i32* %13, align 4
  %261 = call i32 %256(%struct.TYPE_18__* %257, i32 %258, i32 %259, i32 %260)
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 15
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 7
  store i32 %264, i32* %266, align 4
  %267 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %268 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %267, i32 0, i32 32
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %253
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 16
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %276 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %275, i32 0, i32 6
  store i32 %274, i32* %276, align 8
  br label %277

277:                                              ; preds = %271, %253
  store i32 1, i32* %16, align 4
  %278 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %278, i32 0, i32 17
  %280 = load i32, i32* %279, align 4
  %281 = and i32 %280, 136
  %282 = icmp eq i32 %281, 136
  br i1 %282, label %283, label %289

283:                                              ; preds = %277
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 14
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 6
  store i32 %286, i32* %288, align 8
  br label %289

289:                                              ; preds = %283, %277
  br label %290

290:                                              ; preds = %289, %249, %244
  %291 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %291, i32 0, i32 31
  %293 = load i32, i32* %292, align 8
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %319, label %295

295:                                              ; preds = %290
  %296 = load i32, i32* %5, align 4
  %297 = load i32, i32* %9, align 4
  %298 = icmp eq i32 %296, %297
  br i1 %298, label %299, label %319

299:                                              ; preds = %295
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 30
  %302 = load i32 (%struct.TYPE_18__*, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32, i32, i32)** %301, align 8
  %303 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* %12, align 4
  %306 = load i32, i32* %13, align 4
  %307 = call i32 %302(%struct.TYPE_18__* %303, i32 %304, i32 %305, i32 %306)
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %308, i32 0, i32 18
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 8
  store i32 %310, i32* %312, align 8
  store i32 1, i32* %17, align 4
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 29
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %299
  store i32 1, i32* %15, align 4
  br label %318

318:                                              ; preds = %317, %299
  br label %319

319:                                              ; preds = %318, %295, %290
  %320 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %321 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %320, i32 0, i32 28
  %322 = load i32, i32* %321, align 8
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %359, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* %5, align 4
  %326 = load i32, i32* %10, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %328, label %359

328:                                              ; preds = %324
  %329 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %330 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %329, i32 0, i32 27
  %331 = load i32 (%struct.TYPE_18__*, i32, i32, i32)*, i32 (%struct.TYPE_18__*, i32, i32, i32)** %330, align 8
  %332 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %333 = load i32, i32* %11, align 4
  %334 = load i32, i32* %12, align 4
  %335 = load i32, i32* %13, align 4
  %336 = call i32 %331(%struct.TYPE_18__* %332, i32 %333, i32 %334, i32 %335)
  %337 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %337, i32 0, i32 19
  %339 = load i32, i32* %338, align 4
  %340 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %341 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %340, i32 0, i32 9
  store i32 %339, i32* %341, align 4
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 26
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %328
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 20
  %349 = load i32, i32* %348, align 8
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 8
  store i32 %349, i32* %351, align 8
  br label %352

352:                                              ; preds = %346, %328
  store i32 1, i32* %18, align 4
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 25
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %352
  store i32 1, i32* %16, align 4
  br label %358

358:                                              ; preds = %357, %352
  br label %359

359:                                              ; preds = %358, %324, %319
  %360 = load i32, i32* %15, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %371

362:                                              ; preds = %359
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 21
  %365 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %364, align 8
  %366 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %367 = call i64 %365(%struct.TYPE_18__* %366)
  %368 = mul i64 2, %367
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 0
  store i64 %368, i64* %370, align 8
  br label %371

371:                                              ; preds = %362, %359
  %372 = load i32, i32* %16, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %383

374:                                              ; preds = %371
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %376 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i32 0, i32 22
  %377 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %376, align 8
  %378 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %379 = call i64 %377(%struct.TYPE_18__* %378)
  %380 = mul i64 2, %379
  %381 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %382 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %381, i32 0, i32 1
  store i64 %380, i64* %382, align 8
  br label %383

383:                                              ; preds = %374, %371
  %384 = load i32, i32* %17, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %395

386:                                              ; preds = %383
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 23
  %389 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %388, align 8
  %390 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %391 = call i64 %389(%struct.TYPE_18__* %390)
  %392 = mul i64 2, %391
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 2
  store i64 %392, i64* %394, align 8
  br label %395

395:                                              ; preds = %386, %383
  %396 = load i32, i32* %18, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %407

398:                                              ; preds = %395
  %399 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %399, i32 0, i32 24
  %401 = load i64 (%struct.TYPE_18__*)*, i64 (%struct.TYPE_18__*)** %400, align 8
  %402 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %403 = call i64 %401(%struct.TYPE_18__* %402)
  %404 = mul i64 2, %403
  %405 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %405, i32 0, i32 3
  store i64 %404, i64* %406, align 8
  br label %407

407:                                              ; preds = %398, %395
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %408, i32 0, i32 0
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = add i64 %410, %413
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = add i64 %414, %417
  %419 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %419, i32 0, i32 3
  %421 = load i64, i64* %420, align 8
  %422 = add i64 %418, %421
  %423 = inttoptr i64 %422 to i8*
  store i8* %423, i8** %14, align 8
  %424 = load i8*, i8** %14, align 8
  %425 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %425, i32 0, i32 5
  %427 = load i8*, i8** %426, align 8
  %428 = icmp ne i8* %424, %427
  br i1 %428, label %429, label %436

429:                                              ; preds = %407
  %430 = load i8*, i8** %14, align 8
  %431 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 5
  store i8* %430, i8** %432, align 8
  %433 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %434 = load i8*, i8** %14, align 8
  %435 = call i32 @add_change(%struct.TYPE_18__* %433, i8* %434)
  br label %436

436:                                              ; preds = %429, %407
  br label %437

437:                                              ; preds = %436, %177
  br label %61

438:                                              ; preds = %22, %61
  ret void
}

declare dso_local i32 @add_change(%struct.TYPE_18__*, i8*) #1

declare dso_local i32 @advance_polies(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @bump_qe_subticks(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
