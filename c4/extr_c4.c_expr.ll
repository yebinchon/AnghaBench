; ModuleID = '/home/carl/AnghaBench/c4/extr_c4.c_expr.c'
source_filename = "/home/carl/AnghaBench/c4/extr_c4.c_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tk = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [34 x i8] c"%d: unexpected eof in expression\0A\00", align 1
@line = common dso_local global i32 0, align 4
@Num = common dso_local global i8 0, align 1
@IMM = common dso_local global i32 0, align 4
@e = common dso_local global i32* null, align 8
@ival = common dso_local global i32 0, align 4
@INT = common dso_local global i32 0, align 4
@ty = common dso_local global i32 0, align 4
@data = common dso_local global i8* null, align 8
@PTR = common dso_local global i32 0, align 4
@Sizeof = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"%d: open paren expected in sizeof\0A\00", align 1
@Int = common dso_local global i8 0, align 1
@Char = common dso_local global i8 0, align 1
@CHAR = common dso_local global i32 0, align 4
@Mul = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"%d: close paren expected in sizeof\0A\00", align 1
@Id = common dso_local global i8 0, align 1
@id = common dso_local global i32* null, align 8
@Assign = common dso_local global i8 0, align 1
@PSH = common dso_local global i32 0, align 4
@Class = common dso_local global i64 0, align 8
@Sys = common dso_local global i32 0, align 4
@Val = common dso_local global i64 0, align 8
@Fun = common dso_local global i32 0, align 4
@JSR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"%d: bad function call\0A\00", align 1
@ADJ = common dso_local global i32 0, align 4
@Type = common dso_local global i64 0, align 8
@Loc = common dso_local global i32 0, align 4
@LEA = common dso_local global i32 0, align 4
@loc = common dso_local global i32 0, align 4
@Glo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"%d: undefined variable\0A\00", align 1
@LC = common dso_local global i32 0, align 4
@LI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"%d: bad cast\0A\00", align 1
@Inc = common dso_local global i8 0, align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"%d: close paren expected\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"%d: bad dereference\0A\00", align 1
@And = common dso_local global i8 0, align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"%d: bad address-of\0A\00", align 1
@EQ = common dso_local global i32 0, align 4
@XOR = common dso_local global i32 0, align 4
@Add = common dso_local global i8 0, align 1
@Sub = common dso_local global i8 0, align 1
@MUL = common dso_local global i32 0, align 4
@Dec = common dso_local global i8 0, align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"%d: bad lvalue in pre-increment\0A\00", align 1
@ADD = common dso_local global i32 0, align 4
@SUB = common dso_local global i32 0, align 4
@SC = common dso_local global i32 0, align 4
@SI = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"%d: bad expression\0A\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"%d: bad lvalue in assignment\0A\00", align 1
@Cond = common dso_local global i8 0, align 1
@BZ = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"%d: conditional missing colon\0A\00", align 1
@JMP = common dso_local global i32 0, align 4
@Lor = common dso_local global i8 0, align 1
@BNZ = common dso_local global i32 0, align 4
@Lan = common dso_local global i8 0, align 1
@Or = common dso_local global i8 0, align 1
@Xor = common dso_local global i8 0, align 1
@OR = common dso_local global i32 0, align 4
@Eq = common dso_local global i8 0, align 1
@AND = common dso_local global i32 0, align 4
@Lt = common dso_local global i8 0, align 1
@Ne = common dso_local global i8 0, align 1
@NE = common dso_local global i32 0, align 4
@Shl = common dso_local global i8 0, align 1
@LT = common dso_local global i32 0, align 4
@Gt = common dso_local global i8 0, align 1
@GT = common dso_local global i32 0, align 4
@Le = common dso_local global i8 0, align 1
@LE = common dso_local global i32 0, align 4
@Ge = common dso_local global i8 0, align 1
@GE = common dso_local global i32 0, align 4
@SHL = common dso_local global i32 0, align 4
@Shr = common dso_local global i8 0, align 1
@SHR = common dso_local global i32 0, align 4
@DIV = common dso_local global i32 0, align 4
@Div = common dso_local global i8 0, align 1
@Mod = common dso_local global i8 0, align 1
@MOD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [34 x i8] c"%d: bad lvalue in post-increment\0A\00", align 1
@Brak = common dso_local global i8 0, align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"%d: close bracket expected\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"%d: pointer type expected\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"%d: compiler error tk=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @expr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i8, i8* @tk, align 1
  %6 = icmp ne i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @line, align 4
  %9 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = call i32 @exit(i32 -1) #3
  unreachable

11:                                               ; preds = %1
  %12 = load i8, i8* @tk, align 1
  %13 = sext i8 %12 to i32
  %14 = load i8, i8* @Num, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %13, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %11
  %18 = load i32, i32* @IMM, align 4
  %19 = load i32*, i32** @e, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** @e, align 8
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @ival, align 4
  %22 = load i32*, i32** @e, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** @e, align 8
  store i32 %21, i32* %23, align 4
  %24 = call i32 (...) @next()
  %25 = load i32, i32* @INT, align 4
  store i32 %25, i32* @ty, align 4
  br label %599

26:                                               ; preds = %11
  %27 = load i8, i8* @tk, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 34
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load i32, i32* @IMM, align 4
  %32 = load i32*, i32** @e, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** @e, align 8
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @ival, align 4
  %35 = load i32*, i32** @e, align 8
  %36 = getelementptr inbounds i32, i32* %35, i32 1
  store i32* %36, i32** @e, align 8
  store i32 %34, i32* %36, align 4
  %37 = call i32 (...) @next()
  br label %38

38:                                               ; preds = %42, %30
  %39 = load i8, i8* @tk, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 34
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 (...) @next()
  br label %38

44:                                               ; preds = %38
  %45 = load i8*, i8** @data, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = sext i32 %46 to i64
  %48 = add i64 %47, 4
  %49 = and i64 %48, -4
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** @data, align 8
  %51 = load i32, i32* @PTR, align 4
  store i32 %51, i32* @ty, align 4
  br label %598

52:                                               ; preds = %26
  %53 = load i8, i8* @tk, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* @Sizeof, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %123

58:                                               ; preds = %52
  %59 = call i32 (...) @next()
  %60 = load i8, i8* @tk, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 40
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (...) @next()
  br label %69

65:                                               ; preds = %58
  %66 = load i32, i32* @line, align 4
  %67 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = call i32 @exit(i32 -1) #3
  unreachable

69:                                               ; preds = %63
  %70 = load i32, i32* @INT, align 4
  store i32 %70, i32* @ty, align 4
  %71 = load i8, i8* @tk, align 1
  %72 = sext i8 %71 to i32
  %73 = load i8, i8* @Int, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = call i32 (...) @next()
  br label %88

78:                                               ; preds = %69
  %79 = load i8, i8* @tk, align 1
  %80 = sext i8 %79 to i32
  %81 = load i8, i8* @Char, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = call i32 (...) @next()
  %86 = load i32, i32* @CHAR, align 4
  store i32 %86, i32* @ty, align 4
  br label %87

87:                                               ; preds = %84, %78
  br label %88

88:                                               ; preds = %87, %76
  br label %89

89:                                               ; preds = %95, %88
  %90 = load i8, i8* @tk, align 1
  %91 = sext i8 %90 to i32
  %92 = load i8, i8* @Mul, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = call i32 (...) @next()
  %97 = load i32, i32* @ty, align 4
  %98 = load i32, i32* @PTR, align 4
  %99 = add nsw i32 %97, %98
  store i32 %99, i32* @ty, align 4
  br label %89

100:                                              ; preds = %89
  %101 = load i8, i8* @tk, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 41
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 (...) @next()
  br label %110

106:                                              ; preds = %100
  %107 = load i32, i32* @line, align 4
  %108 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  %109 = call i32 @exit(i32 -1) #3
  unreachable

110:                                              ; preds = %104
  %111 = load i32, i32* @IMM, align 4
  %112 = load i32*, i32** @e, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** @e, align 8
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @ty, align 4
  %115 = load i32, i32* @CHAR, align 4
  %116 = icmp eq i32 %114, %115
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i64 1, i64 4
  %119 = trunc i64 %118 to i32
  %120 = load i32*, i32** @e, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 1
  store i32* %121, i32** @e, align 8
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @INT, align 4
  store i32 %122, i32* @ty, align 4
  br label %597

123:                                              ; preds = %52
  %124 = load i8, i8* @tk, align 1
  %125 = sext i8 %124 to i32
  %126 = load i8, i8* @Id, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %284

129:                                              ; preds = %123
  %130 = load i32*, i32** @id, align 8
  store i32* %130, i32** %4, align 8
  %131 = call i32 (...) @next()
  %132 = load i8, i8* @tk, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp eq i32 %133, 40
  br i1 %134, label %135, label %207

135:                                              ; preds = %129
  %136 = call i32 (...) @next()
  store i32 0, i32* %3, align 4
  br label %137

137:                                              ; preds = %154, %135
  %138 = load i8, i8* @tk, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp ne i32 %139, 41
  br i1 %140, label %141, label %155

141:                                              ; preds = %137
  %142 = load i8, i8* @Assign, align 1
  %143 = sext i8 %142 to i32
  call void @expr(i32 %143)
  %144 = load i32, i32* @PSH, align 4
  %145 = load i32*, i32** @e, align 8
  %146 = getelementptr inbounds i32, i32* %145, i32 1
  store i32* %146, i32** @e, align 8
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %3, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %3, align 4
  %149 = load i8, i8* @tk, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 44
  br i1 %151, label %152, label %154

152:                                              ; preds = %141
  %153 = call i32 (...) @next()
  br label %154

154:                                              ; preds = %152, %141
  br label %137

