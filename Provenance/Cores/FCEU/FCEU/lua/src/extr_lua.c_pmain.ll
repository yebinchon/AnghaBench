; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lua.c_pmain.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lua.c_pmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Smain = type { i8**, i32, i32 }

@globalL = common dso_local global i32* null, align 8
@progname = common dso_local global i8* null, align 8
@LUA_GCSTOP = common dso_local global i32 0, align 4
@LUA_GCRESTART = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @pmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmain(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.Smain*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @lua_touserdata(i32* %10, i32 1)
  %12 = inttoptr i64 %11 to %struct.Smain*
  store %struct.Smain* %12, %struct.Smain** %4, align 8
  %13 = load %struct.Smain*, %struct.Smain** %4, align 8
  %14 = getelementptr inbounds %struct.Smain, %struct.Smain* %13, i32 0, i32 0
  %15 = load i8**, i8*** %14, align 8
  store i8** %15, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %16 = load i32*, i32** %3, align 8
  store i32* %16, i32** @globalL, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** @progname, align 8
  br label %33

33:                                               ; preds = %29, %21, %1
  %34 = load i32*, i32** %3, align 8
  %35 = load i32, i32* @LUA_GCSTOP, align 4
  %36 = call i32 @lua_gc(i32* %34, i32 %35, i32 0)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @luaL_openlibs(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* @LUA_GCRESTART, align 4
  %41 = call i32 @lua_gc(i32* %39, i32 %40, i32 0)
  %42 = load i32*, i32** %3, align 8
  %43 = call i32 @handle_luainit(i32* %42)
  %44 = load %struct.Smain*, %struct.Smain** %4, align 8
  %45 = getelementptr inbounds %struct.Smain, %struct.Smain* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.Smain*, %struct.Smain** %4, align 8
  %47 = getelementptr inbounds %struct.Smain, %struct.Smain* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %130

51:                                               ; preds = %33
  %52 = load i8**, i8*** %5, align 8
  %53 = call i32 @collectargs(i8** %52, i32* %7, i32* %8, i32* %9)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = call i32 (...) @print_usage()
  %58 = load %struct.Smain*, %struct.Smain** %4, align 8
  %59 = getelementptr inbounds %struct.Smain, %struct.Smain* %58, i32 0, i32 1
  store i32 1, i32* %59, align 8
  store i32 0, i32* %2, align 4
  br label %130

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 (...) @print_version()
  br label %65

65:                                               ; preds = %63, %60
  %66 = load i32*, i32** %3, align 8
  %67 = load i8**, i8*** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %6, align 4
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.Smain*, %struct.Smain** %4, align 8
  %74 = getelementptr inbounds %struct.Smain, %struct.Smain* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  br label %76

76:                                               ; preds = %72, %70
  %77 = phi i32 [ %71, %70 ], [ %75, %72 ]
  %78 = call i32 @runargs(i32* %66, i8** %67, i32 %77)
  %79 = load %struct.Smain*, %struct.Smain** %4, align 8
  %80 = getelementptr inbounds %struct.Smain, %struct.Smain* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.Smain*, %struct.Smain** %4, align 8
  %82 = getelementptr inbounds %struct.Smain, %struct.Smain* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store i32 0, i32* %2, align 4
  br label %130

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load i32*, i32** %3, align 8
  %91 = load i8**, i8*** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @handle_script(i32* %90, i8** %91, i32 %92)
  %94 = load %struct.Smain*, %struct.Smain** %4, align 8
  %95 = getelementptr inbounds %struct.Smain, %struct.Smain* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  br label %96

96:                                               ; preds = %89, %86
  %97 = load %struct.Smain*, %struct.Smain** %4, align 8
  %98 = getelementptr inbounds %struct.Smain, %struct.Smain* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %130

102:                                              ; preds = %96
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load i32*, i32** %3, align 8
  %107 = call i32 @dotty(i32* %106)
  br label %129

108:                                              ; preds = %102
  %109 = load i32, i32* %6, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %108
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114
  %118 = call i64 (...) @lua_stdin_is_tty()
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = call i32 (...) @print_version()
  %122 = load i32*, i32** %3, align 8
  %123 = call i32 @dotty(i32* %122)
  br label %127

124:                                              ; preds = %117
  %125 = load i32*, i32** %3, align 8
  %126 = call i32 @dofile(i32* %125, i32* null)
  br label %127

127:                                              ; preds = %124, %120
  br label %128

128:                                              ; preds = %127, %114, %111, %108
  br label %129

129:                                              ; preds = %128, %105
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %129, %101, %85, %56, %50
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local i64 @lua_touserdata(i32*, i32) #1

declare dso_local i32 @lua_gc(i32*, i32, i32) #1

declare dso_local i32 @luaL_openlibs(i32*) #1

declare dso_local i32 @handle_luainit(i32*) #1

declare dso_local i32 @collectargs(i8**, i32*, i32*, i32*) #1

declare dso_local i32 @print_usage(...) #1

declare dso_local i32 @print_version(...) #1

declare dso_local i32 @runargs(i32*, i8**, i32) #1

declare dso_local i32 @handle_script(i32*, i8**, i32) #1

declare dso_local i32 @dotty(i32*) #1

declare dso_local i64 @lua_stdin_is_tty(...) #1

declare dso_local i32 @dofile(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
