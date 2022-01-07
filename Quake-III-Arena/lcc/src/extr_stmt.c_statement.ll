; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_statement.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/src/extr_stmt.c_statement.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_38__ = type { %struct.TYPE_44__, i32 }
%struct.TYPE_44__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { i32 }
%struct.TYPE_34__ = type { i32, %struct.TYPE_37__*, %struct.TYPE_36__* }
%struct.TYPE_37__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_32__ = type { %struct.TYPE_40__, %struct.TYPE_35__*, i32 }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32, i32 }
%struct.TYPE_35__ = type { i32 }
%struct.TYPE_33__ = type { %struct.TYPE_46__, i32, i32 }
%struct.TYPE_46__ = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { i32 }

@refinc = common dso_local global float 0.000000e+00, align 4
@Aflag = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"more than 15 levels of nested statements\0A\00", align 1
@t = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"illegal break statement\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"illegal continue statement\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"illegal case label\0A\00", align 1
@statement.stop = internal global [3 x i8] c"\83\84\00", align 1
@CNST = common dso_local global i32 0, align 4
@needconst = common dso_local global i32 0, align 4
@UNSIGNED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [50 x i8] c"case label must be a constant integer expression\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"illegal default label\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"extra default label\0A\00", align 1
@cfunc = common dso_local global %struct.TYPE_38__* null, align 8
@voidtype = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"extraneous return value\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"missing return value\0A\00", align 1
@token = common dso_local global i32 0, align 4
@stmtlabs = common dso_local global i32 0, align 4
@FUNC = common dso_local global i32 0, align 4
@LABELS = common dso_local global i32 0, align 4
@src = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"missing label in goto\0A\00", align 1
@kind = common dso_local global i32* null, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"unrecognized statement\0A\00", align 1
@nodecount = common dso_local global i32 0, align 4
@glevel = common dso_local global i32 0, align 4
@STMT = common dso_local global i32 0, align 4
@EOI = common dso_local global i32 0, align 4
@statement.stop.11 = internal global [4 x i8] c"\83\84}\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"illegal statement termination\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @statement(i32 %0, %struct.TYPE_34__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_33__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load float, float* @refinc, align 4
  store float %13, float* %7, align 4
  %14 = load i32, i32* @Aflag, align 4
  %15 = icmp sge i32 %14, 2
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 15
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @warning(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16, %3
  %22 = load i32, i32* @t, align 4
  switch i32 %22, label %314 [
    i32 131, label %23
    i32 128, label %30
    i32 135, label %36
    i32 134, label %43
    i32 139, label %49
    i32 137, label %79
    i32 129, label %93
    i32 138, label %99
    i32 136, label %181
    i32 130, label %215
    i32 123, label %252
    i32 59, label %258
    i32 133, label %261
    i32 132, label %304
  ]

23:                                               ; preds = %21
  %24 = call i8* @genlabel(i32 2)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @ifstmt(i8* %24, i32 %25, %struct.TYPE_34__* %26, i32 %28)
  br label %347

30:                                               ; preds = %21
  %31 = call i8* @genlabel(i32 3)
  %32 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  %35 = call i32 @whilestmt(i8* %31, %struct.TYPE_34__* %32, i32 %34)
  br label %347

36:                                               ; preds = %21
  %37 = call i8* @genlabel(i32 3)
  %38 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @dostmt(i8* %37, %struct.TYPE_34__* %38, i32 %40)
  %42 = call i32 @expect(i8 signext 59)
  br label %347

43:                                               ; preds = %21
  %44 = call i8* @genlabel(i32 4)
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i32 @forstmt(i8* %44, %struct.TYPE_34__* %45, i32 %47)
  br label %347

49:                                               ; preds = %21
  %50 = call i32 @walk(i32* null, i32 0, i32 0)
  %51 = call i32 @definept(i32* null)
  %52 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %53 = icmp ne %struct.TYPE_34__* %52, null
  br i1 %53, label %54, label %66

54:                                               ; preds = %49
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  %65 = call i32 @branch(i32 %64)
  br label %76

66:                                               ; preds = %54, %49
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 2
  %72 = call i32 @branch(i32 %71)
  br label %75

73:                                               ; preds = %66
  %74 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  br label %76

76:                                               ; preds = %75, %60
  %77 = call i32 (...) @gettok()
  store i32 %77, i32* @t, align 4
  %78 = call i32 @expect(i8 signext 59)
  br label %347

79:                                               ; preds = %21
  %80 = call i32 @walk(i32* null, i32 0, i32 0)
  %81 = call i32 @definept(i32* null)
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %79
  %85 = load i32, i32* %4, align 4
  %86 = add nsw i32 %85, 1
  %87 = call i32 @branch(i32 %86)
  br label %90

88:                                               ; preds = %79
  %89 = call i32 @error(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %84
  %91 = call i32 (...) @gettok()
  store i32 %91, i32* @t, align 4
  %92 = call i32 @expect(i8 signext 59)
  br label %347

93:                                               ; preds = %21
  %94 = load i32, i32* %4, align 4
  %95 = call i8* @genlabel(i32 2)
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  %98 = call i32 @swstmt(i32 %94, i8* %95, i32 %97)
  br label %347

99:                                               ; preds = %21
  %100 = call i8* @genlabel(i32 1)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %8, align 4
  %102 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %103 = icmp eq %struct.TYPE_34__* %102, null
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = call i32 @error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %99
  %107 = load i32, i32* %8, align 4
  %108 = call i32 @definelab(i32 %107)
  br label %109

109:                                              ; preds = %175, %106
  %110 = load i32, i32* @t, align 4
  %111 = icmp eq i32 %110, 138
  br i1 %111, label %112, label %177

112:                                              ; preds = %109
  %113 = call i32 (...) @gettok()
  store i32 %113, i32* @t, align 4
  %114 = call %struct.TYPE_32__* @constexpr(i32 0)
  store %struct.TYPE_32__* %114, %struct.TYPE_32__** %9, align 8
  %115 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @generic(i32 %117)
  %119 = load i32, i32* @CNST, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %173

121:                                              ; preds = %112
  %122 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_35__*, %struct.TYPE_35__** %123, align 8
  %125 = call i32 @isint(%struct.TYPE_35__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %173

127:                                              ; preds = %121
  %128 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %129 = icmp ne %struct.TYPE_34__* %128, null
  br i1 %129, label %130, label %172

130:                                              ; preds = %127
  %131 = load i32, i32* @needconst, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* @needconst, align 4
  %133 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_36__*, %struct.TYPE_36__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call %struct.TYPE_32__* @cast(%struct.TYPE_32__* %133, i32 %138)
  store %struct.TYPE_32__* %139, %struct.TYPE_32__** %9, align 8
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_35__*, %struct.TYPE_35__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @UNSIGNED, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %161

147:                                              ; preds = %130
  %148 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_35__*, %struct.TYPE_35__** %154, align 8
  %156 = call i32 @extend(i32 %152, %struct.TYPE_35__* %155)
  %157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %159, i32 0, i32 0
  store i32 %156, i32* %160, align 8
  br label %161

161:                                              ; preds = %147, %130
  %162 = load i32, i32* @needconst, align 4
  %163 = add nsw i32 %162, -1
  store i32 %163, i32* @needconst, align 4
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = call i32 @caselabel(%struct.TYPE_34__* %164, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %161, %127
  br label %175

173:                                              ; preds = %121, %112
  %174 = call i32 @error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %172
  %176 = call i32 @test(i8 signext 58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @statement.stop, i64 0, i64 0))
  br label %109

177:                                              ; preds = %109
  %178 = load i32, i32* %4, align 4
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %180 = load i32, i32* %6, align 4
  call void @statement(i32 %178, %struct.TYPE_34__* %179, i32 %180)
  br label %347

181:                                              ; preds = %21
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %183 = icmp eq %struct.TYPE_34__* %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %209

186:                                              ; preds = %181
  %187 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %187, i32 0, i32 1
  %189 = load %struct.TYPE_37__*, %struct.TYPE_37__** %188, align 8
  %190 = icmp ne %struct.TYPE_37__* %189, null
  br i1 %190, label %191, label %193

191:                                              ; preds = %186
  %192 = call i32 @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %208

193:                                              ; preds = %186
  %194 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call %struct.TYPE_37__* @findlabel(i32 %196)
  %198 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %198, i32 0, i32 1
  store %struct.TYPE_37__* %197, %struct.TYPE_37__** %199, align 8
  %200 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_37__*, %struct.TYPE_37__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @definelab(i32 %206)
  br label %208

208:                                              ; preds = %193, %191
  br label %209

209:                                              ; preds = %208, %184
  %210 = call i32 (...) @gettok()
  store i32 %210, i32* @t, align 4
  %211 = call i32 @expect(i8 signext 58)
  %212 = load i32, i32* %4, align 4
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %214 = load i32, i32* %6, align 4
  call void @statement(i32 %212, %struct.TYPE_34__* %213, i32 %214)
  br label %347

215:                                              ; preds = %21
  %216 = load %struct.TYPE_38__*, %struct.TYPE_38__** @cfunc, align 8
  %217 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @freturn(i32 %218)
  store i32 %219, i32* %10, align 4
  %220 = call i32 (...) @gettok()
  store i32 %220, i32* @t, align 4
  %221 = call i32 @definept(i32* null)
  %222 = load i32, i32* @t, align 4
  %223 = icmp ne i32 %222, 59
  br i1 %223, label %224, label %236

224:                                              ; preds = %215
  %225 = load i32, i32* %10, align 4
  %226 = load i32, i32* @voidtype, align 4
  %227 = icmp eq i32 %225, %226
  br i1 %227, label %228, label %232

228:                                              ; preds = %224
  %229 = call i32 @error(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %230 = call i32* @expr(i32 0)
  %231 = call i32 @retcode(i32* null)
  br label %235

232:                                              ; preds = %224
  %233 = call i32* @expr(i32 0)
  %234 = call i32 @retcode(i32* %233)
  br label %235

235:                                              ; preds = %232, %228
  br label %244

236:                                              ; preds = %215
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* @voidtype, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = call i32 @warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %242

242:                                              ; preds = %240, %236
  %243 = call i32 @retcode(i32* null)
  br label %244

244:                                              ; preds = %242, %235
  %245 = load %struct.TYPE_38__*, %struct.TYPE_38__** @cfunc, align 8
  %246 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @branch(i32 %249)
  %251 = call i32 @expect(i8 signext 59)
  br label %347

252:                                              ; preds = %21
  %253 = load i32, i32* %4, align 4
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  %257 = call i32 @compound(i32 %253, %struct.TYPE_34__* %254, i32 %256)
  br label %347

258:                                              ; preds = %21
  %259 = call i32 @definept(i32* null)
  %260 = call i32 (...) @gettok()
  store i32 %260, i32* @t, align 4
  br label %347

261:                                              ; preds = %21
  %262 = call i32 @walk(i32* null, i32 0, i32 0)
  %263 = call i32 @definept(i32* null)
  %264 = call i32 (...) @gettok()
  store i32 %264, i32* @t, align 4
  %265 = load i32, i32* @t, align 4
  %266 = icmp eq i32 %265, 132
  br i1 %266, label %267, label %300

267:                                              ; preds = %261
  %268 = load i32, i32* @token, align 4
  %269 = load i32, i32* @stmtlabs, align 4
  %270 = call %struct.TYPE_33__* @lookup(i32 %268, i32 %269)
  store %struct.TYPE_33__* %270, %struct.TYPE_33__** %11, align 8
  %271 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %272 = icmp eq %struct.TYPE_33__* %271, null
  br i1 %272, label %273, label %289

273:                                              ; preds = %267
  %274 = load i32, i32* @token, align 4
  %275 = load i32, i32* @FUNC, align 4
  %276 = call %struct.TYPE_33__* @install(i32 %274, i32* @stmtlabs, i32 0, i32 %275)
  store %struct.TYPE_33__* %276, %struct.TYPE_33__** %11, align 8
  %277 = load i32, i32* @LABELS, align 4
  %278 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 4
  %280 = call i8* @genlabel(i32 1)
  %281 = ptrtoint i8* %280 to i32
  %282 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %284, i32 0, i32 0
  store i32 %281, i32* %285, align 4
  %286 = load i32, i32* @src, align 4
  %287 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %287, i32 0, i32 1
  store i32 %286, i32* %288, align 4
  br label %289

289:                                              ; preds = %273, %267
  %290 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %291 = load i32, i32* @src, align 4
  %292 = call i32 @use(%struct.TYPE_33__* %290, i32 %291)
  %293 = load %struct.TYPE_33__*, %struct.TYPE_33__** %11, align 8
  %294 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @branch(i32 %297)
  %299 = call i32 (...) @gettok()
  store i32 %299, i32* @t, align 4
  br label %302

300:                                              ; preds = %261
  %301 = call i32 @error(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %302

302:                                              ; preds = %300, %289
  %303 = call i32 @expect(i8 signext 59)
  br label %347

304:                                              ; preds = %21
  %305 = call signext i8 (...) @getchr()
  %306 = sext i8 %305 to i32
  %307 = icmp eq i32 %306, 58
  br i1 %307, label %308, label %313

308:                                              ; preds = %304
  %309 = call i32 (...) @stmtlabel()
  %310 = load i32, i32* %4, align 4
  %311 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %312 = load i32, i32* %6, align 4
  call void @statement(i32 %310, %struct.TYPE_34__* %311, i32 %312)
  br label %347

313:                                              ; preds = %304
  br label %314

314:                                              ; preds = %21, %313
  %315 = call i32 @definept(i32* null)
  %316 = load i32*, i32** @kind, align 8
  %317 = load i32, i32* @t, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 132
  br i1 %321, label %322, label %325

322:                                              ; preds = %314
  %323 = call i32 @error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0))
  %324 = call i32 (...) @gettok()
  store i32 %324, i32* @t, align 4
  br label %345

325:                                              ; preds = %314
  %326 = call %struct.TYPE_32__* @expr0(i32 0)
  store %struct.TYPE_32__* %326, %struct.TYPE_32__** %12, align 8
  %327 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %328 = call i32 @listnodes(%struct.TYPE_32__* %327, i32 0, i32 0)
  %329 = load i32, i32* @nodecount, align 4
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %334, label %331

331:                                              ; preds = %325
  %332 = load i32, i32* @nodecount, align 4
  %333 = icmp sgt i32 %332, 200
  br i1 %333, label %334, label %336

334:                                              ; preds = %331, %325
  %335 = call i32 @walk(i32* null, i32 0, i32 0)
  br label %342

336:                                              ; preds = %331
  %337 = load i32, i32* @glevel, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %341

339:                                              ; preds = %336
  %340 = call i32 @walk(i32* null, i32 0, i32 0)
  br label %341

341:                                              ; preds = %339, %336
  br label %342

342:                                              ; preds = %341, %334
  %343 = load i32, i32* @STMT, align 4
  %344 = call i32 @deallocate(i32 %343)
  br label %345

345:                                              ; preds = %342, %322
  %346 = call i32 @expect(i8 signext 59)
  br label %347

347:                                              ; preds = %345, %308, %302, %258, %252, %244, %209, %177, %93, %90, %76, %43, %36, %30, %23
  %348 = load i32*, i32** @kind, align 8
  %349 = load i32, i32* @t, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32, i32* %348, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = icmp ne i32 %352, 131
  br i1 %353, label %354, label %371

354:                                              ; preds = %347
  %355 = load i32*, i32** @kind, align 8
  %356 = load i32, i32* @t, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  %359 = load i32, i32* %358, align 4
  %360 = icmp ne i32 %359, 132
  br i1 %360, label %361, label %371

361:                                              ; preds = %354
  %362 = load i32, i32* @t, align 4
  %363 = icmp ne i32 %362, 125
  br i1 %363, label %364, label %371

364:                                              ; preds = %361
  %365 = load i32, i32* @t, align 4
  %366 = load i32, i32* @EOI, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0))
  %370 = call i32 @skipto(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @statement.stop.11, i64 0, i64 0))
  br label %371

371:                                              ; preds = %368, %364, %361, %354, %347
  %372 = load float, float* %7, align 4
  store float %372, float* @refinc, align 4
  ret void
}

