; ModuleID = '/home/carl/AnghaBench/Cinder/src/freetype/bdf/extr_bdflib.c__bdf_atos.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/freetype/bdf/extr_bdflib.c__bdf_atos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ddigits = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@a2i = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i8*)* @_bdf_atos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i16 @_bdf_atos(i8* %0) #0 {
  %2 = alloca i16, align 2
  %3 = alloca i8*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8, %1
  store i16 0, i16* %2, align 2
  br label %70

14:                                               ; preds = %8
  store i16 0, i16* %5, align 2
  %15 = load i8*, i8** %3, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 45
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %3, align 8
  store i16 1, i16* %5, align 2
  br label %22

22:                                               ; preds = %19, %14
  store i16 0, i16* %4, align 2
  br label %23

23:                                               ; preds = %54, %22
  %24 = load i32, i32* @ddigits, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @sbitset(i32 %24, i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %23
  %30 = load i16, i16* %4, align 2
  %31 = sext i16 %30 to i32
  %32 = load i32, i32* @SHRT_MAX, align 4
  %33 = sub nsw i32 %32, 9
  %34 = sdiv i32 %33, 10
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %29
  %37 = load i16, i16* %4, align 2
  %38 = sext i16 %37 to i32
  %39 = mul nsw i32 %38, 10
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** @a2i, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %41, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %40, %47
  %49 = trunc i64 %48 to i16
  store i16 %49, i16* %4, align 2
  br label %53

50:                                               ; preds = %29
  %51 = load i32, i32* @SHRT_MAX, align 4
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %4, align 2
  br label %57

53:                                               ; preds = %36
  br label %54

54:                                               ; preds = %53
  %55 = load i8*, i8** %3, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %3, align 8
  br label %23

57:                                               ; preds = %50, %23
  %58 = load i16, i16* %5, align 2
  %59 = icmp ne i16 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load i16, i16* %4, align 2
  %62 = sext i16 %61 to i32
  br label %67

63:                                               ; preds = %57
  %64 = load i16, i16* %4, align 2
  %65 = sext i16 %64 to i32
  %66 = sub nsw i32 0, %65
  br label %67

67:                                               ; preds = %63, %60
  %68 = phi i32 [ %62, %60 ], [ %66, %63 ]
  %69 = trunc i32 %68 to i16
  store i16 %69, i16* %2, align 2
  br label %70

70:                                               ; preds = %67, %13
  %71 = load i16, i16* %2, align 2
  ret i16 %71
}

declare dso_local i64 @sbitset(i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
