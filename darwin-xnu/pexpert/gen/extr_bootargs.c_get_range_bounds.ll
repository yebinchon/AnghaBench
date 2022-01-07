; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_bootargs.c_get_range_bounds.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/gen/extr_bootargs.c_get_range_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@NUM = common dso_local global i64 0, align 8
@israngesep = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_range_bounds(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = icmp eq i8* %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %6, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i32*, i32** %7, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %10, %3
  %17 = load i32, i32* @FALSE, align 4
  store i32 %17, i32* %4, align 4
  br label %65

18:                                               ; preds = %13
  %19 = load i64, i64* @NUM, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* @israngesep, align 4
  %23 = load i32, i32* @TRUE, align 4
  %24 = call i64 @getval(i8* %20, i32* %21, i32 %22, i32 %23)
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %4, align 4
  br label %65

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %40, %28
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i8*, i8** %5, align 8
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 95
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %43

40:                                               ; preds = %34
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %5, align 8
  br label %29

43:                                               ; preds = %39, %29
  %44 = load i8*, i8** %5, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 95
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i8*, i8** %5, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %5, align 8
  %51 = load i64, i64* @NUM, align 8
  %52 = load i8*, i8** %5, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* @israngesep, align 4
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i64 @getval(i8* %52, i32* %53, i32 %54, i32 %55)
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %4, align 4
  br label %65

60:                                               ; preds = %48
  br label %63

61:                                               ; preds = %43
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @TRUE, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %61, %58, %26, %16
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @getval(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