declare dso_local i32 @warning(i8*) #1

declare dso_local i32 @ifstmt(i8*, i32, %struct.TYPE_34__*, i32) #1

declare dso_local i8* @genlabel(i32) #1

declare dso_local i32 @whilestmt(i8*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @dostmt(i8*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @expect(i8 signext) #1

declare dso_local i32 @forstmt(i8*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @walk(i32*, i32, i32) #1

declare dso_local i32 @definept(i32*) #1

declare dso_local i32 @branch(i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @gettok(...) #1

declare dso_local i32 @swstmt(i32, i8*, i32) #1

declare dso_local i32 @definelab(i32) #1

declare dso_local %struct.TYPE_32__* @constexpr(i32) #1

declare dso_local i32 @generic(i32) #1

declare dso_local i32 @isint(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_32__* @cast(%struct.TYPE_32__*, i32) #1

declare dso_local i32 @extend(i32, %struct.TYPE_35__*) #1

declare dso_local i32 @caselabel(%struct.TYPE_34__*, i32, i32) #1

declare dso_local i32 @test(i8 signext, i8*) #1

declare dso_local %struct.TYPE_37__* @findlabel(i32) #1

declare dso_local i32 @freturn(i32) #1

declare dso_local i32* @expr(i32) #1

declare dso_local i32 @retcode(i32*) #1

declare dso_local i32 @compound(i32, %struct.TYPE_34__*, i32) #1

declare dso_local %struct.TYPE_33__* @lookup(i32, i32) #1

declare dso_local %struct.TYPE_33__* @install(i32, i32*, i32, i32) #1

declare dso_local i32 @use(%struct.TYPE_33__*, i32) #1

declare dso_local signext i8 @getchr(...) #1

declare dso_local i32 @stmtlabel(...) #1

declare dso_local %struct.TYPE_32__* @expr0(i32) #1

declare dso_local i32 @listnodes(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i32 @deallocate(i32) #1

declare dso_local i32 @skipto(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
