; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_find_headers_search.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_find_headers_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32)* @find_headers_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_headers_search(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = sub nsw i32 %14, 1
  %16 = srem i32 %15, 4
  store i32 %16, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %36, %4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @AV_RB16(i32* %25)
  %27 = and i32 %26, 65534
  %28 = icmp eq i32 %27, 65528
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @find_headers_search_validate(i32* %30, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %29, %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %17

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %87, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = sub nsw i32 %42, 1
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %90

45:                                               ; preds = %40
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @AV_RN32(i32* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 16843009
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  %56 = and i32 %55, -2139062144
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %45
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %82, %58
  %60 = load i32, i32* %12, align 4
  %61 = icmp slt i32 %60, 4
  br i1 %61, label %62, label %85

62:                                               ; preds = %59
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @AV_RB16(i32* %69)
  %71 = and i32 %70, 65534
  %72 = icmp eq i32 %71, 65528
  br i1 %72, label %73, label %81

73:                                               ; preds = %62
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %77, %78
  %80 = call i32 @find_headers_search_validate(i32* %74, i32 %79)
  store i32 %80, i32* %9, align 4
  br label %81

81:                                               ; preds = %73, %62
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %59

85:                                               ; preds = %59
  br label %86

86:                                               ; preds = %85, %45
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 4
  store i32 %89, i32* %11, align 4
  br label %40

90:                                               ; preds = %40
  %91 = load i32, i32* %9, align 4
  ret i32 %91
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @find_headers_search_validate(i32*, i32) #1

declare dso_local i32 @AV_RN32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