155:                                              ; preds = %137
  %156 = call i32 (...) @next()
  %157 = load i32*, i32** %4, align 8
  %158 = load i64, i64* @Class, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @Sys, align 4
  %162 = icmp eq i32 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %155
  %164 = load i32*, i32** %4, align 8
  %165 = load i64, i64* @Val, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** @e, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** @e, align 8
  store i32 %167, i32* %169, align 4
  br label %192

170:                                              ; preds = %155
  %171 = load i32*, i32** %4, align 8
  %172 = load i64, i64* @Class, align 8
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @Fun, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %170
  %178 = load i32, i32* @JSR, align 4
  %179 = load i32*, i32** @e, align 8
  %180 = getelementptr inbounds i32, i32* %179, i32 1
  store i32* %180, i32** @e, align 8
  store i32 %178, i32* %180, align 4
  %181 = load i32*, i32** %4, align 8
  %182 = load i64, i64* @Val, align 8
  %183 = getelementptr inbounds i32, i32* %181, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = load i32*, i32** @e, align 8
  %186 = getelementptr inbounds i32, i32* %185, i32 1
  store i32* %186, i32** @e, align 8
  store i32 %184, i32* %186, align 4
  br label %191

187:                                              ; preds = %170
  %188 = load i32, i32* @line, align 4
  %189 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = call i32 @exit(i32 -1) #3
  unreachable

191:                                              ; preds = %177
  br label %192

192:                                              ; preds = %191, %163
  %193 = load i32, i32* %3, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %202

195:                                              ; preds = %192
  %196 = load i32, i32* @ADJ, align 4
  %197 = load i32*, i32** @e, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** @e, align 8
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %3, align 4
  %200 = load i32*, i32** @e, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** @e, align 8
  store i32 %199, i32* %201, align 4
  br label %202

202:                                              ; preds = %195, %192
  %203 = load i32*, i32** %4, align 8
  %204 = load i64, i64* @Type, align 8
  %205 = getelementptr inbounds i32, i32* %203, i64 %204
  %206 = load i32, i32* %205, align 4
  store i32 %206, i32* @ty, align 4
  br label %283

207:                                              ; preds = %129
  %208 = load i32*, i32** %4, align 8
  %209 = load i64, i64* @Class, align 8
  %210 = getelementptr inbounds i32, i32* %208, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i8, i8* @Num, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %211, %213
  br i1 %214, label %215, label %226

215:                                              ; preds = %207
  %216 = load i32, i32* @IMM, align 4
  %217 = load i32*, i32** @e, align 8
  %218 = getelementptr inbounds i32, i32* %217, i32 1
  store i32* %218, i32** @e, align 8
  store i32 %216, i32* %218, align 4
  %219 = load i32*, i32** %4, align 8
  %220 = load i64, i64* @Val, align 8
  %221 = getelementptr inbounds i32, i32* %219, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** @e, align 8
  %224 = getelementptr inbounds i32, i32* %223, i32 1
  store i32* %224, i32** @e, align 8
  store i32 %222, i32* %224, align 4
  %225 = load i32, i32* @INT, align 4
  store i32 %225, i32* @ty, align 4
  br label %282

226:                                              ; preds = %207
  %227 = load i32*, i32** %4, align 8
  %228 = load i64, i64* @Class, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @Loc, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %245

233:                                              ; preds = %226
  %234 = load i32, i32* @LEA, align 4
  %235 = load i32*, i32** @e, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 1
  store i32* %236, i32** @e, align 8
  store i32 %234, i32* %236, align 4
  %237 = load i32, i32* @loc, align 4
  %238 = load i32*, i32** %4, align 8
  %239 = load i64, i64* @Val, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %237, %241
  %243 = load i32*, i32** @e, align 8
  %244 = getelementptr inbounds i32, i32* %243, i32 1
  store i32* %244, i32** @e, align 8
  store i32 %242, i32* %244, align 4
  br label %267

245:                                              ; preds = %226
  %246 = load i32*, i32** %4, align 8
  %247 = load i64, i64* @Class, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @Glo, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %262

252:                                              ; preds = %245
  %253 = load i32, i32* @IMM, align 4
  %254 = load i32*, i32** @e, align 8
  %255 = getelementptr inbounds i32, i32* %254, i32 1
  store i32* %255, i32** @e, align 8
  store i32 %253, i32* %255, align 4
  %256 = load i32*, i32** %4, align 8
  %257 = load i64, i64* @Val, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** @e, align 8
  %261 = getelementptr inbounds i32, i32* %260, i32 1
  store i32* %261, i32** @e, align 8
  store i32 %259, i32* %261, align 4
  br label %266

262:                                              ; preds = %245
  %263 = load i32, i32* @line, align 4
  %264 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %263)
  %265 = call i32 @exit(i32 -1) #3
  unreachable

266:                                              ; preds = %252
  br label %267

267:                                              ; preds = %266, %233
  %268 = load i32*, i32** %4, align 8
  %269 = load i64, i64* @Type, align 8
  %270 = getelementptr inbounds i32, i32* %268, i64 %269
  %271 = load i32, i32* %270, align 4
  store i32 %271, i32* @ty, align 4
  %272 = load i32, i32* @CHAR, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %267
  %275 = load i32, i32* @LC, align 4
  br label %278

276:                                              ; preds = %267
  %277 = load i32, i32* @LI, align 4
  br label %278

278:                                              ; preds = %276, %274
  %279 = phi i32 [ %275, %274 ], [ %277, %276 ]
  %280 = load i32*, i32** @e, align 8
  %281 = getelementptr inbounds i32, i32* %280, i32 1
  store i32* %281, i32** @e, align 8
  store i32 %279, i32* %281, align 4
  br label %282

282:                                              ; preds = %278, %215
  br label %283

283:                                              ; preds = %282, %202
  br label %596

284:                                              ; preds = %123
  %285 = load i8, i8* @tk, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %286, 40
  br i1 %287, label %288, label %353

288:                                              ; preds = %284
  %289 = call i32 (...) @next()
  %290 = load i8, i8* @tk, align 1
  %291 = sext i8 %290 to i32
  %292 = load i8, i8* @Int, align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %291, %293
  br i1 %294, label %301, label %295

295:                                              ; preds = %288
  %296 = load i8, i8* @tk, align 1
  %297 = sext i8 %296 to i32
  %298 = load i8, i8* @Char, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %297, %299
  br i1 %300, label %301, label %339

301:                                              ; preds = %295, %288
  %302 = load i8, i8* @tk, align 1
  %303 = sext i8 %302 to i32
  %304 = load i8, i8* @Int, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 %303, %305
  br i1 %306, label %307, label %309

307:                                              ; preds = %301
  %308 = load i32, i32* @INT, align 4
  br label %311

309:                                              ; preds = %301
  %310 = load i32, i32* @CHAR, align 4
  br label %311

311:                                              ; preds = %309, %307
  %312 = phi i32 [ %308, %307 ], [ %310, %309 ]
  store i32 %312, i32* %3, align 4
  %313 = call i32 (...) @next()
  br label %314

314:                                              ; preds = %320, %311
  %315 = load i8, i8* @tk, align 1
  %316 = sext i8 %315 to i32
  %317 = load i8, i8* @Mul, align 1
  %318 = sext i8 %317 to i32
  %319 = icmp eq i32 %316, %318
  br i1 %319, label %320, label %325

320:                                              ; preds = %314
  %321 = call i32 (...) @next()
  %322 = load i32, i32* %3, align 4
  %323 = load i32, i32* @PTR, align 4
  %324 = add nsw i32 %322, %323
  store i32 %324, i32* %3, align 4
  br label %314

325:                                              ; preds = %314
  %326 = load i8, i8* @tk, align 1
  %327 = sext i8 %326 to i32
  %328 = icmp eq i32 %327, 41
  br i1 %328, label %329, label %331

329:                                              ; preds = %325
  %330 = call i32 (...) @next()
  br label %335

331:                                              ; preds = %325
  %332 = load i32, i32* @line, align 4
  %333 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %332)
  %334 = call i32 @exit(i32 -1) #3
  unreachable

335:                                              ; preds = %329
  %336 = load i8, i8* @Inc, align 1
  %337 = sext i8 %336 to i32
  call void @expr(i32 %337)
  %338 = load i32, i32* %3, align 4
  store i32 %338, i32* @ty, align 4
  br label %352

339:                                              ; preds = %295
  %340 = load i8, i8* @Assign, align 1
  %341 = sext i8 %340 to i32
  call void @expr(i32 %341)
  %342 = load i8, i8* @tk, align 1
  %343 = sext i8 %342 to i32
  %344 = icmp eq i32 %343, 41
  br i1 %344, label %345, label %347

345:                                              ; preds = %339
  %346 = call i32 (...) @next()
  br label %351

347:                                              ; preds = %339
  %348 = load i32, i32* @line, align 4
  %349 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %348)
  %350 = call i32 @exit(i32 -1) #3
  unreachable

351:                                              ; preds = %345
  br label %352

352:                                              ; preds = %351, %335
  br label %595

353:                                              ; preds = %284
  %354 = load i8, i8* @tk, align 1
  %355 = sext i8 %354 to i32
  %356 = load i8, i8* @Mul, align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %355, %357
  br i1 %358, label %359, label %386

359:                                              ; preds = %353
  %360 = call i32 (...) @next()
  %361 = load i8, i8* @Inc, align 1
  %362 = sext i8 %361 to i32
  call void @expr(i32 %362)
  %363 = load i32, i32* @ty, align 4
  %364 = load i32, i32* @INT, align 4
  %365 = icmp sgt i32 %363, %364
  br i1 %365, label %366, label %370

366:                                              ; preds = %359
  %367 = load i32, i32* @ty, align 4
  %368 = load i32, i32* @PTR, align 4
  %369 = sub nsw i32 %367, %368
  store i32 %369, i32* @ty, align 4
  br label %374

