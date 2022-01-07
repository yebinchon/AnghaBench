; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_resultset_fields_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_resultset_fields_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32** }

@G_MAXINT = common dso_local global i64 0, align 8
@methods_proxy_resultset_fields_field = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_resultset_fields_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_resultset_fields_get(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @luaL_checkself(i32* %10)
  %12 = inttoptr i64 %11 to %struct.TYPE_5__**
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %5, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %6, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @luaL_checkinteger(i32* %20, i32 2)
  store i32 %21, i32* %9, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @G_MAXINT, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

28:                                               ; preds = %1
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = icmp sgt i32 %32, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %31, %28
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @lua_pushnil(i32* %39)
  store i32 1, i32* %2, align 4
  br label %59

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %44, i64 %47
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %7, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = call i32** @lua_newuserdata(i32* %50, i32 8)
  store i32** %51, i32*** %8, align 8
  %52 = load i32*, i32** %7, align 8
  %53 = load i32**, i32*** %8, align 8
  store i32* %52, i32** %53, align 8
  %54 = load i32*, i32** %3, align 8
  %55 = load i32, i32* @methods_proxy_resultset_fields_field, align 4
  %56 = call i32 @proxy_getmetatable(i32* %54, i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @lua_setmetatable(i32* %57, i32 -2)
  store i32 1, i32* %2, align 4
  br label %59

59:                                               ; preds = %41, %38, %27
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i32 @luaL_checkinteger(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

declare dso_local i32** @lua_newuserdata(i32*, i32) #1

declare dso_local i32 @proxy_getmetatable(i32*, i32) #1

declare dso_local i32 @lua_setmetatable(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
