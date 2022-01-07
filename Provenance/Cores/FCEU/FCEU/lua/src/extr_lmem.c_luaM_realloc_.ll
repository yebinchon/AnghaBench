; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lmem.c_luaM_realloc_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lmem.c_luaM_realloc_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i8* (i32, i8*, i64, i64)* }

@LUA_ERRMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @luaM_realloc_(i32* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = call %struct.TYPE_3__* @G(i32* %10)
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  %17 = zext i1 %16 to i32
  %18 = icmp eq i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @lua_assert(i32 %19)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  %23 = load i8* (i32, i8*, i64, i64)*, i8* (i32, i8*, i64, i64)** %22, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i8* %23(i32 %26, i8* %27, i64 %28, i64 %29)
  store i8* %30, i8** %6, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %4
  %34 = load i64, i64* %8, align 8
  %35 = icmp ugt i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @LUA_ERRMEM, align 4
  %39 = call i32 @luaD_throw(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %33, %4
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %41, 0
  %43 = zext i1 %42 to i32
  %44 = load i8*, i8** %6, align 8
  %45 = icmp eq i8* %44, null
  %46 = zext i1 %45 to i32
  %47 = icmp eq i32 %43, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @lua_assert(i32 %48)
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = sub i64 %52, %53
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %54, %55
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %6, align 8
  ret i8* %59
}

declare dso_local %struct.TYPE_3__* @G(i32*) #1

declare dso_local i32 @lua_assert(i32) #1

declare dso_local i32 @luaD_throw(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
