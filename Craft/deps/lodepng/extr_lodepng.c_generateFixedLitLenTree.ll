; ModuleID = '/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_generateFixedLitLenTree.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/lodepng/extr_lodepng.c_generateFixedLitLenTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_DEFLATE_CODE_SYMBOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @generateFixedLitLenTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generateFixedLitLenTree(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @NUM_DEFLATE_CODE_SYMBOLS, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 4
  %10 = trunc i64 %9 to i32
  %11 = call i64 @lodepng_malloc(i32 %10)
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 83, i32* %2, align 4
  br label %72

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ule i32 %18, 143
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  store i32 8, i32* %24, align 4
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %4, align 4
  br label %17

28:                                               ; preds = %17
  store i32 144, i32* %4, align 4
  br label %29

29:                                               ; preds = %37, %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp ule i32 %30, 255
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 9, i32* %36, align 4
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %4, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %4, align 4
  br label %29

40:                                               ; preds = %29
  store i32 256, i32* %4, align 4
  br label %41

41:                                               ; preds = %49, %40
  %42 = load i32, i32* %4, align 4
  %43 = icmp ule i32 %42, 279
  br i1 %43, label %44, label %52

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = load i32, i32* %4, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 7, i32* %48, align 4
  br label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %41

52:                                               ; preds = %41
  store i32 280, i32* %4, align 4
  br label %53

53:                                               ; preds = %61, %52
  %54 = load i32, i32* %4, align 4
  %55 = icmp ule i32 %54, 287
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 8, i32* %60, align 4
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %53

64:                                               ; preds = %53
  %65 = load i32*, i32** %3, align 8
  %66 = load i32*, i32** %6, align 8
  %67 = load i32, i32* @NUM_DEFLATE_CODE_SYMBOLS, align 4
  %68 = call i32 @HuffmanTree_makeFromLengths(i32* %65, i32* %66, i32 %67, i32 15)
  store i32 %68, i32* %5, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @lodepng_free(i32* %69)
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %64, %15
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i64 @lodepng_malloc(i32) #1

declare dso_local i32 @HuffmanTree_makeFromLengths(i32*, i32*, i32, i32) #1

declare dso_local i32 @lodepng_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
