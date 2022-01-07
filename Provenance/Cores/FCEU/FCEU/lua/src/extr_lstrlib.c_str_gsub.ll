; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lstrlib.c_str_gsub.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lstrlib.c_str_gsub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i64, i32* }

@LUA_TNUMBER = common dso_local global i32 0, align 4
@LUA_TSTRING = common dso_local global i32 0, align 4
@LUA_TFUNCTION = common dso_local global i32 0, align 4
@LUA_TTABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"string/function/table expected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @str_gsub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_gsub(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i8* @luaL_checklstring(i32* %13, i32 1, i64* %3)
  store i8* %14, i8** %4, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i8* @luaL_checkstring(i32* %15, i32 2)
  store i8* %16, i8** %5, align 8
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @lua_type(i32* %17, i32 3)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** %2, align 8
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 1
  %22 = call i32 @luaL_optint(i32* %19, i32 4, i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i8*, i8** %5, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 94
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i8*, i8** %5, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %5, align 8
  br label %31

30:                                               ; preds = %1
  br label %31

31:                                               ; preds = %30, %27
  %32 = phi i32 [ 1, %27 ], [ 0, %30 ]
  store i32 %32, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %33 = load i32*, i32** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @LUA_TNUMBER, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %49, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @LUA_TSTRING, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %49, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @LUA_TFUNCTION, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @LUA_TTABLE, align 4
  %48 = icmp eq i32 %46, %47
  br label %49

49:                                               ; preds = %45, %41, %37, %31
  %50 = phi i1 [ true, %41 ], [ true, %37 ], [ true, %31 ], [ %48, %45 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @luaL_argcheck(i32* %33, i32 %51, i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %53 = load i32*, i32** %2, align 8
  %54 = call i32 @luaL_buffinit(i32* %53, i32* %11)
  %55 = load i32*, i32** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32* %55, i32** %56, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** %4, align 8
  %60 = load i64, i64* %3, align 8
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  br label %63

63:                                               ; preds = %106, %49
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %107

67:                                               ; preds = %63
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = call i8* @match(%struct.TYPE_4__* %10, i8* %69, i8* %70)
  store i8* %71, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %67
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  %77 = load i8*, i8** %4, align 8
  %78 = load i8*, i8** %12, align 8
  %79 = call i32 @add_value(%struct.TYPE_4__* %10, i32* %11, i8* %77, i8* %78)
  br label %80

80:                                               ; preds = %74, %67
  %81 = load i8*, i8** %12, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load i8*, i8** %12, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = icmp ugt i8* %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i8*, i8** %12, align 8
  store i8* %88, i8** %4, align 8
  br label %102

89:                                               ; preds = %83, %80
  %90 = load i8*, i8** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %92 = load i8*, i8** %91, align 8
  %93 = icmp ult i8* %90, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %89
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %4, align 8
  %97 = load i8, i8* %95, align 1
  %98 = sext i8 %97 to i32
  %99 = call i32 @luaL_addchar(i32* %11, i32 %98)
  br label %101

100:                                              ; preds = %89
  br label %107

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %87
  %103 = load i32, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %107

106:                                              ; preds = %102
  br label %63

107:                                              ; preds = %105, %100, %63
  %108 = load i8*, i8** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** %4, align 8
  %112 = ptrtoint i8* %110 to i64
  %113 = ptrtoint i8* %111 to i64
  %114 = sub i64 %112, %113
  %115 = trunc i64 %114 to i32
  %116 = call i32 @luaL_addlstring(i32* %11, i8* %108, i32 %115)
  %117 = call i32 @luaL_pushresult(i32* %11)
  %118 = load i32*, i32** %2, align 8
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @lua_pushinteger(i32* %118, i32 %119)
  ret i32 2
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i8* @luaL_checkstring(i32*, i32) #1

declare dso_local i32 @lua_type(i32*, i32) #1

declare dso_local i32 @luaL_optint(i32*, i32, i64) #1

declare dso_local i32 @luaL_argcheck(i32*, i32, i32, i8*) #1

declare dso_local i32 @luaL_buffinit(i32*, i32*) #1

declare dso_local i8* @match(%struct.TYPE_4__*, i8*, i8*) #1

declare dso_local i32 @add_value(%struct.TYPE_4__*, i32*, i8*, i8*) #1

declare dso_local i32 @luaL_addchar(i32*, i32) #1

declare dso_local i32 @luaL_addlstring(i32*, i8*, i32) #1

declare dso_local i32 @luaL_pushresult(i32*) #1

declare dso_local i32 @lua_pushinteger(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
