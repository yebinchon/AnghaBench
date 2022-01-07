; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_luaY_parser.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_luaY_parser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.LexState = type { i32*, i32* }
%struct.FuncState = type { %struct.TYPE_3__*, i32* }

@VARARG_ISVARARG = common dso_local global i32 0, align 4
@TK_EOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_3__* @luaY_parser(i32* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.LexState, align 8
  %10 = alloca %struct.FuncState, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 1
  store i32* %11, i32** %12, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = call i32 @luaS_new(i32* %15, i8* %16)
  %18 = call i32 @luaX_setinput(i32* %13, %struct.LexState* %9, i32* %14, i32 %17)
  %19 = call i32 @open_func(%struct.LexState* %9, %struct.FuncState* %10)
  %20 = load i32, i32* @VARARG_ISVARARG, align 4
  %21 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = call i32 @luaX_next(%struct.LexState* %9)
  %25 = call i32 @chunk(%struct.LexState* %9)
  %26 = load i32, i32* @TK_EOS, align 4
  %27 = call i32 @check(%struct.LexState* %9, i32 %26)
  %28 = call i32 @close_func(%struct.LexState* %9)
  %29 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @lua_assert(i32 %32)
  %34 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @lua_assert(i32 %39)
  %41 = getelementptr inbounds %struct.LexState, %struct.LexState* %9, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @lua_assert(i32 %44)
  %46 = getelementptr inbounds %struct.FuncState, %struct.FuncState* %10, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  ret %struct.TYPE_3__* %47
}

declare dso_local i32 @luaX_setinput(i32*, %struct.LexState*, i32*, i32) #1

declare dso_local i32 @luaS_new(i32*, i8*) #1

declare dso_local i32 @open_func(%struct.LexState*, %struct.FuncState*) #1

declare dso_local i32 @luaX_next(%struct.LexState*) #1

declare dso_local i32 @chunk(%struct.LexState*) #1

declare dso_local i32 @check(%struct.LexState*, i32) #1

declare dso_local i32 @close_func(%struct.LexState*) #1

declare dso_local i32 @lua_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
