; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_decl_func.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_parse.c_parse_decl_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TOKEN_LPAREN = common dso_local global i32 0, align 4
@TOKEN_RPAREN = common dso_local global i32 0, align 4
@TOKEN_COMMA = common dso_local global i32 0, align 4
@TOKEN_ELLIPSIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Multiple ellipsis in function declaration\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Ellipsis must be last parameter in function declaration\00", align 1
@TOKEN_COLON = common dso_local global i32 0, align 4
@TOKEN_SEMICOLON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_8__* @parse_decl_func(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_7__, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32 %0, i32* %2, align 4
  %12 = call i8* (...) @parse_name()
  store i8* %12, i8** %3, align 8
  %13 = load i32, i32* @TOKEN_LPAREN, align 4
  %14 = call i32 @expect_token(i32 %13)
  store i32* null, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32* null, i32** %6, align 8
  %15 = load i32, i32* @TOKEN_RPAREN, align 4
  %16 = call i32 @is_token(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %53, label %18

18:                                               ; preds = %1
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 (...) @parse_decl_func_param()
  %21 = call i32 @buf_push(i32* %19, i32 %20)
  br label %22

22:                                               ; preds = %51, %18
  %23 = load i32, i32* @TOKEN_COMMA, align 4
  %24 = call i64 @match_token(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %52

26:                                               ; preds = %22
  %27 = load i32, i32* @TOKEN_ELLIPSIS, align 4
  %28 = call i64 @match_token(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @error_here(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* @TOKEN_RPAREN, align 4
  %37 = call i32 @is_token(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32* (...) @parse_type()
  store i32* %40, i32** %6, align 8
  br label %41

41:                                               ; preds = %39, %35
  store i32 1, i32* %5, align 4
  br label %51

42:                                               ; preds = %26
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 @error_here(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 (...) @parse_decl_func_param()
  %50 = call i32 @buf_push(i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %41
  br label %22

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* @TOKEN_RPAREN, align 4
  %55 = call i32 @expect_token(i32 %54)
  store i32* null, i32** %7, align 8
  %56 = load i32, i32* @TOKEN_COLON, align 4
  %57 = call i64 @match_token(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32* (...) @parse_type()
  store i32* %60, i32** %7, align 8
  br label %61

61:                                               ; preds = %59, %53
  %62 = bitcast %struct.TYPE_7__* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %62, i8 0, i64 4, i1 false)
  %63 = load i32, i32* @TOKEN_SEMICOLON, align 4
  %64 = call i64 @match_token(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* %9, align 4
  br label %72

67:                                               ; preds = %61
  %68 = call i32 (...) @parse_stmt_block()
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32 %68, i32* %69, align 4
  %70 = bitcast %struct.TYPE_7__* %8 to i8*
  %71 = bitcast %struct.TYPE_7__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  store i32 0, i32* %9, align 4
  br label %72

72:                                               ; preds = %67, %66
  %73 = load i32, i32* %2, align 4
  %74 = load i8*, i8** %3, align 8
  %75 = load i32*, i32** %4, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i32 @buf_len(i32* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call %struct.TYPE_8__* @new_decl_func(i32 %73, i8* %74, i32* %75, i32 %77, i32* %78, i32 %79, i32* %80, i32 %82)
  store %struct.TYPE_8__* %83, %struct.TYPE_8__** %11, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  ret %struct.TYPE_8__* %87
}

declare dso_local i8* @parse_name(...) #1

declare dso_local i32 @expect_token(i32) #1

declare dso_local i32 @is_token(i32) #1

declare dso_local i32 @buf_push(i32*, i32) #1

declare dso_local i32 @parse_decl_func_param(...) #1

declare dso_local i64 @match_token(i32) #1

declare dso_local i32 @error_here(i8*) #1

declare dso_local i32* @parse_type(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @parse_stmt_block(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_8__* @new_decl_func(i32, i8*, i32*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @buf_len(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
