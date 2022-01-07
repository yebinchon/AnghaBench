; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_primaryexp.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_primaryexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, i32* }
%struct.TYPE_10__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*)* @primaryexp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @primaryexp(%struct.TYPE_11__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @prefixexp(%struct.TYPE_11__* %11, i32* %12)
  br label %14

14:                                               ; preds = %51, %2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %50 [
    i32 46, label %19
    i32 91, label %23
    i32 58, label %32
    i32 40, label %43
    i32 128, label %43
    i32 123, label %43
  ]

19:                                               ; preds = %14
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @field(%struct.TYPE_11__* %20, i32* %21)
  br label %51

23:                                               ; preds = %14
  %24 = load i32*, i32** %5, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = call i32 @luaK_exp2anyreg(i32* %24, i32* %25)
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call i32 @yindex(%struct.TYPE_11__* %27, i32* %6)
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @luaK_indexed(i32* %29, i32* %30, i32* %6)
  br label %51

32:                                               ; preds = %14
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = call i32 @luaX_next(%struct.TYPE_11__* %33)
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = call i32 @checkname(%struct.TYPE_11__* %35, i32* %7)
  %37 = load i32*, i32** %5, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = call i32 @luaK_self(i32* %37, i32* %38, i32* %7)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @funcargs(%struct.TYPE_11__* %40, i32* %41)
  br label %51

43:                                               ; preds = %14, %14, %14
  %44 = load i32*, i32** %5, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i32 @luaK_exp2nextreg(i32* %44, i32* %45)
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = call i32 @funcargs(%struct.TYPE_11__* %47, i32* %48)
  br label %51

50:                                               ; preds = %14
  ret void

51:                                               ; preds = %43, %32, %23, %19
  br label %14
}

declare dso_local i32 @prefixexp(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @field(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @luaK_exp2anyreg(i32*, i32*) #1

declare dso_local i32 @yindex(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @luaK_indexed(i32*, i32*, i32*) #1

declare dso_local i32 @luaX_next(%struct.TYPE_11__*) #1

declare dso_local i32 @checkname(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @luaK_self(i32*, i32*, i32*) #1

declare dso_local i32 @funcargs(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @luaK_exp2nextreg(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
