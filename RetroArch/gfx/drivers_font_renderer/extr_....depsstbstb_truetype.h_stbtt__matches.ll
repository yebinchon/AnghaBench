; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__matches.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/drivers_font_renderer/extr_....depsstbstb_truetype.h_stbtt__matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32*, i32)* @stbtt__matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbtt__matches(i32* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @strlen(i8* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @stbtt__isfont(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %103

23:                                               ; preds = %4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @stbtt__find_table(i32* %27, i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 %29, i32* %12, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = getelementptr inbounds i32, i32* %33, i64 44
  %35 = call i32 @ttUSHORT(i32* %34)
  %36 = and i32 %35, 7
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 7
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %103

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %23
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @stbtt__find_table(i32* %43, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  store i32 0, i32* %5, align 4
  br label %103

49:                                               ; preds = %42
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %77

52:                                               ; preds = %49
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i64 @stbtt__matchpair(i32* %53, i32 %54, i32* %55, i32 %56, i32 16, i32 -1)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %5, align 4
  br label %103

60:                                               ; preds = %52
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @stbtt__matchpair(i32* %61, i32 %62, i32* %63, i32 %64, i32 1, i32 -1)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  br label %103

68:                                               ; preds = %60
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i64 @stbtt__matchpair(i32* %69, i32 %70, i32* %71, i32 %72, i32 3, i32 -1)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %5, align 4
  br label %103

76:                                               ; preds = %68
  br label %102

77:                                               ; preds = %49
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load i32*, i32** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i64 @stbtt__matchpair(i32* %78, i32 %79, i32* %80, i32 %81, i32 16, i32 17)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 1, i32* %5, align 4
  br label %103

85:                                               ; preds = %77
  %86 = load i32*, i32** %6, align 8
  %87 = load i32, i32* %11, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i64 @stbtt__matchpair(i32* %86, i32 %87, i32* %88, i32 %89, i32 1, i32 2)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 1, i32* %5, align 4
  br label %103

93:                                               ; preds = %85
  %94 = load i32*, i32** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @stbtt__matchpair(i32* %94, i32 %95, i32* %96, i32 %97, i32 3, i32 -1)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 1, i32* %5, align 4
  br label %103

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %76
  store i32 0, i32* %5, align 4
  br label %103

103:                                              ; preds = %102, %100, %92, %84, %75, %67, %59, %48, %40, %22
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @stbtt__isfont(i32*) #1

declare dso_local i32 @stbtt__find_table(i32*, i32, i8*) #1

declare dso_local i32 @ttUSHORT(i32*) #1

declare dso_local i64 @stbtt__matchpair(i32*, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
