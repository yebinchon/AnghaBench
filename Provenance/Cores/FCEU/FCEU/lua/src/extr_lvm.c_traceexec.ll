; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lvm.c_traceexec.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lvm.c_traceexec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@LUA_MASKCOUNT = common dso_local global i32 0, align 4
@LUA_HOOKCOUNT = common dso_local global i32 0, align 4
@LUA_MASKLINE = common dso_local global i32 0, align 4
@LUA_HOOKLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*)* @traceexec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @traceexec(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 3
  store i32* %16, i32** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @LUA_MASKCOUNT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = call i32 @resethookcount(%struct.TYPE_8__* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = load i32, i32* @LUA_HOOKCOUNT, align 4
  %33 = call i32 @luaD_callhook(%struct.TYPE_8__* %31, i32 %32, i32 -1)
  br label %34

34:                                               ; preds = %28, %23, %2
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @LUA_MASKLINE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %73

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_9__* @ci_func(i32 %42)
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %7, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @pcRel(i32* %47, i32* %48)
  store i32 %49, i32* %8, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @getline(i32* %50, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %67, label %55

55:                                               ; preds = %39
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = icmp ule i32* %56, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %9, align 4
  %61 = load i32*, i32** %7, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @pcRel(i32* %62, i32* %63)
  %65 = call i32 @getline(i32* %61, i32 %64)
  %66 = icmp ne i32 %60, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %59, %55, %39
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = load i32, i32* @LUA_HOOKLINE, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @luaD_callhook(%struct.TYPE_8__* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %59
  br label %73

73:                                               ; preds = %72, %34
  ret void
}

declare dso_local i32 @resethookcount(%struct.TYPE_8__*) #1

declare dso_local i32 @luaD_callhook(%struct.TYPE_8__*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @ci_func(i32) #1

declare dso_local i32 @pcRel(i32*, i32*) #1

declare dso_local i32 @getline(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
