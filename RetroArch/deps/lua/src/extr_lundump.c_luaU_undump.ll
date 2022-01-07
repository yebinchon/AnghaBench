; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lundump.c_luaU_undump.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lundump.c_luaU_undump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i8*, i32*, %struct.TYPE_19__* }

@LUA_SIGNATURE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"binary string\00", align 1
@buff = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_21__* @luaU_undump(%struct.TYPE_19__* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_20__, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 61
  br i1 %17, label %18, label %22

18:                                               ; preds = %13, %3
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i8* %20, i8** %21, align 8
  br label %37

22:                                               ; preds = %13
  %23 = load i8*, i8** %6, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8*, i8** @LUA_SIGNATURE, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %25, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %32, align 8
  br label %36

33:                                               ; preds = %22
  %34 = load i8*, i8** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  store i8* %34, i8** %35, align 8
  br label %36

36:                                               ; preds = %33, %31
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %39, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i32* %40, i32** %41, align 8
  %42 = call i32 @checkHeader(%struct.TYPE_20__* %7)
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %44 = call i32 @LoadByte(%struct.TYPE_20__* %7)
  %45 = call %struct.TYPE_21__* @luaF_newLclosure(%struct.TYPE_19__* %43, i32 %44)
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %8, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %51 = call i32 @setclLvalue(%struct.TYPE_19__* %46, i32 %49, %struct.TYPE_21__* %50)
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %53 = call i32 @luaD_inctop(%struct.TYPE_19__* %52)
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %55 = call %struct.TYPE_22__* @luaF_newproto(%struct.TYPE_19__* %54)
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 1
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %57, align 8
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %59, align 8
  %61 = call i32 @LoadFunction(%struct.TYPE_20__* %7, %struct.TYPE_22__* %60, i32* null)
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %64, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @lua_assert(i32 %71)
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %74 = load i32, i32* @buff, align 4
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %76, align 8
  %78 = call i32 @luai_verifycode(%struct.TYPE_19__* %73, i32 %74, %struct.TYPE_22__* %77)
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  ret %struct.TYPE_21__* %79
}

declare dso_local i32 @checkHeader(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @luaF_newLclosure(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @LoadByte(%struct.TYPE_20__*) #1

declare dso_local i32 @setclLvalue(%struct.TYPE_19__*, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @luaD_inctop(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_22__* @luaF_newproto(%struct.TYPE_19__*) #1

declare dso_local i32 @LoadFunction(%struct.TYPE_20__*, %struct.TYPE_22__*, i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luai_verifycode(%struct.TYPE_19__*, i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
