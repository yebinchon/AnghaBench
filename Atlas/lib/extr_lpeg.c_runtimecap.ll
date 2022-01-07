; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_runtimecap.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_runtimecap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i32 }
%struct.TYPE_11__ = type { i8*, i32, i64, i32*, %struct.TYPE_10__*, %struct.TYPE_10__* }

@Cruntime = common dso_local global i64 0, align 8
@Cclose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"too many runtime captures\00", align 1
@SUBJIDX = common dso_local global i32 0, align 4
@LUA_MULTRET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_10__*, i8*, i8*, i32)* @runtimecap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @runtimecap(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_10__* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = call %struct.TYPE_10__* @findopen(%struct.TYPE_10__* %16)
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %15, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %19 = call i64 @captype(%struct.TYPE_10__* %18)
  %20 = load i64, i64* @Cruntime, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32, i32* @Cclose, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 5
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 4
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %33, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 3
  store i32* %34, i32** %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %12, align 4
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i32 @luaL_checkstack(i32* %41, i32 4, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = call i32 @pushluaval(%struct.TYPE_11__* %13)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @SUBJIDX, align 4
  %46 = call i32 @lua_pushvalue(i32* %44, i32 %45)
  %47 = load i32*, i32** %7, align 8
  %48 = load i8*, i8** %11, align 8
  %49 = load i8*, i8** %10, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = add nsw i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = call i32 @lua_pushinteger(i32* %47, i32 %54)
  %56 = call i32 @pushallcaptures(%struct.TYPE_11__* %13, i32 0)
  store i32 %56, i32* %14, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %14, align 4
  %59 = add nsw i32 %58, 2
  %60 = load i32, i32* @LUA_MULTRET, align 4
  %61 = call i32 @lua_call(i32* %57, i32 %59, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %64 = ptrtoint %struct.TYPE_10__* %62 to i64
  %65 = ptrtoint %struct.TYPE_10__* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sdiv exact i64 %66, 16
  %68 = trunc i64 %67 to i32
  ret i32 %68
}

declare dso_local %struct.TYPE_10__* @findopen(%struct.TYPE_10__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @captype(%struct.TYPE_10__*) #1

declare dso_local i32 @luaL_checkstack(i32*, i32, i8*) #1

declare dso_local i32 @pushluaval(%struct.TYPE_11__*) #1

declare dso_local i32 @lua_pushvalue(i32*, i32) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

declare dso_local i32 @pushallcaptures(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @lua_call(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
