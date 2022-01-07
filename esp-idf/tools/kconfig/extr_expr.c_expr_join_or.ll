; ModuleID = '/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_join_or.c'
source_filename = "/home/carl/AnghaBench/esp-idf/tools/kconfig/extr_expr.c_expr_join_or.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expr = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.expr*, %struct.symbol* }
%struct.symbol = type { i64 }
%struct.TYPE_3__ = type { i32* }

@E_EQUAL = common dso_local global i64 0, align 8
@E_UNEQUAL = common dso_local global i64 0, align 8
@E_SYMBOL = common dso_local global i64 0, align 8
@E_NOT = common dso_local global i64 0, align 8
@S_BOOLEAN = common dso_local global i64 0, align 8
@S_TRISTATE = common dso_local global i64 0, align 8
@symbol_yes = common dso_local global i32 0, align 4
@symbol_mod = common dso_local global i32 0, align 4
@symbol_no = common dso_local global i32 0, align 4
@DEBUG_EXPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"optimize (\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c") || (\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c")?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expr* (%struct.expr*, %struct.expr*)* @expr_join_or to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expr* @expr_join_or(%struct.expr* %0, %struct.expr* %1) #0 {
  %3 = alloca %struct.expr*, align 8
  %4 = alloca %struct.expr*, align 8
  %5 = alloca %struct.expr*, align 8
  %6 = alloca %struct.expr*, align 8
  %7 = alloca %struct.symbol*, align 8
  %8 = alloca %struct.symbol*, align 8
  store %struct.expr* %0, %struct.expr** %4, align 8
  store %struct.expr* %1, %struct.expr** %5, align 8
  %9 = load %struct.expr*, %struct.expr** %4, align 8
  %10 = load %struct.expr*, %struct.expr** %5, align 8
  %11 = call i64 @expr_eq(%struct.expr* %9, %struct.expr* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.expr*, %struct.expr** %4, align 8
  %15 = call %struct.expr* @expr_copy(%struct.expr* %14)
  store %struct.expr* %15, %struct.expr** %3, align 8
  br label %348

16:                                               ; preds = %2
  %17 = load %struct.expr*, %struct.expr** %4, align 8
  %18 = getelementptr inbounds %struct.expr, %struct.expr* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @E_EQUAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %16
  %23 = load %struct.expr*, %struct.expr** %4, align 8
  %24 = getelementptr inbounds %struct.expr, %struct.expr* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @E_UNEQUAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.expr*, %struct.expr** %4, align 8
  %30 = getelementptr inbounds %struct.expr, %struct.expr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @E_SYMBOL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.expr*, %struct.expr** %4, align 8
  %36 = getelementptr inbounds %struct.expr, %struct.expr* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @E_NOT, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %348

41:                                               ; preds = %34, %28, %22, %16
  %42 = load %struct.expr*, %struct.expr** %5, align 8
  %43 = getelementptr inbounds %struct.expr, %struct.expr* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @E_EQUAL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %66

47:                                               ; preds = %41
  %48 = load %struct.expr*, %struct.expr** %5, align 8
  %49 = getelementptr inbounds %struct.expr, %struct.expr* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @E_UNEQUAL, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.expr*, %struct.expr** %5, align 8
  %55 = getelementptr inbounds %struct.expr, %struct.expr* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @E_SYMBOL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53
  %60 = load %struct.expr*, %struct.expr** %5, align 8
  %61 = getelementptr inbounds %struct.expr, %struct.expr* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @E_NOT, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %348

66:                                               ; preds = %59, %53, %47, %41
  %67 = load %struct.expr*, %struct.expr** %4, align 8
  %68 = getelementptr inbounds %struct.expr, %struct.expr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @E_NOT, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %66
  %73 = load %struct.expr*, %struct.expr** %4, align 8
  %74 = getelementptr inbounds %struct.expr, %struct.expr* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load %struct.expr*, %struct.expr** %75, align 8
  store %struct.expr* %76, %struct.expr** %6, align 8
  %77 = load %struct.expr*, %struct.expr** %6, align 8
  %78 = getelementptr inbounds %struct.expr, %struct.expr* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @E_EQUAL, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %95

82:                                               ; preds = %72
  %83 = load %struct.expr*, %struct.expr** %6, align 8
  %84 = getelementptr inbounds %struct.expr, %struct.expr* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @E_UNEQUAL, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.expr*, %struct.expr** %6, align 8
  %90 = getelementptr inbounds %struct.expr, %struct.expr* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @E_SYMBOL, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %348

95:                                               ; preds = %88, %82, %72
  %96 = load %struct.expr*, %struct.expr** %6, align 8
  %97 = getelementptr inbounds %struct.expr, %struct.expr* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load %struct.symbol*, %struct.symbol** %98, align 8
  store %struct.symbol* %99, %struct.symbol** %7, align 8
  br label %105

100:                                              ; preds = %66
  %101 = load %struct.expr*, %struct.expr** %4, align 8
  %102 = getelementptr inbounds %struct.expr, %struct.expr* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load %struct.symbol*, %struct.symbol** %103, align 8
  store %struct.symbol* %104, %struct.symbol** %7, align 8
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.expr*, %struct.expr** %5, align 8
  %107 = getelementptr inbounds %struct.expr, %struct.expr* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @E_NOT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %105
  %112 = load %struct.expr*, %struct.expr** %5, align 8
  %113 = getelementptr inbounds %struct.expr, %struct.expr* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load %struct.expr*, %struct.expr** %114, align 8
  %116 = getelementptr inbounds %struct.expr, %struct.expr* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @E_SYMBOL, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %111
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %348

121:                                              ; preds = %111
  %122 = load %struct.expr*, %struct.expr** %5, align 8
  %123 = getelementptr inbounds %struct.expr, %struct.expr* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.expr*, %struct.expr** %124, align 8
  %126 = getelementptr inbounds %struct.expr, %struct.expr* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = load %struct.symbol*, %struct.symbol** %127, align 8
  store %struct.symbol* %128, %struct.symbol** %8, align 8
  br label %134

129:                                              ; preds = %105
  %130 = load %struct.expr*, %struct.expr** %5, align 8
  %131 = getelementptr inbounds %struct.expr, %struct.expr* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 1
  %133 = load %struct.symbol*, %struct.symbol** %132, align 8
  store %struct.symbol* %133, %struct.symbol** %8, align 8
  br label %134

134:                                              ; preds = %129, %121
  %135 = load %struct.symbol*, %struct.symbol** %7, align 8
  %136 = load %struct.symbol*, %struct.symbol** %8, align 8
  %137 = icmp ne %struct.symbol* %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %348

139:                                              ; preds = %134
  %140 = load %struct.symbol*, %struct.symbol** %7, align 8
  %141 = getelementptr inbounds %struct.symbol, %struct.symbol* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @S_BOOLEAN, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.symbol*, %struct.symbol** %7, align 8
  %147 = getelementptr inbounds %struct.symbol, %struct.symbol* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @S_TRISTATE, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %145
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %348

152:                                              ; preds = %145, %139
  %153 = load %struct.symbol*, %struct.symbol** %7, align 8
  %154 = getelementptr inbounds %struct.symbol, %struct.symbol* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @S_TRISTATE, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %279

158:                                              ; preds = %152
  %159 = load %struct.expr*, %struct.expr** %4, align 8
  %160 = getelementptr inbounds %struct.expr, %struct.expr* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @E_EQUAL, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %198

164:                                              ; preds = %158
  %165 = load %struct.expr*, %struct.expr** %5, align 8
  %166 = getelementptr inbounds %struct.expr, %struct.expr* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @E_EQUAL, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %198

170:                                              ; preds = %164
  %171 = load %struct.expr*, %struct.expr** %4, align 8
  %172 = getelementptr inbounds %struct.expr, %struct.expr* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = icmp eq i32* %174, @symbol_yes
  br i1 %175, label %176, label %182

176:                                              ; preds = %170
  %177 = load %struct.expr*, %struct.expr** %5, align 8
  %178 = getelementptr inbounds %struct.expr, %struct.expr* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = icmp eq i32* %180, @symbol_mod
  br i1 %181, label %194, label %182

182:                                              ; preds = %176, %170
  %183 = load %struct.expr*, %struct.expr** %4, align 8
  %184 = getelementptr inbounds %struct.expr, %struct.expr* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = icmp eq i32* %186, @symbol_mod
  br i1 %187, label %188, label %198

188:                                              ; preds = %182
  %189 = load %struct.expr*, %struct.expr** %5, align 8
  %190 = getelementptr inbounds %struct.expr, %struct.expr* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = icmp eq i32* %192, @symbol_yes
  br i1 %193, label %194, label %198

194:                                              ; preds = %188, %176
  %195 = load i64, i64* @E_UNEQUAL, align 8
  %196 = load %struct.symbol*, %struct.symbol** %7, align 8
  %197 = call %struct.expr* @expr_alloc_comp(i64 %195, %struct.symbol* %196, i32* @symbol_no)
  store %struct.expr* %197, %struct.expr** %3, align 8
  br label %348

198:                                              ; preds = %188, %182, %164, %158
  %199 = load %struct.expr*, %struct.expr** %4, align 8
  %200 = getelementptr inbounds %struct.expr, %struct.expr* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @E_EQUAL, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %238

204:                                              ; preds = %198
  %205 = load %struct.expr*, %struct.expr** %5, align 8
  %206 = getelementptr inbounds %struct.expr, %struct.expr* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @E_EQUAL, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %238

210:                                              ; preds = %204
  %211 = load %struct.expr*, %struct.expr** %4, align 8
  %212 = getelementptr inbounds %struct.expr, %struct.expr* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = icmp eq i32* %214, @symbol_yes
  br i1 %215, label %216, label %222

216:                                              ; preds = %210
  %217 = load %struct.expr*, %struct.expr** %5, align 8
  %218 = getelementptr inbounds %struct.expr, %struct.expr* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = icmp eq i32* %220, @symbol_no
  br i1 %221, label %234, label %222

222:                                              ; preds = %216, %210
  %223 = load %struct.expr*, %struct.expr** %4, align 8
  %224 = getelementptr inbounds %struct.expr, %struct.expr* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = icmp eq i32* %226, @symbol_no
  br i1 %227, label %228, label %238

228:                                              ; preds = %222
  %229 = load %struct.expr*, %struct.expr** %5, align 8
  %230 = getelementptr inbounds %struct.expr, %struct.expr* %229, i32 0, i32 2
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = icmp eq i32* %232, @symbol_yes
  br i1 %233, label %234, label %238

234:                                              ; preds = %228, %216
  %235 = load i64, i64* @E_UNEQUAL, align 8
  %236 = load %struct.symbol*, %struct.symbol** %7, align 8
  %237 = call %struct.expr* @expr_alloc_comp(i64 %235, %struct.symbol* %236, i32* @symbol_mod)
  store %struct.expr* %237, %struct.expr** %3, align 8
  br label %348

238:                                              ; preds = %228, %222, %204, %198
  %239 = load %struct.expr*, %struct.expr** %4, align 8
  %240 = getelementptr inbounds %struct.expr, %struct.expr* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @E_EQUAL, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %278

244:                                              ; preds = %238
  %245 = load %struct.expr*, %struct.expr** %5, align 8
  %246 = getelementptr inbounds %struct.expr, %struct.expr* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @E_EQUAL, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %278

250:                                              ; preds = %244
  %251 = load %struct.expr*, %struct.expr** %4, align 8
  %252 = getelementptr inbounds %struct.expr, %struct.expr* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = icmp eq i32* %254, @symbol_mod
  br i1 %255, label %256, label %262

256:                                              ; preds = %250
  %257 = load %struct.expr*, %struct.expr** %5, align 8
  %258 = getelementptr inbounds %struct.expr, %struct.expr* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = icmp eq i32* %260, @symbol_no
  br i1 %261, label %274, label %262

262:                                              ; preds = %256, %250
  %263 = load %struct.expr*, %struct.expr** %4, align 8
  %264 = getelementptr inbounds %struct.expr, %struct.expr* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 0
  %266 = load i32*, i32** %265, align 8
  %267 = icmp eq i32* %266, @symbol_no
  br i1 %267, label %268, label %278

268:                                              ; preds = %262
  %269 = load %struct.expr*, %struct.expr** %5, align 8
  %270 = getelementptr inbounds %struct.expr, %struct.expr* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = icmp eq i32* %272, @symbol_mod
  br i1 %273, label %274, label %278

274:                                              ; preds = %268, %256
  %275 = load i64, i64* @E_UNEQUAL, align 8
  %276 = load %struct.symbol*, %struct.symbol** %7, align 8
  %277 = call %struct.expr* @expr_alloc_comp(i64 %275, %struct.symbol* %276, i32* @symbol_yes)
  store %struct.expr* %277, %struct.expr** %3, align 8
  br label %348

278:                                              ; preds = %268, %262, %244, %238
  br label %279

279:                                              ; preds = %278, %152
  %280 = load %struct.symbol*, %struct.symbol** %7, align 8
  %281 = getelementptr inbounds %struct.symbol, %struct.symbol* %280, i32 0, i32 0
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @S_BOOLEAN, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %334

285:                                              ; preds = %279
  %286 = load %struct.symbol*, %struct.symbol** %7, align 8
  %287 = load %struct.symbol*, %struct.symbol** %8, align 8
  %288 = icmp eq %struct.symbol* %286, %287
  br i1 %288, label %289, label %334

289:                                              ; preds = %285
  %290 = load %struct.expr*, %struct.expr** %4, align 8
  %291 = getelementptr inbounds %struct.expr, %struct.expr* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @E_NOT, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %310

295:                                              ; preds = %289
  %296 = load %struct.expr*, %struct.expr** %4, align 8
  %297 = getelementptr inbounds %struct.expr, %struct.expr* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = load %struct.expr*, %struct.expr** %298, align 8
  %300 = getelementptr inbounds %struct.expr, %struct.expr* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @E_SYMBOL, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %295
  %305 = load %struct.expr*, %struct.expr** %5, align 8
  %306 = getelementptr inbounds %struct.expr, %struct.expr* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @E_SYMBOL, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %331, label %310

310:                                              ; preds = %304, %295, %289
  %311 = load %struct.expr*, %struct.expr** %5, align 8
  %312 = getelementptr inbounds %struct.expr, %struct.expr* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @E_NOT, align 8
  %315 = icmp eq i64 %313, %314
  br i1 %315, label %316, label %333

316:                                              ; preds = %310
  %317 = load %struct.expr*, %struct.expr** %5, align 8
  %318 = getelementptr inbounds %struct.expr, %struct.expr* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %318, i32 0, i32 0
  %320 = load %struct.expr*, %struct.expr** %319, align 8
  %321 = getelementptr inbounds %struct.expr, %struct.expr* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @E_SYMBOL, align 8
  %324 = icmp eq i64 %322, %323
  br i1 %324, label %325, label %333

325:                                              ; preds = %316
  %326 = load %struct.expr*, %struct.expr** %4, align 8
  %327 = getelementptr inbounds %struct.expr, %struct.expr* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @E_SYMBOL, align 8
  %330 = icmp eq i64 %328, %329
  br i1 %330, label %331, label %333

331:                                              ; preds = %325, %304
  %332 = call %struct.expr* @expr_alloc_symbol(i32* @symbol_yes)
  store %struct.expr* %332, %struct.expr** %3, align 8
  br label %348

333:                                              ; preds = %325, %316, %310
  br label %334

334:                                              ; preds = %333, %285, %279
  %335 = load i64, i64* @DEBUG_EXPR, align 8
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %347

337:                                              ; preds = %334
  %338 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %339 = load %struct.expr*, %struct.expr** %4, align 8
  %340 = load i32, i32* @stdout, align 4
  %341 = call i32 @expr_fprint(%struct.expr* %339, i32 %340)
  %342 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %343 = load %struct.expr*, %struct.expr** %5, align 8
  %344 = load i32, i32* @stdout, align 4
  %345 = call i32 @expr_fprint(%struct.expr* %343, i32 %344)
  %346 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  br label %347

347:                                              ; preds = %337, %334
  store %struct.expr* null, %struct.expr** %3, align 8
  br label %348

348:                                              ; preds = %347, %331, %274, %234, %194, %151, %138, %120, %94, %65, %40, %13
  %349 = load %struct.expr*, %struct.expr** %3, align 8
  ret %struct.expr* %349
}

declare dso_local i64 @expr_eq(%struct.expr*, %struct.expr*) #1

declare dso_local %struct.expr* @expr_copy(%struct.expr*) #1

declare dso_local %struct.expr* @expr_alloc_comp(i64, %struct.symbol*, i32*) #1

declare dso_local %struct.expr* @expr_alloc_symbol(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @expr_fprint(%struct.expr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
