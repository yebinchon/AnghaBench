; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_sql-tokenizer-lua.c_proxy_tokenize_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_sql-tokenizer-lua.c_proxy_tokenize_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32** }

@G_MAXINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_tokenize_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_tokenize_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @luaL_checkself(i32* %8)
  %10 = inttoptr i64 %9 to %struct.TYPE_2__**
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %4, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @luaL_checkinteger(i32* %12, i32 2)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @G_MAXINT, align 8
  %18 = icmp sgt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 1
  br i1 %22, label %30, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = icmp sgt i32 %24, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %20
  store i32 0, i32* %2, align 4
  br label %54

31:                                               ; preds = %23
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32**, i32*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %34, i64 %37
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = icmp eq i32* null, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32*, i32** %3, align 8
  %44 = call i32 @lua_pushnil(i32* %43)
  store i32 1, i32* %2, align 4
  br label %54

45:                                               ; preds = %31
  %46 = load i32*, i32** %3, align 8
  %47 = call i32** @lua_newuserdata(i32* %46, i32 8)
  store i32** %47, i32*** %7, align 8
  %48 = load i32*, i32** %6, align 8
  %49 = load i32**, i32*** %7, align 8
  store i32* %48, i32** %49, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = call i32 @sql_tokenizer_lua_token_getmetatable(i32* %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @lua_setmetatable(i32* %52, i32 -2)
  store i32 1, i32* %2, align 4
  br label %54

54:                                               ; preds = %45, %42, %30, %19
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32** @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @sql_tokenizer_lua_token_getmetatable(i32*) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
