; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_sql-tokenizer-lua.c_proxy_tokenize_token_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_sql-tokenizer-lua.c_proxy_tokenize_token_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"token_id\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"token_name\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"tokens[...] has no %s field\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_tokenize_token_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_tokenize_token_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i64 @luaL_checkself(i32* %9)
  %11 = inttoptr i64 %10 to %struct.TYPE_2__**
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %4, align 8
  %13 = load i32*, i32** %3, align 8
  %14 = call i8* @luaL_checklstring(i32* %13, i32 2, i64* %5)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @C(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = call i64 @strleq(i8* %15, i64 %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @S(i32 %24)
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 (i32*, i8*, ...) @lua_pushlstring(i32* %21, i8* %27)
  store i32 1, i32* %2, align 4
  br label %63

29:                                               ; preds = %1
  %30 = load i8*, i8** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @C(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %33 = call i64 @strleq(i8* %30, i64 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load i32*, i32** %3, align 8
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @lua_pushinteger(i32* %36, i32 %39)
  store i32 1, i32* %2, align 4
  br label %63

41:                                               ; preds = %29
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @C(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %45 = call i64 @strleq(i8* %42, i64 %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  store i64 0, i64* %7, align 8
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @sql_token_get_name(i32 %50, i64* %7)
  store i8* %51, i8** %8, align 8
  %52 = load i32*, i32** %3, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 (i32*, i8*, ...) @lua_pushlstring(i32* %52, i8* %53, i64 %54)
  store i32 1, i32* %2, align 4
  br label %63

56:                                               ; preds = %41
  %57 = load i32*, i32** %3, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 @luaL_error(i32* %57, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %56
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %47, %35, %20
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i64 @strleq(i8*, i64, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @lua_pushlstring(i32*, i8*, ...) #1

declare dso_local i32 @S(i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i8* @sql_token_get_name(i32, i64*) #1

declare dso_local i32 @luaL_error(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
