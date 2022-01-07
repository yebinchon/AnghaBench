; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lcode.c_luaK_goiftrue.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lcode.c_luaK_goiftrue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@NO_JUMP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @luaK_goiftrue(i32* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %8 = call i32 @luaK_dischargevars(i32* %6, %struct.TYPE_10__* %7)
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %27 [
    i32 130, label %12
    i32 129, label %12
    i32 128, label %12
    i32 132, label %15
    i32 131, label %18
  ]

12:                                               ; preds = %2, %2, %2
  %13 = load i8*, i8** @NO_JUMP, align 8
  %14 = ptrtoint i8* %13 to i32
  store i32 %14, i32* %5, align 4
  br label %31

15:                                               ; preds = %2
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaK_jump(i32* %16)
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %2
  %19 = load i32*, i32** %3, align 8
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %21 = call i32 @invertjump(i32* %19, %struct.TYPE_10__* %20)
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %5, align 4
  br label %31

27:                                               ; preds = %2
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 @jumponcond(i32* %28, %struct.TYPE_10__* %29, i32 0)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %18, %15, %12
  %32 = load i32*, i32** %3, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 2
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @luaK_concat(i32* %32, i32* %34, i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @luaK_patchtohere(i32* %37, i8* %40)
  %42 = load i8*, i8** @NO_JUMP, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  ret void
}

declare dso_local i32 @luaK_dischargevars(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @luaK_jump(i32*) #1

declare dso_local i32 @invertjump(i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @jumponcond(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @luaK_concat(i32*, i32*, i32) #1

declare dso_local i32 @luaK_patchtohere(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
