; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_operand.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_expr_operand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i8*, i8*, double, i8*, i8*, i32, i32, i32 }

@token = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@TOKEN_INT = common dso_local global i32 0, align 4
@TOKEN_FLOAT = common dso_local global i32 0, align 4
@TOKEN_STR = common dso_local global i32 0, align 4
@TOKEN_NAME = common dso_local global i32 0, align 4
@TOKEN_LBRACE = common dso_local global i32 0, align 4
@new_keyword = common dso_local global i32 0, align 4
@sizeof_keyword = common dso_local global i32 0, align 4
@TOKEN_LPAREN = common dso_local global i32 0, align 4
@TOKEN_COLON = common dso_local global i32 0, align 4
@TOKEN_RPAREN = common dso_local global i32 0, align 4
@alignof_keyword = common dso_local global i32 0, align 4
@typeof_keyword = common dso_local global i32 0, align 4
@offsetof_keyword = common dso_local global i32 0, align 4
@TOKEN_COMMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unexpected token %s in expression\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @parse_expr_operand() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca double, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 8), align 8
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* @TOKEN_INT, align 4
  %25 = call i64 @is_token(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %0
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 0), align 8
  store i64 %28, i64* %3, align 8
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 6), align 8
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 7), align 4
  store i32 %30, i32* %5, align 4
  %31 = call i32 (...) @next_token()
  %32 = load i32, i32* %2, align 4
  %33 = load i64, i64* %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32* @new_expr_int(i32 %32, i64 %33, i32 %34, i32 %35)
  store i32* %36, i32** %1, align 8
  br label %218

37:                                               ; preds = %0
  %38 = load i32, i32* @TOKEN_FLOAT, align 4
  %39 = call i64 @is_token(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 1), align 8
  store i8* %42, i8** %6, align 8
  %43 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 2), align 8
  store i8* %43, i8** %7, align 8
  %44 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 3), align 8
  store double %44, double* %8, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 7), align 4
  store i32 %45, i32* %9, align 4
  %46 = call i32 (...) @next_token()
  %47 = load i32, i32* %2, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load double, double* %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i32* @new_expr_float(i32 %47, i8* %48, i8* %49, double %50, i32 %51)
  store i32* %52, i32** %1, align 8
  br label %218

53:                                               ; preds = %37
  %54 = load i32, i32* @TOKEN_STR, align 4
  %55 = call i64 @is_token(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %53
  %58 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 4), align 8
  store i8* %58, i8** %10, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 6), align 8
  store i32 %59, i32* %11, align 4
  %60 = call i32 (...) @next_token()
  %61 = load i32, i32* %2, align 4
  %62 = load i8*, i8** %10, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32* @new_expr_str(i32 %61, i8* %62, i32 %63)
  store i32* %64, i32** %1, align 8
  br label %218

