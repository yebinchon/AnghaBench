; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_llex.c_luaX_newstring.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_llex.c_luaX_newstring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @luaX_newstring(%struct.TYPE_9__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  store %struct.TYPE_8__* %12, %struct.TYPE_8__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = call i32* @luaS_newlstr(%struct.TYPE_8__* %13, i8* %14, i64 %15)
  store i32* %16, i32** %9, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %19, align 8
  %22 = trunc i64 %20 to i32
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @setsvalue2s(%struct.TYPE_8__* %17, i32 %22, i32* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  %33 = call i32* @luaH_set(%struct.TYPE_8__* %25, i32 %28, i64 %32)
  store i32* %33, i32** %8, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @ttisnil(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load i32*, i32** %8, align 8
  %39 = call i32 @setbvalue(i32* %38, i32 1)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = call i32 @luaC_checkGC(%struct.TYPE_8__* %40)
  br label %46

42:                                               ; preds = %3
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @keyfromval(i32* %43)
  %45 = call i32* @tsvalue(i32 %44)
  store i32* %45, i32** %9, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, -1
  store i64 %50, i64* %48, align 8
  %51 = load i32*, i32** %9, align 8
  ret i32* %51
}

declare dso_local i32* @luaS_newlstr(%struct.TYPE_8__*, i8*, i64) #1

declare dso_local i32 @setsvalue2s(%struct.TYPE_8__*, i32, i32*) #1

declare dso_local i32* @luaH_set(%struct.TYPE_8__*, i32, i64) #1

declare dso_local i64 @ttisnil(i32*) #1

declare dso_local i32 @setbvalue(i32*, i32) #1

declare dso_local i32 @luaC_checkGC(%struct.TYPE_8__*) #1

declare dso_local i32* @tsvalue(i32) #1

declare dso_local i32 @keyfromval(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
