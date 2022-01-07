; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_star_l.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_star_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ISCHARSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @star_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @star_l(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_3__, align 4
  %8 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @luaL_checkint(i32* %9, i32 2)
  store i32 %10, i32* %5, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = call i32* @getpatt(i32* %11, i32 1, i32* %4)
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %47

15:                                               ; preds = %1
  %16 = load i32*, i32** %6, align 8
  %17 = call i64 @tocharset(i32* %16, %struct.TYPE_3__* %7)
  %18 = load i64, i64* @ISCHARSET, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @repeatcharset(i32* %21, i32 %23, i32 %24, i32 %25)
  store i32 %26, i32* %2, align 4
  br label %65

27:                                               ; preds = %15
  %28 = load i32*, i32** %6, align 8
  %29 = call i64 @isheadfail(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %27
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32* @repeatheadfail(i32* %32, i32 %33, i32 %34)
  store i32* %35, i32** %8, align 8
  br label %42

36:                                               ; preds = %27
  %37 = load i32*, i32** %3, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32* @repeats(i32* %37, i32* %38, i32 %39, i32 %40)
  store i32* %41, i32** %8, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @optimizecaptures(i32* %43)
  %45 = load i32*, i32** %8, align 8
  %46 = call i32 @optimizejumps(i32* %45)
  br label %64

47:                                               ; preds = %1
  %48 = load i32*, i32** %6, align 8
  %49 = call i64 @isheadfail(i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i32*, i32** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %5, align 4
  %55 = sub nsw i32 0, %54
  %56 = call i32 @optionalheadfail(i32* %52, i32 %53, i32 %55)
  br label %63

57:                                               ; preds = %47
  %58 = load i32*, i32** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %5, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @optionals(i32* %58, i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %57, %51
  br label %64

64:                                               ; preds = %63, %42
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %64, %20
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @luaL_checkint(i32*, i32) #1

declare dso_local i32* @getpatt(i32*, i32, i32*) #1

declare dso_local i64 @tocharset(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @repeatcharset(i32*, i32, i32, i32) #1

declare dso_local i64 @isheadfail(i32*) #1

declare dso_local i32* @repeatheadfail(i32*, i32, i32) #1

declare dso_local i32* @repeats(i32*, i32*, i32, i32) #1

declare dso_local i32 @optimizecaptures(i32*) #1

declare dso_local i32 @optimizejumps(i32*) #1

declare dso_local i32 @optionalheadfail(i32*, i32, i32) #1

declare dso_local i32 @optionals(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