65:                                               ; preds = %53
  %66 = load i32, i32* @TOKEN_NAME, align 4
  %67 = call i64 @is_token(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i8*, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @token, i32 0, i32 5), align 8
  store i8* %70, i8** %12, align 8
  %71 = call i32 (...) @next_token()
  %72 = load i32, i32* @TOKEN_LBRACE, align 4
  %73 = call i64 @is_token(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* %2, align 4
  %77 = call i32* @new_typespec_name(i32 %76, i8** %12, i32 1)
  %78 = call i32* @parse_expr_compound(i32* %77)
  store i32* %78, i32** %1, align 8
  br label %218

79:                                               ; preds = %69
  %80 = load i32, i32* %2, align 4
  %81 = load i8*, i8** %12, align 8
  %82 = call i32* @new_expr_name(i32 %80, i8* %81)
  store i32* %82, i32** %1, align 8
  br label %218

83:                                               ; preds = %65
  %84 = load i32, i32* @new_keyword, align 4
  %85 = call i64 @match_keyword(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i32, i32* %2, align 4
  %89 = call i32* @parse_expr_new(i32 %88)
  store i32* %89, i32** %1, align 8
  br label %218

90:                                               ; preds = %83
  %91 = load i32, i32* @sizeof_keyword, align 4
  %92 = call i64 @match_keyword(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %90
  %95 = load i32, i32* @TOKEN_LPAREN, align 4
  %96 = call i32 @expect_token(i32 %95)
  %97 = load i32, i32* @TOKEN_COLON, align 4
  %98 = call i64 @match_token(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = call i32* (...) @parse_type()
  store i32* %101, i32** %13, align 8
  %102 = load i32, i32* @TOKEN_RPAREN, align 4
  %103 = call i32 @expect_token(i32 %102)
  %104 = load i32, i32* %2, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = call i32* @new_expr_sizeof_type(i32 %104, i32* %105)
  store i32* %106, i32** %1, align 8
  br label %218

107:                                              ; preds = %94
  %108 = call i32* (...) @parse_expr()
  store i32* %108, i32** %14, align 8
  %109 = load i32, i32* @TOKEN_RPAREN, align 4
  %110 = call i32 @expect_token(i32 %109)
  %111 = load i32, i32* %2, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = call i32* @new_expr_sizeof_expr(i32 %111, i32* %112)
  store i32* %113, i32** %1, align 8
  br label %218

114:                                              ; preds = %90
  %115 = load i32, i32* @alignof_keyword, align 4
  %116 = call i64 @match_keyword(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %114
  %119 = load i32, i32* @TOKEN_LPAREN, align 4
  %120 = call i32 @expect_token(i32 %119)
  %121 = load i32, i32* @TOKEN_COLON, align 4
  %122 = call i64 @match_token(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = call i32* (...) @parse_type()
  store i32* %125, i32** %15, align 8
  %126 = load i32, i32* @TOKEN_RPAREN, align 4
  %127 = call i32 @expect_token(i32 %126)
  %128 = load i32, i32* %2, align 4
  %129 = load i32*, i32** %15, align 8
  %130 = call i32* @new_expr_alignof_type(i32 %128, i32* %129)
  store i32* %130, i32** %1, align 8
  br label %218

131:                                              ; preds = %118
  %132 = call i32* (...) @parse_expr()
  store i32* %132, i32** %16, align 8
  %133 = load i32, i32* @TOKEN_RPAREN, align 4
  %134 = call i32 @expect_token(i32 %133)
  %135 = load i32, i32* %2, align 4
  %136 = load i32*, i32** %16, align 8
  %137 = call i32* @new_expr_alignof_expr(i32 %135, i32* %136)
  store i32* %137, i32** %1, align 8
  br label %218

138:                                              ; preds = %114
  %139 = load i32, i32* @typeof_keyword, align 4
  %140 = call i64 @match_keyword(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %162

142:                                              ; preds = %138
  %143 = load i32, i32* @TOKEN_LPAREN, align 4
  %144 = call i32 @expect_token(i32 %143)
  %145 = load i32, i32* @TOKEN_COLON, align 4
  %146 = call i64 @match_token(i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %142
  %149 = call i32* (...) @parse_type()
  store i32* %149, i32** %17, align 8
  %150 = load i32, i32* @TOKEN_RPAREN, align 4
  %151 = call i32 @expect_token(i32 %150)
  %152 = load i32, i32* %2, align 4
  %153 = load i32*, i32** %17, align 8
  %154 = call i32* @new_expr_typeof_type(i32 %152, i32* %153)
  store i32* %154, i32** %1, align 8
  br label %218

155:                                              ; preds = %142
  %156 = call i32* (...) @parse_expr()
  store i32* %156, i32** %18, align 8
  %157 = load i32, i32* @TOKEN_RPAREN, align 4
  %158 = call i32 @expect_token(i32 %157)
  %159 = load i32, i32* %2, align 4
  %160 = load i32*, i32** %18, align 8
  %161 = call i32* @new_expr_typeof_expr(i32 %159, i32* %160)
  store i32* %161, i32** %1, align 8
  br label %218

162:                                              ; preds = %138
  %163 = load i32, i32* @offsetof_keyword, align 4
  %164 = call i64 @match_keyword(i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %162
  %167 = load i32, i32* @TOKEN_LPAREN, align 4
  %168 = call i32 @expect_token(i32 %167)
  %169 = call i32* (...) @parse_type()
  store i32* %169, i32** %19, align 8
  %170 = load i32, i32* @TOKEN_COMMA, align 4
  %171 = call i32 @expect_token(i32 %170)
  %172 = call i8* (...) @parse_name()
  store i8* %172, i8** %20, align 8
  %173 = load i32, i32* @TOKEN_RPAREN, align 4
  %174 = call i32 @expect_token(i32 %173)
  %175 = load i32, i32* %2, align 4
  %176 = load i32*, i32** %19, align 8
  %177 = load i8*, i8** %20, align 8
  %178 = call i32* @new_expr_offsetof(i32 %175, i32* %176, i8* %177)
  store i32* %178, i32** %1, align 8
  br label %218

179:                                              ; preds = %162
  %180 = load i32, i32* @TOKEN_LBRACE, align 4
  %181 = call i64 @is_token(i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %179
  %184 = call i32* @parse_expr_compound(i32* null)
  store i32* %184, i32** %1, align 8
  br label %218

185:                                              ; preds = %179
  %186 = load i32, i32* @TOKEN_LPAREN, align 4
  %187 = call i64 @match_token(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %215

189:                                              ; preds = %185
  %190 = load i32, i32* @TOKEN_COLON, align 4
  %191 = call i64 @match_token(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %189
  %194 = call i32* (...) @parse_type()
  store i32* %194, i32** %21, align 8
  %195 = load i32, i32* @TOKEN_RPAREN, align 4
  %196 = call i32 @expect_token(i32 %195)
  %197 = load i32, i32* @TOKEN_LBRACE, align 4
  %198 = call i64 @is_token(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %193
  %201 = load i32*, i32** %21, align 8
  %202 = call i32* @parse_expr_compound(i32* %201)
  store i32* %202, i32** %1, align 8
  br label %218

203:                                              ; preds = %193
  %204 = load i32, i32* %2, align 4
  %205 = load i32*, i32** %21, align 8
  %206 = call i32 (...) @parse_expr_unary()
  %207 = call i32* @new_expr_cast(i32 %204, i32* %205, i32 %206)
  store i32* %207, i32** %1, align 8
  br label %218

208:                                              ; preds = %189
  %209 = call i32* (...) @parse_expr()
  store i32* %209, i32** %22, align 8
  %210 = load i32, i32* @TOKEN_RPAREN, align 4
  %211 = call i32 @expect_token(i32 %210)
  %212 = load i32, i32* %2, align 4
  %213 = load i32*, i32** %22, align 8
  %214 = call i32* @new_expr_paren(i32 %212, i32* %213)
  store i32* %214, i32** %1, align 8
  br label %218

215:                                              ; preds = %185
  %216 = call i32 (...) @token_info()
  %217 = call i32 @fatal_error_here(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %216)
  store i32* null, i32** %1, align 8
  br label %218

218:                                              ; preds = %215, %208, %203, %200, %183, %166, %155, %148, %131, %124, %107, %100, %87, %79, %75, %57, %41, %27
  %219 = load i32*, i32** %1, align 8
  ret i32* %219
}

declare dso_local i64 @is_token(i32) #1

declare dso_local i32 @next_token(...) #1

declare dso_local i32* @new_expr_int(i32, i64, i32, i32) #1

declare dso_local i32* @new_expr_float(i32, i8*, i8*, double, i32) #1

declare dso_local i32* @new_expr_str(i32, i8*, i32) #1

declare dso_local i32* @parse_expr_compound(i32*) #1

declare dso_local i32* @new_typespec_name(i32, i8**, i32) #1

declare dso_local i32* @new_expr_name(i32, i8*) #1

declare dso_local i64 @match_keyword(i32) #1

declare dso_local i32* @parse_expr_new(i32) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32* @parse_type(...) #1

declare dso_local i32* @new_expr_sizeof_type(i32, i32*) #1

declare dso_local i32* @parse_expr(...) #1

declare dso_local i32* @new_expr_sizeof_expr(i32, i32*) #1

declare dso_local i32* @new_expr_alignof_type(i32, i32*) #1

declare dso_local i32* @new_expr_alignof_expr(i32, i32*) #1

declare dso_local i32* @new_expr_typeof_type(i32, i32*) #1

declare dso_local i32* @new_expr_typeof_expr(i32, i32*) #1

declare dso_local i8* @parse_name(...) #1

declare dso_local i32* @new_expr_offsetof(i32, i32*, i8*) #1

declare dso_local i32* @new_expr_cast(i32, i32*, i32) #1

declare dso_local i32 @parse_expr_unary(...) #1

declare dso_local i32* @new_expr_paren(i32, i32*) #1

declare dso_local i32 @fatal_error_here(i8*, i32) #1

declare dso_local i32 @token_info(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
