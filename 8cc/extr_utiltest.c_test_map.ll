; ModuleID = '/home/carl/AnghaBench/8cc/extr_utiltest.c_test_map.c'
source_filename = "/home/carl/AnghaBench/8cc/extr_utiltest.c_test_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_map() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = call i32* (...) @make_map()
  store i32* %8, i32** %1, align 8
  %9 = load i32*, i32** %1, align 8
  %10 = call i64 @map_get(i32* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @assert_null(i64 %10)
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %31, %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp slt i32 %13, 10000
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i32, i32* %2, align 4
  %17 = call i8* @format(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  store i8* %17, i8** %3, align 8
  %18 = load i32*, i32** %1, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @map_put(i32* %18, i8* %19, i8* %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32*, i32** %1, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = call i64 @map_get(i32* %25, i8* %26)
  %28 = trunc i64 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = call i32 @assert_int(i32 %24, i64 %29)
  br label %31

31:                                               ; preds = %15
  %32 = load i32, i32* %2, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %2, align 4
  br label %12

34:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %54, %34
  %36 = load i32, i32* %4, align 4
  %37 = icmp slt i32 %36, 1000
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = call i8* @format(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i8* %40, i8** %5, align 8
  %41 = load i32*, i32** %1, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @map_put(i32* %41, i8* %42, i8* %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32*, i32** %1, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = call i64 @map_get(i32* %48, i8* %49)
  %51 = trunc i64 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = call i32 @assert_int(i32 %47, i64 %52)
  br label %54

54:                                               ; preds = %38
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %35

57:                                               ; preds = %35
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %76, %57
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 10000
  br i1 %60, label %61, label %79

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = call i8* @format(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  store i8* %63, i8** %7, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %1, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = call i64 @map_get(i32* %65, i8* %66)
  %68 = call i32 @assert_int(i32 %64, i64 %67)
  %69 = load i32*, i32** %1, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 @map_remove(i32* %69, i8* %70)
  %72 = load i32*, i32** %1, align 8
  %73 = load i8*, i8** %7, align 8
  %74 = call i64 @map_get(i32* %72, i8* %73)
  %75 = call i32 @assert_null(i64 %74)
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %58

79:                                               ; preds = %58
  ret void
}

declare dso_local i32* @make_map(...) #1

declare dso_local i32 @assert_null(i64) #1

declare dso_local i64 @map_get(i32*, i8*) #1

declare dso_local i8* @format(i8*, i32) #1

declare dso_local i32 @map_put(i32*, i8*, i8*) #1

declare dso_local i32 @assert_int(i32, i64) #1

declare dso_local i32 @map_remove(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
