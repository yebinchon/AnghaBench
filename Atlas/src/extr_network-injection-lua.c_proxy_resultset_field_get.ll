; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_resultset_field_get.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-injection-lua.c_proxy_resultset_field_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"org_name\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"org_table\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @proxy_resultset_field_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proxy_resultset_field_get(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i64 @luaL_checkself(i32* %6)
  %8 = inttoptr i64 %7 to %struct.TYPE_2__**
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  store %struct.TYPE_2__* %9, %struct.TYPE_2__** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i8* @luaL_checklstring(i32* %10, i32 2, i32* %4)
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @C(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = call i64 @strleq(i8* %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load i32*, i32** %2, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @lua_pushinteger(i32* %18, i32 %21)
  br label %78

23:                                               ; preds = %1
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @C(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %27 = call i64 @strleq(i8* %24, i32 %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load i32*, i32** %2, align 8
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @lua_pushstring(i32* %30, i32 %33)
  br label %77

35:                                               ; preds = %23
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @C(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %39 = call i64 @strleq(i8* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32*, i32** %2, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lua_pushstring(i32* %42, i32 %45)
  br label %76

47:                                               ; preds = %35
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @C(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %51 = call i64 @strleq(i8* %48, i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32*, i32** %2, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lua_pushstring(i32* %54, i32 %57)
  br label %75

59:                                               ; preds = %47
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @C(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %63 = call i64 @strleq(i8* %60, i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %59
  %66 = load i32*, i32** %2, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @lua_pushstring(i32* %66, i32 %69)
  br label %74

71:                                               ; preds = %59
  %72 = load i32*, i32** %2, align 8
  %73 = call i32 @lua_pushnil(i32* %72)
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %74, %53
  br label %76

76:                                               ; preds = %75, %41
  br label %77

77:                                               ; preds = %76, %29
  br label %78

78:                                               ; preds = %77, %17
  ret i32 1
}

declare dso_local i64 @luaL_checkself(i32*) #1

declare dso_local i8* @luaL_checklstring(i32*, i32, i32*) #1

declare dso_local i64 @strleq(i8*, i32, i32) #1

declare dso_local i32 @C(i8*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @lua_pushstring(i32*, i32) #1

declare dso_local i32 @lua_pushnil(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
