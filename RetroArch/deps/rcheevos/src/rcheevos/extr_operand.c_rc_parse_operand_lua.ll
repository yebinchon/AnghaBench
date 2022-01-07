; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_operand.c_rc_parse_operand_lua.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_operand.c_rc_parse_operand_lua.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32 }

@RC_INVALID_LUA_OPERAND = common dso_local global i32 0, align 4
@LUA_REGISTRYINDEX = common dso_local global i32 0, align 4
@RC_OPERAND_LUA = common dso_local global i32 0, align 4
@RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8**, %struct.TYPE_7__*)* @rc_parse_operand_lua to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_parse_operand_lua(%struct.TYPE_8__* %0, i8** %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %10 = load i8**, i8*** %6, align 8
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %13, i8** %8, align 8
  %14 = load i8, i8* %12, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 64
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @RC_INVALID_LUA_OPERAND, align 4
  store i32 %18, i32* %4, align 4
  br label %105

19:                                               ; preds = %3
  %20 = load i8*, i8** %8, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i32 @isalpha(i8 signext %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @RC_INVALID_LUA_OPERAND, align 4
  store i32 %25, i32* %4, align 4
  br label %105

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  store i8* %27, i8** %9, align 8
  br label %28

28:                                               ; preds = %40, %26
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = call i64 @isalnum(i8 signext %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 95
  br label %38

38:                                               ; preds = %33, %28
  %39 = phi i1 [ true, %28 ], [ %37, %33 ]
  br i1 %39, label %40, label %43

40:                                               ; preds = %38
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %8, align 8
  br label %28

43:                                               ; preds = %38
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @lua_istable(i64 %51, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @RC_INVALID_LUA_OPERAND, align 4
  store i32 %58, i32* %4, align 4
  br label %105

59:                                               ; preds = %48
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i8*, i8** %9, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = load i8*, i8** %9, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  %70 = call i32 @lua_pushlstring(i64 %62, i8* %63, i32 %69)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @lua_gettable(i64 %73, i32 %76)
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @lua_isfunction(i64 %80, i32 -1)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %89, label %83

83:                                               ; preds = %59
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @lua_pop(i64 %86, i32 1)
  %88 = load i32, i32* @RC_INVALID_LUA_OPERAND, align 4
  store i32 %88, i32* %4, align 4
  br label %105

89:                                               ; preds = %59
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* @LUA_REGISTRYINDEX, align 4
  %94 = call i32 @luaL_ref(i64 %92, i32 %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %43
  %99 = load i32, i32* @RC_OPERAND_LUA, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = load i8**, i8*** %6, align 8
  store i8* %102, i8** %103, align 8
  %104 = load i32, i32* @RC_OK, align 4
  store i32 %104, i32* %4, align 4
  br label %105

105:                                              ; preds = %98, %83, %57, %24, %17
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @isalpha(i8 signext) #1

declare dso_local i64 @isalnum(i8 signext) #1

declare dso_local i32 @lua_istable(i64, i32) #1

declare dso_local i32 @lua_pushlstring(i64, i8*, i32) #1

declare dso_local i32 @lua_gettable(i64, i32) #1

declare dso_local i32 @lua_isfunction(i64, i32) #1

declare dso_local i32 @lua_pop(i64, i32) #1

declare dso_local i32 @luaL_ref(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