370:                                              ; preds = %359
  %371 = load i32, i32* @line, align 4
  %372 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %371)
  %373 = call i32 @exit(i32 -1) #3
  unreachable

374:                                              ; preds = %366
  %375 = load i32, i32* @ty, align 4
  %376 = load i32, i32* @CHAR, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %380

378:                                              ; preds = %374
  %379 = load i32, i32* @LC, align 4
  br label %382

380:                                              ; preds = %374
  %381 = load i32, i32* @LI, align 4
  br label %382

382:                                              ; preds = %380, %378
  %383 = phi i32 [ %379, %378 ], [ %381, %380 ]
  %384 = load i32*, i32** @e, align 8
  %385 = getelementptr inbounds i32, i32* %384, i32 1
  store i32* %385, i32** @e, align 8
  store i32 %383, i32* %385, align 4
  br label %594

386:                                              ; preds = %353
  %387 = load i8, i8* @tk, align 1
  %388 = sext i8 %387 to i32
  %389 = load i8, i8* @And, align 1
  %390 = sext i8 %389 to i32
  %391 = icmp eq i32 %388, %390
  br i1 %391, label %392, label %416

392:                                              ; preds = %386
  %393 = call i32 (...) @next()
  %394 = load i8, i8* @Inc, align 1
  %395 = sext i8 %394 to i32
  call void @expr(i32 %395)
  %396 = load i32*, i32** @e, align 8
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @LC, align 4
  %399 = icmp eq i32 %397, %398
  br i1 %399, label %405, label %400

400:                                              ; preds = %392
  %401 = load i32*, i32** @e, align 8
  %402 = load i32, i32* %401, align 4
  %403 = load i32, i32* @LI, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %408

405:                                              ; preds = %400, %392
  %406 = load i32*, i32** @e, align 8
  %407 = getelementptr inbounds i32, i32* %406, i32 -1
  store i32* %407, i32** @e, align 8
  br label %412

408:                                              ; preds = %400
  %409 = load i32, i32* @line, align 4
  %410 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %409)
  %411 = call i32 @exit(i32 -1) #3
  unreachable

412:                                              ; preds = %405
  %413 = load i32, i32* @ty, align 4
  %414 = load i32, i32* @PTR, align 4
  %415 = add nsw i32 %413, %414
  store i32 %415, i32* @ty, align 4
  br label %593

416:                                              ; preds = %386
  %417 = load i8, i8* @tk, align 1
  %418 = sext i8 %417 to i32
  %419 = icmp eq i32 %418, 33
  br i1 %419, label %420, label %436

420:                                              ; preds = %416
  %421 = call i32 (...) @next()
  %422 = load i8, i8* @Inc, align 1
  %423 = sext i8 %422 to i32
  call void @expr(i32 %423)
  %424 = load i32, i32* @PSH, align 4
  %425 = load i32*, i32** @e, align 8
  %426 = getelementptr inbounds i32, i32* %425, i32 1
  store i32* %426, i32** @e, align 8
  store i32 %424, i32* %426, align 4
  %427 = load i32, i32* @IMM, align 4
  %428 = load i32*, i32** @e, align 8
  %429 = getelementptr inbounds i32, i32* %428, i32 1
  store i32* %429, i32** @e, align 8
  store i32 %427, i32* %429, align 4
  %430 = load i32*, i32** @e, align 8
  %431 = getelementptr inbounds i32, i32* %430, i32 1
  store i32* %431, i32** @e, align 8
  store i32 0, i32* %431, align 4
  %432 = load i32, i32* @EQ, align 4
  %433 = load i32*, i32** @e, align 8
  %434 = getelementptr inbounds i32, i32* %433, i32 1
  store i32* %434, i32** @e, align 8
  store i32 %432, i32* %434, align 4
  %435 = load i32, i32* @INT, align 4
  store i32 %435, i32* @ty, align 4
  br label %592

436:                                              ; preds = %416
  %437 = load i8, i8* @tk, align 1
  %438 = sext i8 %437 to i32
  %439 = icmp eq i32 %438, 126
  br i1 %439, label %440, label %456

440:                                              ; preds = %436
  %441 = call i32 (...) @next()
  %442 = load i8, i8* @Inc, align 1
  %443 = sext i8 %442 to i32
  call void @expr(i32 %443)
  %444 = load i32, i32* @PSH, align 4
  %445 = load i32*, i32** @e, align 8
  %446 = getelementptr inbounds i32, i32* %445, i32 1
  store i32* %446, i32** @e, align 8
  store i32 %444, i32* %446, align 4
  %447 = load i32, i32* @IMM, align 4
  %448 = load i32*, i32** @e, align 8
  %449 = getelementptr inbounds i32, i32* %448, i32 1
  store i32* %449, i32** @e, align 8
  store i32 %447, i32* %449, align 4
  %450 = load i32*, i32** @e, align 8
  %451 = getelementptr inbounds i32, i32* %450, i32 1
  store i32* %451, i32** @e, align 8
  store i32 -1, i32* %451, align 4
  %452 = load i32, i32* @XOR, align 4
  %453 = load i32*, i32** @e, align 8
  %454 = getelementptr inbounds i32, i32* %453, i32 1
  store i32* %454, i32** @e, align 8
  store i32 %452, i32* %454, align 4
  %455 = load i32, i32* @INT, align 4
  store i32 %455, i32* @ty, align 4
  br label %591

456:                                              ; preds = %436
  %457 = load i8, i8* @tk, align 1
  %458 = sext i8 %457 to i32
  %459 = load i8, i8* @Add, align 1
  %460 = sext i8 %459 to i32
  %461 = icmp eq i32 %458, %460
  br i1 %461, label %462, label %467

462:                                              ; preds = %456
  %463 = call i32 (...) @next()
  %464 = load i8, i8* @Inc, align 1
  %465 = sext i8 %464 to i32
  call void @expr(i32 %465)
  %466 = load i32, i32* @INT, align 4
  store i32 %466, i32* @ty, align 4
  br label %590

467:                                              ; preds = %456
  %468 = load i8, i8* @tk, align 1
  %469 = sext i8 %468 to i32
  %470 = load i8, i8* @Sub, align 1
  %471 = sext i8 %470 to i32
  %472 = icmp eq i32 %469, %471
  br i1 %472, label %473, label %502

473:                                              ; preds = %467
  %474 = call i32 (...) @next()
  %475 = load i32, i32* @IMM, align 4
  %476 = load i32*, i32** @e, align 8
  %477 = getelementptr inbounds i32, i32* %476, i32 1
  store i32* %477, i32** @e, align 8
  store i32 %475, i32* %477, align 4
  %478 = load i8, i8* @tk, align 1
  %479 = sext i8 %478 to i32
  %480 = load i8, i8* @Num, align 1
  %481 = sext i8 %480 to i32
  %482 = icmp eq i32 %479, %481
  br i1 %482, label %483, label %489

483:                                              ; preds = %473
  %484 = load i32, i32* @ival, align 4
  %485 = sub nsw i32 0, %484
  %486 = load i32*, i32** @e, align 8
  %487 = getelementptr inbounds i32, i32* %486, i32 1
  store i32* %487, i32** @e, align 8
  store i32 %485, i32* %487, align 4
  %488 = call i32 (...) @next()
  br label %500

489:                                              ; preds = %473
  %490 = load i32*, i32** @e, align 8
  %491 = getelementptr inbounds i32, i32* %490, i32 1
  store i32* %491, i32** @e, align 8
  store i32 -1, i32* %491, align 4
  %492 = load i32, i32* @PSH, align 4
  %493 = load i32*, i32** @e, align 8
  %494 = getelementptr inbounds i32, i32* %493, i32 1
  store i32* %494, i32** @e, align 8
  store i32 %492, i32* %494, align 4
  %495 = load i8, i8* @Inc, align 1
  %496 = sext i8 %495 to i32
  call void @expr(i32 %496)
  %497 = load i32, i32* @MUL, align 4
  %498 = load i32*, i32** @e, align 8
  %499 = getelementptr inbounds i32, i32* %498, i32 1
  store i32* %499, i32** @e, align 8
  store i32 %497, i32* %499, align 4
  br label %500

500:                                              ; preds = %489, %483
  %501 = load i32, i32* @INT, align 4
  store i32 %501, i32* @ty, align 4
  br label %589

502:                                              ; preds = %467
  %503 = load i8, i8* @tk, align 1
  %504 = sext i8 %503 to i32
  %505 = load i8, i8* @Inc, align 1
  %506 = sext i8 %505 to i32
  %507 = icmp eq i32 %504, %506
  br i1 %507, label %514, label %508

508:                                              ; preds = %502
  %509 = load i8, i8* @tk, align 1
  %510 = sext i8 %509 to i32
  %511 = load i8, i8* @Dec, align 1
  %512 = sext i8 %511 to i32
  %513 = icmp eq i32 %510, %512
  br i1 %513, label %514, label %584

514:                                              ; preds = %508, %502
  %515 = load i8, i8* @tk, align 1
  %516 = sext i8 %515 to i32
  store i32 %516, i32* %3, align 4
  %517 = call i32 (...) @next()
  %518 = load i8, i8* @Inc, align 1
  %519 = sext i8 %518 to i32
  call void @expr(i32 %519)
  %520 = load i32*, i32** @e, align 8
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @LC, align 4
  %523 = icmp eq i32 %521, %522
  br i1 %523, label %524, label %530

524:                                              ; preds = %514
  %525 = load i32, i32* @PSH, align 4
  %526 = load i32*, i32** @e, align 8
  store i32 %525, i32* %526, align 4
  %527 = load i32, i32* @LC, align 4
  %528 = load i32*, i32** @e, align 8
  %529 = getelementptr inbounds i32, i32* %528, i32 1
  store i32* %529, i32** @e, align 8
  store i32 %527, i32* %529, align 4
  br label %546

