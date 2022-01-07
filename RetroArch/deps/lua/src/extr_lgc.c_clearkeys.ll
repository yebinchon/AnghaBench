; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lgc.c_clearkeys.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/lua/src/extr_lgc.c_clearkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @clearkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clearkeys(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  br label %10

10:                                               ; preds = %53, %3
  %11 = load i32*, i32** %5, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %11, %12
  br i1 %13, label %14, label %58

14:                                               ; preds = %10
  %15 = load i32*, i32** %5, align 8
  %16 = call %struct.TYPE_5__* @gco2t(i32* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %7, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = call i32* @gnodelast(%struct.TYPE_5__* %17)
  store i32* %18, i32** %9, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %20 = call i32* @gnode(%struct.TYPE_5__* %19, i32 0)
  store i32* %20, i32** %8, align 8
  br label %21

21:                                               ; preds = %49, %14
  %22 = load i32*, i32** %8, align 8
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ult i32* %22, %23
  br i1 %24, label %25, label %52

25:                                               ; preds = %21
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @gval(i32* %26)
  %28 = call i64 @ttisnil(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load i32*, i32** %4, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @gkey(i32* %32)
  %34 = call i64 @iscleared(i32* %31, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = call i32 @gval(i32* %37)
  %39 = call i32 @setnilvalue(i32 %38)
  br label %40

40:                                               ; preds = %36, %30, %25
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @gval(i32* %41)
  %43 = call i64 @ttisnil(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @removeentry(i32* %46)
  br label %48

48:                                               ; preds = %45, %40
  br label %49

49:                                               ; preds = %48
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %8, align 8
  br label %21

52:                                               ; preds = %21
  br label %53

53:                                               ; preds = %52
  %54 = load i32*, i32** %5, align 8
  %55 = call %struct.TYPE_5__* @gco2t(i32* %54)
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %5, align 8
  br label %10

58:                                               ; preds = %10
  ret void
}

declare dso_local %struct.TYPE_5__* @gco2t(i32*) #1

declare dso_local i32* @gnodelast(%struct.TYPE_5__*) #1

declare dso_local i32* @gnode(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @ttisnil(i32) #1

declare dso_local i32 @gval(i32*) #1

declare dso_local i64 @iscleared(i32*, i32) #1

declare dso_local i32 @gkey(i32*) #1

declare dso_local i32 @setnilvalue(i32) #1

declare dso_local i32 @removeentry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
