; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_smalltext_out16_.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/extr_menu.c_smalltext_out16_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@me_sfont_w = common dso_local global i32 0, align 4
@fontdata6x8 = common dso_local global i8** null, align 8
@g_menuscreen_ptr = common dso_local global i64 0, align 8
@g_menuscreen_w = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*, i32)* @smalltext_out16_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smalltext_out16_(i32 %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i16*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32, i32* @me_sfont_w, align 4
  %19 = sdiv i32 %18, 6
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %20

20:                                               ; preds = %106, %4
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  store i8 %25, i8* %13, align 1
  store i32 8, i32* %14, align 4
  %26 = load i8, i8* %13, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load i8, i8* %13, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 10
  br i1 %31, label %32, label %33

32:                                               ; preds = %28, %20
  br label %112

33:                                               ; preds = %28
  %34 = load i8**, i8*** @fontdata6x8, align 8
  %35 = load i8, i8* %13, align 1
  %36 = zext i8 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  %39 = load i64, i64* @g_menuscreen_ptr, align 8
  %40 = inttoptr i64 %39 to i16*
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %40, i64 %42
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @g_menuscreen_w, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i16, i16* %43, i64 %47
  store i16* %48, i16** %10, align 8
  br label %49

49:                                               ; preds = %102, %33
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %14, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %105

53:                                               ; preds = %49
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %17, align 4
  br label %55

55:                                               ; preds = %99, %53
  %56 = load i32, i32* %17, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %55
  store i32 32, i32* %15, align 4
  br label %59

59:                                               ; preds = %89, %58
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %92

62:                                               ; preds = %59
  %63 = load i8*, i8** %9, align 8
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = load i32, i32* %15, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %62
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %16, align 4
  br label %71

71:                                               ; preds = %79, %69
  %72 = load i32, i32* %16, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %8, align 4
  %76 = trunc i32 %75 to i16
  %77 = load i16*, i16** %10, align 8
  %78 = getelementptr inbounds i16, i16* %77, i32 1
  store i16* %78, i16** %10, align 8
  store i16 %76, i16* %77, align 2
  br label %79

79:                                               ; preds = %74
  %80 = load i32, i32* %16, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %16, align 4
  br label %71

82:                                               ; preds = %71
  br label %88

83:                                               ; preds = %62
  %84 = load i32, i32* %11, align 4
  %85 = load i16*, i16** %10, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i16, i16* %85, i64 %86
  store i16* %87, i16** %10, align 8
  br label %88

88:                                               ; preds = %83, %82
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %15, align 4
  %91 = ashr i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %59

92:                                               ; preds = %59
  %93 = load i32, i32* @g_menuscreen_w, align 4
  %94 = load i32, i32* @me_sfont_w, align 4
  %95 = sub nsw i32 %93, %94
  %96 = load i16*, i16** %10, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i16, i16* %96, i64 %97
  store i16* %98, i16** %10, align 8
  br label %99

99:                                               ; preds = %92
  %100 = load i32, i32* %17, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %17, align 4
  br label %55

102:                                              ; preds = %55
  %103 = load i8*, i8** %9, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %9, align 8
  br label %49

105:                                              ; preds = %49
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* @me_sfont_w, align 4
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %5, align 4
  br label %20

112:                                              ; preds = %32
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