530:                                              ; preds = %514
  %531 = load i32*, i32** @e, align 8
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* @LI, align 4
  %534 = icmp eq i32 %532, %533
  br i1 %534, label %535, label %541

535:                                              ; preds = %530
  %536 = load i32, i32* @PSH, align 4
  %537 = load i32*, i32** @e, align 8
  store i32 %536, i32* %537, align 4
  %538 = load i32, i32* @LI, align 4
  %539 = load i32*, i32** @e, align 8
  %540 = getelementptr inbounds i32, i32* %539, i32 1
  store i32* %540, i32** @e, align 8
  store i32 %538, i32* %540, align 4
  br label %545

541:                                              ; preds = %530
  %542 = load i32, i32* @line, align 4
  %543 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %542)
  %544 = call i32 @exit(i32 -1) #3
  unreachable

545:                                              ; preds = %535
  br label %546

546:                                              ; preds = %545, %524
  %547 = load i32, i32* @PSH, align 4
  %548 = load i32*, i32** @e, align 8
  %549 = getelementptr inbounds i32, i32* %548, i32 1
  store i32* %549, i32** @e, align 8
  store i32 %547, i32* %549, align 4
  %550 = load i32, i32* @IMM, align 4
  %551 = load i32*, i32** @e, align 8
  %552 = getelementptr inbounds i32, i32* %551, i32 1
  store i32* %552, i32** @e, align 8
  store i32 %550, i32* %552, align 4
  %553 = load i32, i32* @ty, align 4
  %554 = load i32, i32* @PTR, align 4
  %555 = icmp sgt i32 %553, %554
  %556 = zext i1 %555 to i64
  %557 = select i1 %555, i64 4, i64 1
  %558 = trunc i64 %557 to i32
  %559 = load i32*, i32** @e, align 8
  %560 = getelementptr inbounds i32, i32* %559, i32 1
  store i32* %560, i32** @e, align 8
  store i32 %558, i32* %560, align 4
  %561 = load i32, i32* %3, align 4
  %562 = load i8, i8* @Inc, align 1
  %563 = sext i8 %562 to i32
  %564 = icmp eq i32 %561, %563
  br i1 %564, label %565, label %567

565:                                              ; preds = %546
  %566 = load i32, i32* @ADD, align 4
  br label %569

567:                                              ; preds = %546
  %568 = load i32, i32* @SUB, align 4
  br label %569

569:                                              ; preds = %567, %565
  %570 = phi i32 [ %566, %565 ], [ %568, %567 ]
  %571 = load i32*, i32** @e, align 8
  %572 = getelementptr inbounds i32, i32* %571, i32 1
  store i32* %572, i32** @e, align 8
  store i32 %570, i32* %572, align 4
  %573 = load i32, i32* @ty, align 4
  %574 = load i32, i32* @CHAR, align 4
  %575 = icmp eq i32 %573, %574
  br i1 %575, label %576, label %578

576:                                              ; preds = %569
  %577 = load i32, i32* @SC, align 4
  br label %580

578:                                              ; preds = %569
  %579 = load i32, i32* @SI, align 4
  br label %580

580:                                              ; preds = %578, %576
  %581 = phi i32 [ %577, %576 ], [ %579, %578 ]
  %582 = load i32*, i32** @e, align 8
  %583 = getelementptr inbounds i32, i32* %582, i32 1
  store i32* %583, i32** @e, align 8
  store i32 %581, i32* %583, align 4
  br label %588

584:                                              ; preds = %508
  %585 = load i32, i32* @line, align 4
  %586 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %585)
  %587 = call i32 @exit(i32 -1) #3
  unreachable

588:                                              ; preds = %580
  br label %589

589:                                              ; preds = %588, %500
  br label %590

590:                                              ; preds = %589, %462
  br label %591

591:                                              ; preds = %590, %440
  br label %592

592:                                              ; preds = %591, %420
  br label %593

593:                                              ; preds = %592, %412
  br label %594

594:                                              ; preds = %593, %382
  br label %595

595:                                              ; preds = %594, %352
  br label %596

596:                                              ; preds = %595, %283
  br label %597

597:                                              ; preds = %596, %110
  br label %598

598:                                              ; preds = %597, %44
  br label %599

599:                                              ; preds = %598, %17
  br label %600

600:                                              ; preds = %599
  br label %601

601:                                              ; preds = %1253, %600
  %602 = load i8, i8* @tk, align 1
  %603 = sext i8 %602 to i32
  %604 = load i32, i32* %2, align 4
  %605 = icmp sge i32 %603, %604
  br i1 %605, label %606, label %1254

606:                                              ; preds = %601
  %607 = load i32, i32* @ty, align 4
  store i32 %607, i32* %3, align 4
  %608 = load i8, i8* @tk, align 1
  %609 = sext i8 %608 to i32
  %610 = load i8, i8* @Assign, align 1
  %611 = sext i8 %610 to i32
  %612 = icmp eq i32 %609, %611
  br i1 %612, label %613, label %645

613:                                              ; preds = %606
  %614 = call i32 (...) @next()
  %615 = load i32*, i32** @e, align 8
  %616 = load i32, i32* %615, align 4
  %617 = load i32, i32* @LC, align 4
  %618 = icmp eq i32 %616, %617
  br i1 %618, label %624, label %619

619:                                              ; preds = %613
  %620 = load i32*, i32** @e, align 8
  %621 = load i32, i32* %620, align 4
  %622 = load i32, i32* @LI, align 4
  %623 = icmp eq i32 %621, %622
  br i1 %623, label %624, label %627

624:                                              ; preds = %619, %613
  %625 = load i32, i32* @PSH, align 4
  %626 = load i32*, i32** @e, align 8
  store i32 %625, i32* %626, align 4
  br label %631

627:                                              ; preds = %619
  %628 = load i32, i32* @line, align 4
  %629 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i32 %628)
  %630 = call i32 @exit(i32 -1) #3
  unreachable

631:                                              ; preds = %624
  %632 = load i8, i8* @Assign, align 1
  %633 = sext i8 %632 to i32
  call void @expr(i32 %633)
  %634 = load i32, i32* %3, align 4
  store i32 %634, i32* @ty, align 4
  %635 = load i32, i32* @CHAR, align 4
  %636 = icmp eq i32 %634, %635
  br i1 %636, label %637, label %639

637:                                              ; preds = %631
  %638 = load i32, i32* @SC, align 4
  br label %641

639:                                              ; preds = %631
  %640 = load i32, i32* @SI, align 4
  br label %641

641:                                              ; preds = %639, %637
  %642 = phi i32 [ %638, %637 ], [ %640, %639 ]
  %643 = load i32*, i32** @e, align 8
  %644 = getelementptr inbounds i32, i32* %643, i32 1
  store i32* %644, i32** @e, align 8
  store i32 %642, i32* %644, align 4
  br label %1253

645:                                              ; preds = %606
  %646 = load i8, i8* @tk, align 1
  %647 = sext i8 %646 to i32
  %648 = load i8, i8* @Cond, align 1
  %649 = sext i8 %648 to i32
  %650 = icmp eq i32 %647, %649
  br i1 %650, label %651, label %685

651:                                              ; preds = %645
  %652 = call i32 (...) @next()
  %653 = load i32, i32* @BZ, align 4
  %654 = load i32*, i32** @e, align 8
  %655 = getelementptr inbounds i32, i32* %654, i32 1
  store i32* %655, i32** @e, align 8
  store i32 %653, i32* %655, align 4
  %656 = load i32*, i32** @e, align 8
  %657 = getelementptr inbounds i32, i32* %656, i32 1
  store i32* %657, i32** @e, align 8
  store i32* %657, i32** %4, align 8
  %658 = load i8, i8* @Assign, align 1
  %659 = sext i8 %658 to i32
  call void @expr(i32 %659)
  %660 = load i8, i8* @tk, align 1
  %661 = sext i8 %660 to i32
  %662 = icmp eq i32 %661, 58
  br i1 %662, label %663, label %665

663:                                              ; preds = %651
  %664 = call i32 (...) @next()
  br label %669

665:                                              ; preds = %651
  %666 = load i32, i32* @line, align 4
  %667 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %666)
  %668 = call i32 @exit(i32 -1) #3
  unreachable

669:                                              ; preds = %663
  %670 = load i32*, i32** @e, align 8
  %671 = getelementptr inbounds i32, i32* %670, i64 3
  %672 = ptrtoint i32* %671 to i32
  %673 = load i32*, i32** %4, align 8
  store i32 %672, i32* %673, align 4
  %674 = load i32, i32* @JMP, align 4
  %675 = load i32*, i32** @e, align 8
  %676 = getelementptr inbounds i32, i32* %675, i32 1
  store i32* %676, i32** @e, align 8
  store i32 %674, i32* %676, align 4
  %677 = load i32*, i32** @e, align 8
  %678 = getelementptr inbounds i32, i32* %677, i32 1
  store i32* %678, i32** @e, align 8
  store i32* %678, i32** %4, align 8
  %679 = load i8, i8* @Cond, align 1
  %680 = sext i8 %679 to i32
  call void @expr(i32 %680)
  %681 = load i32*, i32** @e, align 8
  %682 = getelementptr inbounds i32, i32* %681, i64 1
  %683 = ptrtoint i32* %682 to i32
  %684 = load i32*, i32** %4, align 8
  store i32 %683, i32* %684, align 4
  br label %1252

685:                                              ; preds = %645
  %686 = load i8, i8* @tk, align 1
  %687 = sext i8 %686 to i32
  %688 = load i8, i8* @Lor, align 1
  %689 = sext i8 %688 to i32
  %690 = icmp eq i32 %687, %689
  br i1 %690, label %691, label %705

