; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lcode.c_exp2reg.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lcode.c_exp2reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { i32 }

@VJMP = common dso_local global i64 0, align 8
@NO_JUMP = common dso_local global i8* null, align 8
@VNONRELOC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_7__*, i32)* @exp2reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exp2reg(i32* %0, %struct.TYPE_7__* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @discharge2reg(i32* %11, %struct.TYPE_7__* %12, i32 %13)
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VJMP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %3
  %21 = load i32*, i32** %4, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @luaK_concat(i32* %21, i8** %23, i32 %27)
  br label %29

29:                                               ; preds = %20, %3
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %31 = call i64 @hasjumps(%struct.TYPE_7__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %93

33:                                               ; preds = %29
  %34 = load i8*, i8** @NO_JUMP, align 8
  %35 = ptrtoint i8* %34 to i32
  store i32 %35, i32* %8, align 4
  %36 = load i8*, i8** @NO_JUMP, align 8
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %9, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = call i64 @need_value(i32* %38, i8* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %33
  %45 = load i32*, i32** %4, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @need_value(i32* %45, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %74

51:                                               ; preds = %44, %33
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @VJMP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i8*, i8** @NO_JUMP, align 8
  br label %62

59:                                               ; preds = %51
  %60 = load i32*, i32** %4, align 8
  %61 = call i8* @luaK_jump(i32* %60)
  br label %62

62:                                               ; preds = %59, %57
  %63 = phi i8* [ %58, %57 ], [ %61, %59 ]
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @code_loadbool(i32* %65, i32 %66, i32 0, i32 1)
  store i32 %67, i32* %8, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @code_loadbool(i32* %68, i32 %69, i32 1, i32 0)
  store i32 %70, i32* %9, align 4
  %71 = load i32*, i32** %4, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @luaK_patchtohere(i32* %71, i32 %72)
  br label %74

74:                                               ; preds = %62, %44
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @luaK_getlabel(i32* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @patchlistaux(i32* %77, i8* %80, i32 %81, i32 %82, i32 %83)
  %85 = load i32*, i32** %4, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @patchlistaux(i32* %85, i8* %88, i32 %89, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %74, %29
  %94 = load i8*, i8** @NO_JUMP, align 8
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  store i8* %94, i8** %98, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load i64, i64* @VNONRELOC, align 8
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  ret void
}

declare dso_local i32 @discharge2reg(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @luaK_concat(i32*, i8**, i32) #1

declare dso_local i64 @hasjumps(%struct.TYPE_7__*) #1

declare dso_local i64 @need_value(i32*, i8*) #1

declare dso_local i8* @luaK_jump(i32*) #1

declare dso_local i32 @code_loadbool(i32*, i32, i32, i32) #1

declare dso_local i32 @luaK_patchtohere(i32*, i32) #1

declare dso_local i32 @luaK_getlabel(i32*) #1

declare dso_local i32 @patchlistaux(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
