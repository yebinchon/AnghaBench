; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_singlevaraux.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/lua/src/extr_lparser.c_singlevaraux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@VGLOBAL = common dso_local global i32 0, align 4
@NO_REG = common dso_local global i32 0, align 4
@VLOCAL = common dso_local global i32 0, align 4
@VUPVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, %struct.TYPE_14__*, i32)* @singlevaraux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @singlevaraux(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_14__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %15 = load i32, i32* @VGLOBAL, align 4
  %16 = load i32, i32* @NO_REG, align 4
  %17 = call i32 @init_exp(%struct.TYPE_14__* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @VGLOBAL, align 4
  store i32 %18, i32* %5, align 4
  br label %62

19:                                               ; preds = %4
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @searchvar(%struct.TYPE_15__* %20, i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %38

25:                                               ; preds = %19
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = load i32, i32* @VLOCAL, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @init_exp(%struct.TYPE_14__* %26, i32 %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @markupval(%struct.TYPE_15__* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load i32, i32* @VLOCAL, align 4
  store i32 %37, i32* %5, align 4
  br label %62

38:                                               ; preds = %19
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %44 = call i32 @singlevaraux(%struct.TYPE_15__* %41, i32* %42, %struct.TYPE_14__* %43, i32 0)
  %45 = load i32, i32* @VGLOBAL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = load i32, i32* @VGLOBAL, align 4
  store i32 %48, i32* %5, align 4
  br label %62

49:                                               ; preds = %38
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = call i32 @indexupvalue(%struct.TYPE_15__* %50, i32* %51, %struct.TYPE_14__* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 4
  %58 = load i32, i32* @VUPVAL, align 4
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @VUPVAL, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %49, %47, %36, %13
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @init_exp(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @searchvar(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @markupval(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @indexupvalue(%struct.TYPE_15__*, i32*, %struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