691:                                              ; preds = %685
  %692 = call i32 (...) @next()
  %693 = load i32, i32* @BNZ, align 4
  %694 = load i32*, i32** @e, align 8
  %695 = getelementptr inbounds i32, i32* %694, i32 1
  store i32* %695, i32** @e, align 8
  store i32 %693, i32* %695, align 4
  %696 = load i32*, i32** @e, align 8
  %697 = getelementptr inbounds i32, i32* %696, i32 1
  store i32* %697, i32** @e, align 8
  store i32* %697, i32** %4, align 8
  %698 = load i8, i8* @Lan, align 1
  %699 = sext i8 %698 to i32
  call void @expr(i32 %699)
  %700 = load i32*, i32** @e, align 8
  %701 = getelementptr inbounds i32, i32* %700, i64 1
  %702 = ptrtoint i32* %701 to i32
  %703 = load i32*, i32** %4, align 8
  store i32 %702, i32* %703, align 4
  %704 = load i32, i32* @INT, align 4
  store i32 %704, i32* @ty, align 4
  br label %1251

705:                                              ; preds = %685
  %706 = load i8, i8* @tk, align 1
  %707 = sext i8 %706 to i32
  %708 = load i8, i8* @Lan, align 1
  %709 = sext i8 %708 to i32
  %710 = icmp eq i32 %707, %709
  br i1 %710, label %711, label %725

711:                                              ; preds = %705
  %712 = call i32 (...) @next()
  %713 = load i32, i32* @BZ, align 4
  %714 = load i32*, i32** @e, align 8
  %715 = getelementptr inbounds i32, i32* %714, i32 1
  store i32* %715, i32** @e, align 8
  store i32 %713, i32* %715, align 4
  %716 = load i32*, i32** @e, align 8
  %717 = getelementptr inbounds i32, i32* %716, i32 1
  store i32* %717, i32** @e, align 8
  store i32* %717, i32** %4, align 8
  %718 = load i8, i8* @Or, align 1
  %719 = sext i8 %718 to i32
  call void @expr(i32 %719)
  %720 = load i32*, i32** @e, align 8
  %721 = getelementptr inbounds i32, i32* %720, i64 1
  %722 = ptrtoint i32* %721 to i32
  %723 = load i32*, i32** %4, align 8
  store i32 %722, i32* %723, align 4
  %724 = load i32, i32* @INT, align 4
  store i32 %724, i32* @ty, align 4
  br label %1250

725:                                              ; preds = %705
  %726 = load i8, i8* @tk, align 1
  %727 = sext i8 %726 to i32
  %728 = load i8, i8* @Or, align 1
  %729 = sext i8 %728 to i32
  %730 = icmp eq i32 %727, %729
  br i1 %730, label %731, label %742

731:                                              ; preds = %725
  %732 = call i32 (...) @next()
  %733 = load i32, i32* @PSH, align 4
  %734 = load i32*, i32** @e, align 8
  %735 = getelementptr inbounds i32, i32* %734, i32 1
  store i32* %735, i32** @e, align 8
  store i32 %733, i32* %735, align 4
  %736 = load i8, i8* @Xor, align 1
  %737 = sext i8 %736 to i32
  call void @expr(i32 %737)
  %738 = load i32, i32* @OR, align 4
  %739 = load i32*, i32** @e, align 8
  %740 = getelementptr inbounds i32, i32* %739, i32 1
  store i32* %740, i32** @e, align 8
  store i32 %738, i32* %740, align 4
  %741 = load i32, i32* @INT, align 4
  store i32 %741, i32* @ty, align 4
  br label %1249

742:                                              ; preds = %725
  %743 = load i8, i8* @tk, align 1
  %744 = sext i8 %743 to i32
  %745 = load i8, i8* @Xor, align 1
  %746 = sext i8 %745 to i32
  %747 = icmp eq i32 %744, %746
  br i1 %747, label %748, label %759

748:                                              ; preds = %742
  %749 = call i32 (...) @next()
  %750 = load i32, i32* @PSH, align 4
  %751 = load i32*, i32** @e, align 8
  %752 = getelementptr inbounds i32, i32* %751, i32 1
  store i32* %752, i32** @e, align 8
  store i32 %750, i32* %752, align 4
  %753 = load i8, i8* @And, align 1
  %754 = sext i8 %753 to i32
  call void @expr(i32 %754)
  %755 = load i32, i32* @XOR, align 4
  %756 = load i32*, i32** @e, align 8
  %757 = getelementptr inbounds i32, i32* %756, i32 1
  store i32* %757, i32** @e, align 8
  store i32 %755, i32* %757, align 4
  %758 = load i32, i32* @INT, align 4
  store i32 %758, i32* @ty, align 4
  br label %1248

759:                                              ; preds = %742
  %760 = load i8, i8* @tk, align 1
  %761 = sext i8 %760 to i32
  %762 = load i8, i8* @And, align 1
  %763 = sext i8 %762 to i32
  %764 = icmp eq i32 %761, %763
  br i1 %764, label %765, label %776

765:                                              ; preds = %759
  %766 = call i32 (...) @next()
  %767 = load i32, i32* @PSH, align 4
  %768 = load i32*, i32** @e, align 8
  %769 = getelementptr inbounds i32, i32* %768, i32 1
  store i32* %769, i32** @e, align 8
  store i32 %767, i32* %769, align 4
  %770 = load i8, i8* @Eq, align 1
  %771 = sext i8 %770 to i32
  call void @expr(i32 %771)
  %772 = load i32, i32* @AND, align 4
  %773 = load i32*, i32** @e, align 8
  %774 = getelementptr inbounds i32, i32* %773, i32 1
  store i32* %774, i32** @e, align 8
  store i32 %772, i32* %774, align 4
  %775 = load i32, i32* @INT, align 4
  store i32 %775, i32* @ty, align 4
  br label %1247

776:                                              ; preds = %759
  %777 = load i8, i8* @tk, align 1
  %778 = sext i8 %777 to i32
  %779 = load i8, i8* @Eq, align 1
  %780 = sext i8 %779 to i32
  %781 = icmp eq i32 %778, %780
  br i1 %781, label %782, label %793

782:                                              ; preds = %776
  %783 = call i32 (...) @next()
  %784 = load i32, i32* @PSH, align 4
  %785 = load i32*, i32** @e, align 8
  %786 = getelementptr inbounds i32, i32* %785, i32 1
  store i32* %786, i32** @e, align 8
  store i32 %784, i32* %786, align 4
  %787 = load i8, i8* @Lt, align 1
  %788 = sext i8 %787 to i32
  call void @expr(i32 %788)
  %789 = load i32, i32* @EQ, align 4
  %790 = load i32*, i32** @e, align 8
  %791 = getelementptr inbounds i32, i32* %790, i32 1
  store i32* %791, i32** @e, align 8
  store i32 %789, i32* %791, align 4
  %792 = load i32, i32* @INT, align 4
  store i32 %792, i32* @ty, align 4
  br label %1246

793:                                              ; preds = %776
  %794 = load i8, i8* @tk, align 1
  %795 = sext i8 %794 to i32
  %796 = load i8, i8* @Ne, align 1
  %797 = sext i8 %796 to i32
  %798 = icmp eq i32 %795, %797
  br i1 %798, label %799, label %810

799:                                              ; preds = %793
  %800 = call i32 (...) @next()
  %801 = load i32, i32* @PSH, align 4
  %802 = load i32*, i32** @e, align 8
  %803 = getelementptr inbounds i32, i32* %802, i32 1
  store i32* %803, i32** @e, align 8
  store i32 %801, i32* %803, align 4
  %804 = load i8, i8* @Lt, align 1
  %805 = sext i8 %804 to i32
  call void @expr(i32 %805)
  %806 = load i32, i32* @NE, align 4
  %807 = load i32*, i32** @e, align 8
  %808 = getelementptr inbounds i32, i32* %807, i32 1
  store i32* %808, i32** @e, align 8
  store i32 %806, i32* %808, align 4
  %809 = load i32, i32* @INT, align 4
  store i32 %809, i32* @ty, align 4
  br label %1245

810:                                              ; preds = %793
  %811 = load i8, i8* @tk, align 1
  %812 = sext i8 %811 to i32
  %813 = load i8, i8* @Lt, align 1
  %814 = sext i8 %813 to i32
  %815 = icmp eq i32 %812, %814
  br i1 %815, label %816, label %827

816:                                              ; preds = %810
  %817 = call i32 (...) @next()
  %818 = load i32, i32* @PSH, align 4
  %819 = load i32*, i32** @e, align 8
  %820 = getelementptr inbounds i32, i32* %819, i32 1
  store i32* %820, i32** @e, align 8
  store i32 %818, i32* %820, align 4
  %821 = load i8, i8* @Shl, align 1
  %822 = sext i8 %821 to i32
  call void @expr(i32 %822)
  %823 = load i32, i32* @LT, align 4
  %824 = load i32*, i32** @e, align 8
  %825 = getelementptr inbounds i32, i32* %824, i32 1
  store i32* %825, i32** @e, align 8
  store i32 %823, i32* %825, align 4
  %826 = load i32, i32* @INT, align 4
  store i32 %826, i32* @ty, align 4
  br label %1244

827:                                              ; preds = %810
  %828 = load i8, i8* @tk, align 1
  %829 = sext i8 %828 to i32
  %830 = load i8, i8* @Gt, align 1
  %831 = sext i8 %830 to i32
  %832 = icmp eq i32 %829, %831
  br i1 %832, label %833, label %844

