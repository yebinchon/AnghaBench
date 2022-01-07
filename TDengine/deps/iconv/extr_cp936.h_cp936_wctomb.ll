; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp936.h_cp936_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp936.h_cp936_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp936_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp936_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @ces_gbk_wctomb(i32 %17, i8* %18, i32 %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @RET_ILUNI, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %92

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 57344
  br i1 %29, label %30, label %83

30:                                               ; preds = %27
  %31 = load i32, i32* %8, align 4
  %32 = icmp slt i32 %31, 58758
  br i1 %32, label %33, label %83

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 @RET_TOOFEW(i32 0)
  store i32 %37, i32* %5, align 4
  br label %92

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 58566
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = sub nsw i32 %42, 57344
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = udiv i32 %44, 94
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %11, align 4
  %47 = urem i32 %46, 94
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ult i32 %49, 6
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 170, i32 242
  %53 = add i32 %48, %52
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 0
  store i8 %54, i8* %56, align 1
  %57 = load i32, i32* %13, align 4
  %58 = add i32 %57, 161
  %59 = trunc i32 %58 to i8
  %60 = load i8*, i8** %7, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  store i8 %59, i8* %61, align 1
  store i32 2, i32* %5, align 4
  br label %92

62:                                               ; preds = %38
  %63 = load i32, i32* %8, align 4
  %64 = sub nsw i32 %63, 58566
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = udiv i32 %65, 96
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %14, align 4
  %68 = urem i32 %67, 96
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %15, align 4
  %70 = add i32 %69, 161
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ult i32 %75, 63
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 64, i32 65
  %79 = add i32 %74, %78
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 %80, i8* %82, align 1
  store i32 2, i32* %5, align 4
  br label %92

83:                                               ; preds = %30, %27
  %84 = load i32, i32* %8, align 4
  %85 = icmp eq i32 %84, 8364
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %7, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  store i8 -128, i8* %88, align 1
  store i32 1, i32* %5, align 4
  br label %92

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* @RET_ILUNI, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %86, %62, %41, %36, %25
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @ces_gbk_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
