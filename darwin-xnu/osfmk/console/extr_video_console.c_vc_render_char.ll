; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_render_char.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_render_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i8* }

@iso_font = common dso_local global i8* null, align 8
@ISO_CHAR_HEIGHT = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8, i8*, i16)* @vc_render_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_render_char(i8 zeroext %0, i8* %1, i16 signext %2) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %union.anon, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i16 %2, i16* %6, align 2
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast %union.anon* %7 to i8**
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** @iso_font, align 8
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* @ISO_CHAR_HEIGHT, align 1
  %17 = zext i8 %16 to i32
  %18 = mul nsw i32 %15, %17
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %13, i64 %19
  store i8* %20, i8** %8, align 8
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %82, %3
  %22 = load i32, i32* %9, align 4
  %23 = load i8, i8* @ISO_CHAR_HEIGHT, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %85

26:                                               ; preds = %21
  store i8 1, i8* %10, align 1
  br label %27

27:                                               ; preds = %76, %26
  %28 = load i16, i16* %6, align 2
  %29 = sext i16 %28 to i32
  switch i32 %29, label %71 [
    i32 8, label %30
    i32 16, label %44
    i32 30, label %58
    i32 32, label %58
  ]

30:                                               ; preds = %27
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %10, align 1
  %35 = zext i8 %34 to i32
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 255, i32 0
  %40 = trunc i32 %39 to i8
  %41 = bitcast %union.anon* %7 to i8**
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %41, align 8
  store i8 %40, i8* %42, align 1
  br label %71

44:                                               ; preds = %27
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* %10, align 1
  %49 = zext i8 %48 to i32
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 65535, i32 0
  %54 = trunc i32 %53 to i16
  %55 = bitcast %union.anon* %7 to i16**
  %56 = load i16*, i16** %55, align 8
  %57 = getelementptr inbounds i16, i16* %56, i32 1
  store i16* %57, i16** %55, align 8
  store i16 %54, i16* %56, align 2
  br label %71

58:                                               ; preds = %27, %27
  %59 = load i8*, i8** %8, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* %10, align 1
  %63 = zext i8 %62 to i32
  %64 = and i32 %61, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 -1, i32 0
  %68 = bitcast %union.anon* %7 to i32**
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %68, align 8
  store i32 %67, i32* %69, align 4
  br label %71

71:                                               ; preds = %27, %58, %44, %30
  %72 = load i8, i8* %10, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 1
  %75 = trunc i32 %74 to i8
  store i8 %75, i8* %10, align 1
  br label %76

76:                                               ; preds = %71
  %77 = load i8, i8* %10, align 1
  %78 = icmp ne i8 %77, 0
  br i1 %78, label %27, label %79

79:                                               ; preds = %76
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %8, align 8
  br label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %9, align 4
  br label %21

85:                                               ; preds = %21
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