833:                                              ; preds = %827
  %834 = call i32 (...) @next()
  %835 = load i32, i32* @PSH, align 4
  %836 = load i32*, i32** @e, align 8
  %837 = getelementptr inbounds i32, i32* %836, i32 1
  store i32* %837, i32** @e, align 8
  store i32 %835, i32* %837, align 4
  %838 = load i8, i8* @Shl, align 1
  %839 = sext i8 %838 to i32
  call void @expr(i32 %839)
  %840 = load i32, i32* @GT, align 4
  %841 = load i32*, i32** @e, align 8
  %842 = getelementptr inbounds i32, i32* %841, i32 1
  store i32* %842, i32** @e, align 8
  store i32 %840, i32* %842, align 4
  %843 = load i32, i32* @INT, align 4
  store i32 %843, i32* @ty, align 4
  br label %1243

844:                                              ; preds = %827
  %845 = load i8, i8* @tk, align 1
  %846 = sext i8 %845 to i32
  %847 = load i8, i8* @Le, align 1
  %848 = sext i8 %847 to i32
  %849 = icmp eq i32 %846, %848
  br i1 %849, label %850, label %861

850:                                              ; preds = %844
  %851 = call i32 (...) @next()
  %852 = load i32, i32* @PSH, align 4
  %853 = load i32*, i32** @e, align 8
  %854 = getelementptr inbounds i32, i32* %853, i32 1
  store i32* %854, i32** @e, align 8
  store i32 %852, i32* %854, align 4
  %855 = load i8, i8* @Shl, align 1
  %856 = sext i8 %855 to i32
  call void @expr(i32 %856)
  %857 = load i32, i32* @LE, align 4
  %858 = load i32*, i32** @e, align 8
  %859 = getelementptr inbounds i32, i32* %858, i32 1
  store i32* %859, i32** @e, align 8
  store i32 %857, i32* %859, align 4
  %860 = load i32, i32* @INT, align 4
  store i32 %860, i32* @ty, align 4
  br label %1242

861:                                              ; preds = %844
  %862 = load i8, i8* @tk, align 1
  %863 = sext i8 %862 to i32
  %864 = load i8, i8* @Ge, align 1
  %865 = sext i8 %864 to i32
  %866 = icmp eq i32 %863, %865
  br i1 %866, label %867, label %878

867:                                              ; preds = %861
  %868 = call i32 (...) @next()
  %869 = load i32, i32* @PSH, align 4
  %870 = load i32*, i32** @e, align 8
  %871 = getelementptr inbounds i32, i32* %870, i32 1
  store i32* %871, i32** @e, align 8
  store i32 %869, i32* %871, align 4
  %872 = load i8, i8* @Shl, align 1
  %873 = sext i8 %872 to i32
  call void @expr(i32 %873)
  %874 = load i32, i32* @GE, align 4
  %875 = load i32*, i32** @e, align 8
  %876 = getelementptr inbounds i32, i32* %875, i32 1
  store i32* %876, i32** @e, align 8
  store i32 %874, i32* %876, align 4
  %877 = load i32, i32* @INT, align 4
  store i32 %877, i32* @ty, align 4
  br label %1241

878:                                              ; preds = %861
  %879 = load i8, i8* @tk, align 1
  %880 = sext i8 %879 to i32
  %881 = load i8, i8* @Shl, align 1
  %882 = sext i8 %881 to i32
  %883 = icmp eq i32 %880, %882
  br i1 %883, label %884, label %895

884:                                              ; preds = %878
  %885 = call i32 (...) @next()
  %886 = load i32, i32* @PSH, align 4
  %887 = load i32*, i32** @e, align 8
  %888 = getelementptr inbounds i32, i32* %887, i32 1
  store i32* %888, i32** @e, align 8
  store i32 %886, i32* %888, align 4
  %889 = load i8, i8* @Add, align 1
  %890 = sext i8 %889 to i32
  call void @expr(i32 %890)
  %891 = load i32, i32* @SHL, align 4
  %892 = load i32*, i32** @e, align 8
  %893 = getelementptr inbounds i32, i32* %892, i32 1
  store i32* %893, i32** @e, align 8
  store i32 %891, i32* %893, align 4
  %894 = load i32, i32* @INT, align 4
  store i32 %894, i32* @ty, align 4
  br label %1240

895:                                              ; preds = %878
  %896 = load i8, i8* @tk, align 1
  %897 = sext i8 %896 to i32
  %898 = load i8, i8* @Shr, align 1
  %899 = sext i8 %898 to i32
  %900 = icmp eq i32 %897, %899
  br i1 %900, label %901, label %912

901:                                              ; preds = %895
  %902 = call i32 (...) @next()
  %903 = load i32, i32* @PSH, align 4
  %904 = load i32*, i32** @e, align 8
  %905 = getelementptr inbounds i32, i32* %904, i32 1
  store i32* %905, i32** @e, align 8
  store i32 %903, i32* %905, align 4
  %906 = load i8, i8* @Add, align 1
  %907 = sext i8 %906 to i32
  call void @expr(i32 %907)
  %908 = load i32, i32* @SHR, align 4
  %909 = load i32*, i32** @e, align 8
  %910 = getelementptr inbounds i32, i32* %909, i32 1
  store i32* %910, i32** @e, align 8
  store i32 %908, i32* %910, align 4
  %911 = load i32, i32* @INT, align 4
  store i32 %911, i32* @ty, align 4
  br label %1239

912:                                              ; preds = %895
  %913 = load i8, i8* @tk, align 1
  %914 = sext i8 %913 to i32
  %915 = load i8, i8* @Add, align 1
  %916 = sext i8 %915 to i32
  %917 = icmp eq i32 %914, %916
  br i1 %917, label %918, label %944

918:                                              ; preds = %912
  %919 = call i32 (...) @next()
  %920 = load i32, i32* @PSH, align 4
  %921 = load i32*, i32** @e, align 8
  %922 = getelementptr inbounds i32, i32* %921, i32 1
  store i32* %922, i32** @e, align 8
  store i32 %920, i32* %922, align 4
  %923 = load i8, i8* @Mul, align 1
  %924 = sext i8 %923 to i32
  call void @expr(i32 %924)
  %925 = load i32, i32* %3, align 4
  store i32 %925, i32* @ty, align 4
  %926 = load i32, i32* @PTR, align 4
  %927 = icmp sgt i32 %925, %926
  br i1 %927, label %928, label %940

928:                                              ; preds = %918
  %929 = load i32, i32* @PSH, align 4
  %930 = load i32*, i32** @e, align 8
  %931 = getelementptr inbounds i32, i32* %930, i32 1
  store i32* %931, i32** @e, align 8
  store i32 %929, i32* %931, align 4
  %932 = load i32, i32* @IMM, align 4
  %933 = load i32*, i32** @e, align 8
  %934 = getelementptr inbounds i32, i32* %933, i32 1
  store i32* %934, i32** @e, align 8
  store i32 %932, i32* %934, align 4
  %935 = load i32*, i32** @e, align 8
  %936 = getelementptr inbounds i32, i32* %935, i32 1
  store i32* %936, i32** @e, align 8
  store i32 4, i32* %936, align 4
  %937 = load i32, i32* @MUL, align 4
  %938 = load i32*, i32** @e, align 8
  %939 = getelementptr inbounds i32, i32* %938, i32 1
  store i32* %939, i32** @e, align 8
  store i32 %937, i32* %939, align 4
  br label %940

940:                                              ; preds = %928, %918
  %941 = load i32, i32* @ADD, align 4
  %942 = load i32*, i32** @e, align 8
  %943 = getelementptr inbounds i32, i32* %942, i32 1
  store i32* %943, i32** @e, align 8
  store i32 %941, i32* %943, align 4
  br label %1238

944:                                              ; preds = %912
  %945 = load i8, i8* @tk, align 1
  %946 = sext i8 %945 to i32
  %947 = load i8, i8* @Sub, align 1
  %948 = sext i8 %947 to i32
  %949 = icmp eq i32 %946, %948
  br i1 %949, label %950, label %1005

950:                                              ; preds = %944
  %951 = call i32 (...) @next()
  %952 = load i32, i32* @PSH, align 4
  %953 = load i32*, i32** @e, align 8
  %954 = getelementptr inbounds i32, i32* %953, i32 1
  store i32* %954, i32** @e, align 8
  store i32 %952, i32* %954, align 4
  %955 = load i8, i8* @Mul, align 1
  %956 = sext i8 %955 to i32
  call void @expr(i32 %956)
  %957 = load i32, i32* %3, align 4
  %958 = load i32, i32* @PTR, align 4
  %959 = icmp sgt i32 %957, %958
  br i1 %959, label %960, label %980

960:                                              ; preds = %950
  %961 = load i32, i32* %3, align 4
  %962 = load i32, i32* @ty, align 4
  %963 = icmp eq i32 %961, %962
  br i1 %963, label %964, label %980

964:                                              ; preds = %960
  %965 = load i32, i32* @SUB, align 4
  %966 = load i32*, i32** @e, align 8
  %967 = getelementptr inbounds i32, i32* %966, i32 1
  store i32* %967, i32** @e, align 8
  store i32 %965, i32* %967, align 4
  %968 = load i32, i32* @PSH, align 4
  %969 = load i32*, i32** @e, align 8
  %970 = getelementptr inbounds i32, i32* %969, i32 1
  store i32* %970, i32** @e, align 8
  store i32 %968, i32* %970, align 4
  %971 = load i32, i32* @IMM, align 4
  %972 = load i32*, i32** @e, align 8
  %973 = getelementptr inbounds i32, i32* %972, i32 1
  store i32* %973, i32** @e, align 8
  store i32 %971, i32* %973, align 4
  %974 = load i32*, i32** @e, align 8
  %975 = getelementptr inbounds i32, i32* %974, i32 1
  store i32* %975, i32** @e, align 8
  store i32 4, i32* %975, align 4
  %976 = load i32, i32* @DIV, align 4
  %977 = load i32*, i32** @e, align 8
  %978 = getelementptr inbounds i32, i32* %977, i32 1
  store i32* %978, i32** @e, align 8
  store i32 %976, i32* %978, align 4
  %979 = load i32, i32* @INT, align 4
  store i32 %979, i32* @ty, align 4
  br label %1004

