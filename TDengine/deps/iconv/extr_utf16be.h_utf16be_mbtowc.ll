; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf16be.h_utf16be_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_utf16be.h_utf16be_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @utf16be_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf16be_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp sge i32 %13, 2
  br i1 %14, label %15, label %76

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = add nsw i32 %20, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp sge i32 %26, 55296
  br i1 %27, label %28, label %63

28:                                               ; preds = %15
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 56320
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp sge i32 %32, 4
  br i1 %33, label %34, label %62

34:                                               ; preds = %31
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 2
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl i32 %38, 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 3
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %39, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sge i32 %45, 56320
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 57344
  br i1 %49, label %51, label %50

50:                                               ; preds = %47, %34
  br label %79

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = sub nsw i32 %52, 55296
  %54 = shl i32 %53, 10
  %55 = add nsw i32 65536, %54
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %56, 56320
  %58 = add nsw i32 %55, %57
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 4
  store i32 %61, i32* %5, align 4
  br label %82

62:                                               ; preds = %31
  br label %75

63:                                               ; preds = %28, %15
  %64 = load i32, i32* %11, align 4
  %65 = icmp sge i32 %64, 56320
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %11, align 4
  %68 = icmp slt i32 %67, 57344
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  br label %79

70:                                               ; preds = %66, %63
  %71 = load i32, i32* %11, align 4
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 2
  store i32 %74, i32* %5, align 4
  br label %82

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75, %4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @RET_TOOFEW(i32 %77)
  store i32 %78, i32* %5, align 4
  br label %82

79:                                               ; preds = %69, %50
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @RET_SHIFT_ILSEQ(i32 %80)
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %79, %76, %70, %51
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @RET_TOOFEW(i32) #1

declare dso_local i32 @RET_SHIFT_ILSEQ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
