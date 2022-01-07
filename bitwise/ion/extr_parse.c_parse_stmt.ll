; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_stmt.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@token = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@if_keyword = common dso_local global i32 0, align 4
@while_keyword = common dso_local global i32 0, align 4
@do_keyword = common dso_local global i32 0, align 4
@for_keyword = common dso_local global i32 0, align 4
@switch_keyword = common dso_local global i32 0, align 4
@TOKEN_LBRACE = common dso_local global i32 0, align 4
@break_keyword = common dso_local global i32 0, align 4
@TOKEN_SEMICOLON = common dso_local global i32 0, align 4
@continue_keyword = common dso_local global i32 0, align 4
@return_keyword = common dso_local global i32 0, align 4
@TOKEN_POUND = common dso_local global i32 0, align 4
@TOKEN_COLON = common dso_local global i32 0, align 4
@goto_keyword = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_17__* @parse_stmt() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = call i32 (...) @parse_notes()
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @token, i32 0, i32 0), align 4
  store i32 %7, i32* %2, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %3, align 8
  %8 = load i32, i32* @if_keyword, align 4
  %9 = call i64 @match_keyword(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.TYPE_17__* @parse_stmt_if(i32 %12)
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %3, align 8
  br label %128

14:                                               ; preds = %0
  %15 = load i32, i32* @while_keyword, align 4
  %16 = call i64 @match_keyword(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = call %struct.TYPE_17__* @parse_stmt_while(i32 %19)
  store %struct.TYPE_17__* %20, %struct.TYPE_17__** %3, align 8
  br label %127

21:                                               ; preds = %14
  %22 = load i32, i32* @do_keyword, align 4
  %23 = call i64 @match_keyword(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %2, align 4
  %27 = call %struct.TYPE_17__* @parse_stmt_do_while(i32 %26)
  store %struct.TYPE_17__* %27, %struct.TYPE_17__** %3, align 8
  br label %126

28:                                               ; preds = %21
  %29 = load i32, i32* @for_keyword, align 4
  %30 = call i64 @match_keyword(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = call %struct.TYPE_17__* @parse_stmt_for(i32 %33)
  store %struct.TYPE_17__* %34, %struct.TYPE_17__** %3, align 8
  br label %125

35:                                               ; preds = %28
  %36 = load i32, i32* @switch_keyword, align 4
  %37 = call i64 @match_keyword(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* %2, align 4
  %41 = call %struct.TYPE_17__* @parse_stmt_switch(i32 %40)
  store %struct.TYPE_17__* %41, %struct.TYPE_17__** %3, align 8
  br label %124

42:                                               ; preds = %35
  %43 = load i32, i32* @TOKEN_LBRACE, align 4
  %44 = call i64 @is_token(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i32, i32* %2, align 4
  %48 = call i32 (...) @parse_stmt_block()
  %49 = call %struct.TYPE_17__* @new_stmt_block(i32 %47, i32 %48)
  store %struct.TYPE_17__* %49, %struct.TYPE_17__** %3, align 8
  br label %123

50:                                               ; preds = %42
  %51 = load i32, i32* @break_keyword, align 4
  %52 = call i64 @match_keyword(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %56 = call i32 @expect_token(i32 %55)
  %57 = load i32, i32* %2, align 4
  %58 = call %struct.TYPE_17__* @new_stmt_break(i32 %57)
  store %struct.TYPE_17__* %58, %struct.TYPE_17__** %3, align 8
  br label %122

59:                                               ; preds = %50
  %60 = load i32, i32* @continue_keyword, align 4
  %61 = call i64 @match_keyword(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %65 = call i32 @expect_token(i32 %64)
  %66 = load i32, i32* %2, align 4
  %67 = call %struct.TYPE_17__* @new_stmt_continue(i32 %66)
  store %struct.TYPE_17__* %67, %struct.TYPE_17__** %3, align 8
  br label %121

68:                                               ; preds = %59
  %69 = load i32, i32* @return_keyword, align 4
  %70 = call i64 @match_keyword(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  store i32* null, i32** %4, align 8
  %73 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %74 = call i64 @is_token(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = call i32* (...) @parse_expr()
  store i32* %77, i32** %4, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %80 = call i32 @expect_token(i32 %79)
  %81 = load i32, i32* %2, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = call %struct.TYPE_17__* @new_stmt_return(i32 %81, i32* %82)
  store %struct.TYPE_17__* %83, %struct.TYPE_17__** %3, align 8
  br label %120

84:                                               ; preds = %68
  %85 = load i32, i32* @TOKEN_POUND, align 4
  %86 = call i64 @match_token(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = call i32 (...) @parse_note()
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %91 = call i32 @expect_token(i32 %90)
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call %struct.TYPE_17__* @new_stmt_note(i32 %92, i32 %93)
  store %struct.TYPE_17__* %94, %struct.TYPE_17__** %3, align 8
  br label %119

95:                                               ; preds = %84
  %96 = load i32, i32* @TOKEN_COLON, align 4
  %97 = call i64 @match_token(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %95
  %100 = load i32, i32* %2, align 4
  %101 = call i32 (...) @parse_name()
  %102 = call %struct.TYPE_17__* @new_stmt_label(i32 %100, i32 %101)
  store %struct.TYPE_17__* %102, %struct.TYPE_17__** %3, align 8
  br label %118

103:                                              ; preds = %95
  %104 = load i32, i32* @goto_keyword, align 4
  %105 = call i64 @match_keyword(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %103
  %108 = load i32, i32* %2, align 4
  %109 = call i32 (...) @parse_name()
  %110 = call %struct.TYPE_17__* @new_stmt_goto(i32 %108, i32 %109)
  store %struct.TYPE_17__* %110, %struct.TYPE_17__** %3, align 8
  %111 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %112 = call i32 @expect_token(i32 %111)
  br label %117

113:                                              ; preds = %103
  %114 = call %struct.TYPE_17__* (...) @parse_simple_stmt()
  store %struct.TYPE_17__* %114, %struct.TYPE_17__** %3, align 8
  %115 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %116 = call i32 @expect_token(i32 %115)
  br label %117

117:                                              ; preds = %113, %107
  br label %118

118:                                              ; preds = %117, %99
  br label %119

119:                                              ; preds = %118, %88
  br label %120

120:                                              ; preds = %119, %78
  br label %121

121:                                              ; preds = %120, %63
  br label %122

122:                                              ; preds = %121, %54
  br label %123

123:                                              ; preds = %122, %46
  br label %124

124:                                              ; preds = %123, %39
  br label %125

125:                                              ; preds = %124, %32
  br label %126

126:                                              ; preds = %125, %25
  br label %127

127:                                              ; preds = %126, %18
  br label %128

128:                                              ; preds = %127, %11
  %129 = load i32, i32* %1, align 4
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  ret %struct.TYPE_17__* %132
}

declare dso_local i32 @parse_notes(...) #1

declare dso_local i64 @match_keyword(i32) #1

declare dso_local %struct.TYPE_17__* @parse_stmt_if(i32) #1

declare dso_local %struct.TYPE_17__* @parse_stmt_while(i32) #1

declare dso_local %struct.TYPE_17__* @parse_stmt_do_while(i32) #1

declare dso_local %struct.TYPE_17__* @parse_stmt_for(i32) #1

declare dso_local %struct.TYPE_17__* @parse_stmt_switch(i32) #1

declare dso_local i64 @is_token(i32) #1

declare dso_local %struct.TYPE_17__* @new_stmt_block(i32, i32) #1

declare dso_local i32 @parse_stmt_block(...) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local %struct.TYPE_17__* @new_stmt_break(i32) #1

declare dso_local %struct.TYPE_17__* @new_stmt_continue(i32) #1

declare dso_local i32* @parse_expr(...) #1

declare dso_local %struct.TYPE_17__* @new_stmt_return(i32, i32*) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32 @parse_note(...) #1

declare dso_local %struct.TYPE_17__* @new_stmt_note(i32, i32) #1

declare dso_local %struct.TYPE_17__* @new_stmt_label(i32, i32) #1

declare dso_local i32 @parse_name(...) #1

declare dso_local %struct.TYPE_17__* @new_stmt_goto(i32, i32) #1

declare dso_local %struct.TYPE_17__* @parse_simple_stmt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