980:                                              ; preds = %960, %950
  %981 = load i32, i32* %3, align 4
  store i32 %981, i32* @ty, align 4
  %982 = load i32, i32* @PTR, align 4
  %983 = icmp sgt i32 %981, %982
  br i1 %983, label %984, label %999

984:                                              ; preds = %980
  %985 = load i32, i32* @PSH, align 4
  %986 = load i32*, i32** @e, align 8
  %987 = getelementptr inbounds i32, i32* %986, i32 1
  store i32* %987, i32** @e, align 8
  store i32 %985, i32* %987, align 4
  %988 = load i32, i32* @IMM, align 4
  %989 = load i32*, i32** @e, align 8
  %990 = getelementptr inbounds i32, i32* %989, i32 1
  store i32* %990, i32** @e, align 8
  store i32 %988, i32* %990, align 4
  %991 = load i32*, i32** @e, align 8
  %992 = getelementptr inbounds i32, i32* %991, i32 1
  store i32* %992, i32** @e, align 8
  store i32 4, i32* %992, align 4
  %993 = load i32, i32* @MUL, align 4
  %994 = load i32*, i32** @e, align 8
  %995 = getelementptr inbounds i32, i32* %994, i32 1
  store i32* %995, i32** @e, align 8
  store i32 %993, i32* %995, align 4
  %996 = load i32, i32* @SUB, align 4
  %997 = load i32*, i32** @e, align 8
  %998 = getelementptr inbounds i32, i32* %997, i32 1
  store i32* %998, i32** @e, align 8
  store i32 %996, i32* %998, align 4
  br label %1003

999:                                              ; preds = %980
  %1000 = load i32, i32* @SUB, align 4
  %1001 = load i32*, i32** @e, align 8
  %1002 = getelementptr inbounds i32, i32* %1001, i32 1
  store i32* %1002, i32** @e, align 8
  store i32 %1000, i32* %1002, align 4
  br label %1003

1003:                                             ; preds = %999, %984
  br label %1004

1004:                                             ; preds = %1003, %964
  br label %1237

1005:                                             ; preds = %944
  %1006 = load i8, i8* @tk, align 1
  %1007 = sext i8 %1006 to i32
  %1008 = load i8, i8* @Mul, align 1
  %1009 = sext i8 %1008 to i32
  %1010 = icmp eq i32 %1007, %1009
  br i1 %1010, label %1011, label %1022

1011:                                             ; preds = %1005
  %1012 = call i32 (...) @next()
  %1013 = load i32, i32* @PSH, align 4
  %1014 = load i32*, i32** @e, align 8
  %1015 = getelementptr inbounds i32, i32* %1014, i32 1
  store i32* %1015, i32** @e, align 8
  store i32 %1013, i32* %1015, align 4
  %1016 = load i8, i8* @Inc, align 1
  %1017 = sext i8 %1016 to i32
  call void @expr(i32 %1017)
  %1018 = load i32, i32* @MUL, align 4
  %1019 = load i32*, i32** @e, align 8
  %1020 = getelementptr inbounds i32, i32* %1019, i32 1
  store i32* %1020, i32** @e, align 8
  store i32 %1018, i32* %1020, align 4
  %1021 = load i32, i32* @INT, align 4
  store i32 %1021, i32* @ty, align 4
  br label %1236

1022:                                             ; preds = %1005
  %1023 = load i8, i8* @tk, align 1
  %1024 = sext i8 %1023 to i32
  %1025 = load i8, i8* @Div, align 1
  %1026 = sext i8 %1025 to i32
  %1027 = icmp eq i32 %1024, %1026
  br i1 %1027, label %1028, label %1039

1028:                                             ; preds = %1022
  %1029 = call i32 (...) @next()
  %1030 = load i32, i32* @PSH, align 4
  %1031 = load i32*, i32** @e, align 8
  %1032 = getelementptr inbounds i32, i32* %1031, i32 1
  store i32* %1032, i32** @e, align 8
  store i32 %1030, i32* %1032, align 4
  %1033 = load i8, i8* @Inc, align 1
  %1034 = sext i8 %1033 to i32
  call void @expr(i32 %1034)
  %1035 = load i32, i32* @DIV, align 4
  %1036 = load i32*, i32** @e, align 8
  %1037 = getelementptr inbounds i32, i32* %1036, i32 1
  store i32* %1037, i32** @e, align 8
  store i32 %1035, i32* %1037, align 4
  %1038 = load i32, i32* @INT, align 4
  store i32 %1038, i32* @ty, align 4
  br label %1235

1039:                                             ; preds = %1022
  %1040 = load i8, i8* @tk, align 1
  %1041 = sext i8 %1040 to i32
  %1042 = load i8, i8* @Mod, align 1
  %1043 = sext i8 %1042 to i32
  %1044 = icmp eq i32 %1041, %1043
  br i1 %1044, label %1045, label %1056

1045:                                             ; preds = %1039
  %1046 = call i32 (...) @next()
  %1047 = load i32, i32* @PSH, align 4
  %1048 = load i32*, i32** @e, align 8
  %1049 = getelementptr inbounds i32, i32* %1048, i32 1
  store i32* %1049, i32** @e, align 8
  store i32 %1047, i32* %1049, align 4
  %1050 = load i8, i8* @Inc, align 1
  %1051 = sext i8 %1050 to i32
  call void @expr(i32 %1051)
  %1052 = load i32, i32* @MOD, align 4
  %1053 = load i32*, i32** @e, align 8
  %1054 = getelementptr inbounds i32, i32* %1053, i32 1
  store i32* %1054, i32** @e, align 8
  store i32 %1052, i32* %1054, align 4
  %1055 = load i32, i32* @INT, align 4
  store i32 %1055, i32* @ty, align 4
  br label %1234

1056:                                             ; preds = %1039
  %1057 = load i8, i8* @tk, align 1
  %1058 = sext i8 %1057 to i32
  %1059 = load i8, i8* @Inc, align 1
  %1060 = sext i8 %1059 to i32
  %1061 = icmp eq i32 %1058, %1060
  br i1 %1061, label %1068, label %1062

1062:                                             ; preds = %1056
  %1063 = load i8, i8* @tk, align 1
  %1064 = sext i8 %1063 to i32
  %1065 = load i8, i8* @Dec, align 1
  %1066 = sext i8 %1065 to i32
  %1067 = icmp eq i32 %1064, %1066
  br i1 %1067, label %1068, label %1162

1068:                                             ; preds = %1062, %1056
  %1069 = load i32*, i32** @e, align 8
  %1070 = load i32, i32* %1069, align 4
  %1071 = load i32, i32* @LC, align 4
  %1072 = icmp eq i32 %1070, %1071
  br i1 %1072, label %1073, label %1079

1073:                                             ; preds = %1068
  %1074 = load i32, i32* @PSH, align 4
  %1075 = load i32*, i32** @e, align 8
  store i32 %1074, i32* %1075, align 4
  %1076 = load i32, i32* @LC, align 4
  %1077 = load i32*, i32** @e, align 8
  %1078 = getelementptr inbounds i32, i32* %1077, i32 1
  store i32* %1078, i32** @e, align 8
  store i32 %1076, i32* %1078, align 4
  br label %1095

1079:                                             ; preds = %1068
  %1080 = load i32*, i32** @e, align 8
  %1081 = load i32, i32* %1080, align 4
  %1082 = load i32, i32* @LI, align 4
  %1083 = icmp eq i32 %1081, %1082
  br i1 %1083, label %1084, label %1090

1084:                                             ; preds = %1079
  %1085 = load i32, i32* @PSH, align 4
  %1086 = load i32*, i32** @e, align 8
  store i32 %1085, i32* %1086, align 4
  %1087 = load i32, i32* @LI, align 4
  %1088 = load i32*, i32** @e, align 8
  %1089 = getelementptr inbounds i32, i32* %1088, i32 1
  store i32* %1089, i32** @e, align 8
  store i32 %1087, i32* %1089, align 4
  br label %1094

1090:                                             ; preds = %1079
  %1091 = load i32, i32* @line, align 4
  %1092 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %1091)
  %1093 = call i32 @exit(i32 -1) #3
  unreachable

1094:                                             ; preds = %1084
  br label %1095

1095:                                             ; preds = %1094, %1073
  %1096 = load i32, i32* @PSH, align 4
  %1097 = load i32*, i32** @e, align 8
  %1098 = getelementptr inbounds i32, i32* %1097, i32 1
  store i32* %1098, i32** @e, align 8
  store i32 %1096, i32* %1098, align 4
  %1099 = load i32, i32* @IMM, align 4
  %1100 = load i32*, i32** @e, align 8
  %1101 = getelementptr inbounds i32, i32* %1100, i32 1
  store i32* %1101, i32** @e, align 8
  store i32 %1099, i32* %1101, align 4
  %1102 = load i32, i32* @ty, align 4
  %1103 = load i32, i32* @PTR, align 4
  %1104 = icmp sgt i32 %1102, %1103
  %1105 = zext i1 %1104 to i64
  %1106 = select i1 %1104, i64 4, i64 1
  %1107 = trunc i64 %1106 to i32
  %1108 = load i32*, i32** @e, align 8
  %1109 = getelementptr inbounds i32, i32* %1108, i32 1
  store i32* %1109, i32** @e, align 8
  store i32 %1107, i32* %1109, align 4
  %1110 = load i8, i8* @tk, align 1
  %1111 = sext i8 %1110 to i32
  %1112 = load i8, i8* @Inc, align 1
  %1113 = sext i8 %1112 to i32
  %1114 = icmp eq i32 %1111, %1113
  br i1 %1114, label %1115, label %1117

