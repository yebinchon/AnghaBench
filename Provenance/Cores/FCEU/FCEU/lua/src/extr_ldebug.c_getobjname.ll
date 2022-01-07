; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldebug.c_getobjname.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_ldebug.c_getobjname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32*, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__* }

@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"global\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"field\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"upvalue\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*, i32, i8**)* @getobjname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @getobjname(i32* %0, i32* %1, i32 %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8** %3, i8*** %9, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i64 @isLua(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %122

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = call %struct.TYPE_9__* @ci_func(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  store %struct.TYPE_8__* %27, %struct.TYPE_8__** %10, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = call i32 @currentpc(i32* %28, i32* %29)
  store i32 %30, i32* %11, align 4
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @luaF_getlocalname(%struct.TYPE_8__* %31, i32 %33, i32 %34)
  %36 = load i8**, i8*** %9, align 8
  store i8* %35, i8** %36, align 8
  %37 = load i8**, i8*** %9, align 8
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %22
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %123

41:                                               ; preds = %22
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @symbexec(%struct.TYPE_8__* %42, i32 %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, -1
  %48 = zext i1 %47 to i32
  %49 = call i32 @lua_assert(i32 %48)
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @GET_OPCODE(i32 %50)
  switch i32 %51, label %120 [
    i32 132, label %52
    i32 129, label %71
    i32 131, label %86
    i32 130, label %93
    i32 128, label %113
  ]

52:                                               ; preds = %41
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @GETARG_Bx(i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = call i32 @ttisstring(i32* %60)
  %62 = call i32 @lua_assert(i32 %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i8* @svalue(i32* %68)
  %70 = load i8**, i8*** %9, align 8
  store i8* %69, i8** %70, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %123

71:                                               ; preds = %41
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @GETARG_A(i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @GETARG_B(i32 %74)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %71
  %80 = load i32*, i32** %6, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %15, align 4
  %83 = load i8**, i8*** %9, align 8
  %84 = call i8* @getobjname(i32* %80, i32* %81, i32 %82, i8** %83)
  store i8* %84, i8** %5, align 8
  br label %123

85:                                               ; preds = %71
  br label %121

86:                                               ; preds = %41
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @GETARG_C(i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %90 = load i32, i32* %16, align 4
  %91 = call i8* @kname(%struct.TYPE_8__* %89, i32 %90)
  %92 = load i8**, i8*** %9, align 8
  store i8* %91, i8** %92, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %123

93:                                               ; preds = %41
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @GETARG_B(i32 %94)
  store i32 %95, i32* %17, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %109

100:                                              ; preds = %93
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @getstr(i32 %107)
  br label %110

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %100
  %111 = phi i8* [ %108, %100 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), %109 ]
  %112 = load i8**, i8*** %9, align 8
  store i8* %111, i8** %112, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %5, align 8
  br label %123

113:                                              ; preds = %41
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @GETARG_C(i32 %114)
  store i32 %115, i32* %18, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %117 = load i32, i32* %18, align 4
  %118 = call i8* @kname(%struct.TYPE_8__* %116, i32 %117)
  %119 = load i8**, i8*** %9, align 8
  store i8* %118, i8** %119, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %123

120:                                              ; preds = %41
  br label %121

121:                                              ; preds = %120, %85
  br label %122

122:                                              ; preds = %121, %4
  store i8* null, i8** %5, align 8
  br label %123

123:                                              ; preds = %122, %113, %110, %86, %79, %52, %40
  %124 = load i8*, i8** %5, align 8
  ret i8* %124
}

declare dso_local i64 @isLua(i32*) #1

declare dso_local %struct.TYPE_9__* @ci_func(i32*) #1

declare dso_local i32 @currentpc(i32*, i32*) #1

declare dso_local i8* @luaF_getlocalname(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @symbexec(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @GET_OPCODE(i32) #1

declare dso_local i32 @GETARG_Bx(i32) #1

declare dso_local i32 @ttisstring(i32*) #1

declare dso_local i8* @svalue(i32*) #1

declare dso_local i32 @GETARG_A(i32) #1

declare dso_local i32 @GETARG_B(i32) #1

declare dso_local i32 @GETARG_C(i32) #1

declare dso_local i8* @kname(%struct.TYPE_8__*, i32) #1

declare dso_local i8* @getstr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
