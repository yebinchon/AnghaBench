; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lstate.c_f_luaopen.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lstate.c_f_luaopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@MINSTRTABSIZE = common dso_local global i32 0, align 4
@MEMERRMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @f_luaopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f_luaopen(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call %struct.TYPE_3__* @G(i32* %6)
  store %struct.TYPE_3__* %7, %struct.TYPE_3__** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @UNUSED(i8* %8)
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @stack_init(i32* %10, i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @gt(i32* %14)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @luaH_new(i32* %16, i32 0, i32 2)
  %18 = call i32 @sethvalue(i32* %13, i32 %15, i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @registry(i32* %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @luaH_new(i32* %22, i32 0, i32 2)
  %24 = call i32 @sethvalue(i32* %19, i32 %21, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* @MINSTRTABSIZE, align 4
  %27 = call i32 @luaS_resize(i32* %25, i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @luaT_init(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @luaX_init(i32* %30)
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @MEMERRMSG, align 4
  %34 = call i32 @luaS_newliteral(i32* %32, i32 %33)
  %35 = call i32 @luaS_fix(i32 %34)
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 4, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local %struct.TYPE_3__* @G(i32*) #1

declare dso_local i32 @UNUSED(i8*) #1

declare dso_local i32 @stack_init(i32*, i32*) #1

declare dso_local i32 @sethvalue(i32*, i32, i32) #1

declare dso_local i32 @gt(i32*) #1

declare dso_local i32 @luaH_new(i32*, i32, i32) #1

declare dso_local i32 @registry(i32*) #1

declare dso_local i32 @luaS_resize(i32*, i32) #1

declare dso_local i32 @luaT_init(i32*) #1

declare dso_local i32 @luaX_init(i32*) #1

declare dso_local i32 @luaS_fix(i32) #1

declare dso_local i32 @luaS_newliteral(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