1115:                                             ; preds = %1095
  %1116 = load i32, i32* @ADD, align 4
  br label %1119

1117:                                             ; preds = %1095
  %1118 = load i32, i32* @SUB, align 4
  br label %1119

1119:                                             ; preds = %1117, %1115
  %1120 = phi i32 [ %1116, %1115 ], [ %1118, %1117 ]
  %1121 = load i32*, i32** @e, align 8
  %1122 = getelementptr inbounds i32, i32* %1121, i32 1
  store i32* %1122, i32** @e, align 8
  store i32 %1120, i32* %1122, align 4
  %1123 = load i32, i32* @ty, align 4
  %1124 = load i32, i32* @CHAR, align 4
  %1125 = icmp eq i32 %1123, %1124
  br i1 %1125, label %1126, label %1128

1126:                                             ; preds = %1119
  %1127 = load i32, i32* @SC, align 4
  br label %1130

1128:                                             ; preds = %1119
  %1129 = load i32, i32* @SI, align 4
  br label %1130

1130:                                             ; preds = %1128, %1126
  %1131 = phi i32 [ %1127, %1126 ], [ %1129, %1128 ]
  %1132 = load i32*, i32** @e, align 8
  %1133 = getelementptr inbounds i32, i32* %1132, i32 1
  store i32* %1133, i32** @e, align 8
  store i32 %1131, i32* %1133, align 4
  %1134 = load i32, i32* @PSH, align 4
  %1135 = load i32*, i32** @e, align 8
  %1136 = getelementptr inbounds i32, i32* %1135, i32 1
  store i32* %1136, i32** @e, align 8
  store i32 %1134, i32* %1136, align 4
  %1137 = load i32, i32* @IMM, align 4
  %1138 = load i32*, i32** @e, align 8
  %1139 = getelementptr inbounds i32, i32* %1138, i32 1
  store i32* %1139, i32** @e, align 8
  store i32 %1137, i32* %1139, align 4
  %1140 = load i32, i32* @ty, align 4
  %1141 = load i32, i32* @PTR, align 4
  %1142 = icmp sgt i32 %1140, %1141
  %1143 = zext i1 %1142 to i64
  %1144 = select i1 %1142, i64 4, i64 1
  %1145 = trunc i64 %1144 to i32
  %1146 = load i32*, i32** @e, align 8
  %1147 = getelementptr inbounds i32, i32* %1146, i32 1
  store i32* %1147, i32** @e, align 8
  store i32 %1145, i32* %1147, align 4
  %1148 = load i8, i8* @tk, align 1
  %1149 = sext i8 %1148 to i32
  %1150 = load i8, i8* @Inc, align 1
  %1151 = sext i8 %1150 to i32
  %1152 = icmp eq i32 %1149, %1151
  br i1 %1152, label %1153, label %1155

1153:                                             ; preds = %1130
  %1154 = load i32, i32* @SUB, align 4
  br label %1157

1155:                                             ; preds = %1130
  %1156 = load i32, i32* @ADD, align 4
  br label %1157

1157:                                             ; preds = %1155, %1153
  %1158 = phi i32 [ %1154, %1153 ], [ %1156, %1155 ]
  %1159 = load i32*, i32** @e, align 8
  %1160 = getelementptr inbounds i32, i32* %1159, i32 1
  store i32* %1160, i32** @e, align 8
  store i32 %1158, i32* %1160, align 4
  %1161 = call i32 (...) @next()
  br label %1233

1162:                                             ; preds = %1062
  %1163 = load i8, i8* @tk, align 1
  %1164 = sext i8 %1163 to i32
  %1165 = load i8, i8* @Brak, align 1
  %1166 = sext i8 %1165 to i32
  %1167 = icmp eq i32 %1164, %1166
  br i1 %1167, label %1168, label %1226

1168:                                             ; preds = %1162
  %1169 = call i32 (...) @next()
  %1170 = load i32, i32* @PSH, align 4
  %1171 = load i32*, i32** @e, align 8
  %1172 = getelementptr inbounds i32, i32* %1171, i32 1
  store i32* %1172, i32** @e, align 8
  store i32 %1170, i32* %1172, align 4
  %1173 = load i8, i8* @Assign, align 1
  %1174 = sext i8 %1173 to i32
  call void @expr(i32 %1174)
  %1175 = load i8, i8* @tk, align 1
  %1176 = sext i8 %1175 to i32
  %1177 = icmp eq i32 %1176, 93
  br i1 %1177, label %1178, label %1180

1178:                                             ; preds = %1168
  %1179 = call i32 (...) @next()
  br label %1184

1180:                                             ; preds = %1168
  %1181 = load i32, i32* @line, align 4
  %1182 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 %1181)
  %1183 = call i32 @exit(i32 -1) #3
  unreachable

1184:                                             ; preds = %1178
  %1185 = load i32, i32* %3, align 4
  %1186 = load i32, i32* @PTR, align 4
  %1187 = icmp sgt i32 %1185, %1186
  br i1 %1187, label %1188, label %1200

1188:                                             ; preds = %1184
  %1189 = load i32, i32* @PSH, align 4
  %1190 = load i32*, i32** @e, align 8
  %1191 = getelementptr inbounds i32, i32* %1190, i32 1
  store i32* %1191, i32** @e, align 8
  store i32 %1189, i32* %1191, align 4
  %1192 = load i32, i32* @IMM, align 4
  %1193 = load i32*, i32** @e, align 8
  %1194 = getelementptr inbounds i32, i32* %1193, i32 1
  store i32* %1194, i32** @e, align 8
  store i32 %1192, i32* %1194, align 4
  %1195 = load i32*, i32** @e, align 8
  %1196 = getelementptr inbounds i32, i32* %1195, i32 1
  store i32* %1196, i32** @e, align 8
  store i32 4, i32* %1196, align 4
  %1197 = load i32, i32* @MUL, align 4
  %1198 = load i32*, i32** @e, align 8
  %1199 = getelementptr inbounds i32, i32* %1198, i32 1
  store i32* %1199, i32** @e, align 8
  store i32 %1197, i32* %1199, align 4
  br label %1209

1200:                                             ; preds = %1184
  %1201 = load i32, i32* %3, align 4
  %1202 = load i32, i32* @PTR, align 4
  %1203 = icmp slt i32 %1201, %1202
  br i1 %1203, label %1204, label %1208

1204:                                             ; preds = %1200
  %1205 = load i32, i32* @line, align 4
  %1206 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %1205)
  %1207 = call i32 @exit(i32 -1) #3
  unreachable

1208:                                             ; preds = %1200
  br label %1209

1209:                                             ; preds = %1208, %1188
  %1210 = load i32, i32* @ADD, align 4
  %1211 = load i32*, i32** @e, align 8
  %1212 = getelementptr inbounds i32, i32* %1211, i32 1
  store i32* %1212, i32** @e, align 8
  store i32 %1210, i32* %1212, align 4
  %1213 = load i32, i32* %3, align 4
  %1214 = load i32, i32* @PTR, align 4
  %1215 = sub nsw i32 %1213, %1214
  store i32 %1215, i32* @ty, align 4
  %1216 = load i32, i32* @CHAR, align 4
  %1217 = icmp eq i32 %1215, %1216
  br i1 %1217, label %1218, label %1220

1218:                                             ; preds = %1209
  %1219 = load i32, i32* @LC, align 4
  br label %1222

1220:                                             ; preds = %1209
  %1221 = load i32, i32* @LI, align 4
  br label %1222

1222:                                             ; preds = %1220, %1218
  %1223 = phi i32 [ %1219, %1218 ], [ %1221, %1220 ]
  %1224 = load i32*, i32** @e, align 8
  %1225 = getelementptr inbounds i32, i32* %1224, i32 1
  store i32* %1225, i32** @e, align 8
  store i32 %1223, i32* %1225, align 4
  br label %1232

1226:                                             ; preds = %1162
  %1227 = load i32, i32* @line, align 4
  %1228 = load i8, i8* @tk, align 1
  %1229 = sext i8 %1228 to i32
  %1230 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %1227, i32 %1229)
  %1231 = call i32 @exit(i32 -1) #3
  unreachable

1232:                                             ; preds = %1222
  br label %1233

1233:                                             ; preds = %1232, %1157
  br label %1234

1234:                                             ; preds = %1233, %1045
  br label %1235

1235:                                             ; preds = %1234, %1028
  br label %1236

1236:                                             ; preds = %1235, %1011
  br label %1237

1237:                                             ; preds = %1236, %1004
  br label %1238

1238:                                             ; preds = %1237, %940
  br label %1239

1239:                                             ; preds = %1238, %901
  br label %1240

1240:                                             ; preds = %1239, %884
  br label %1241

1241:                                             ; preds = %1240, %867
  br label %1242

1242:                                             ; preds = %1241, %850
  br label %1243

1243:                                             ; preds = %1242, %833
  br label %1244

1244:                                             ; preds = %1243, %816
  br label %1245

1245:                                             ; preds = %1244, %799
  br label %1246

1246:                                             ; preds = %1245, %782
  br label %1247

1247:                                             ; preds = %1246, %765
  br label %1248

1248:                                             ; preds = %1247, %748
  br label %1249

1249:                                             ; preds = %1248, %731
  br label %1250

1250:                                             ; preds = %1249, %711
  br label %1251

1251:                                             ; preds = %1250, %691
  br label %1252

1252:                                             ; preds = %1251, %669
  br label %1253

1253:                                             ; preds = %1252, %641
  br label %601

1254:                                             ; preds = %601
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @next(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
