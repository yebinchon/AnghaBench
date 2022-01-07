; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_isoir165.h_isoir165_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_isoir165.h_isoir165_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i32)* @isoir165_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoir165_mbtowc(i32 %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 40
  br i1 %19, label %20, label %50

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = icmp sge i32 %21, 2
  br i1 %22, label %23, label %49

23:                                               ; preds = %20
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 1
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i8, i8* %11, align 1
  %28 = zext i8 %27 to i32
  %29 = icmp sge i32 %28, 33
  br i1 %29, label %30, label %48

30:                                               ; preds = %23
  %31 = load i8, i8* %11, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sle i32 %32, 64
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  store i8 43, i8* %35, align 1
  %36 = load i8, i8* %11, align 1
  %37 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 1
  store i8 %36, i8* %37, align 1
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds [2 x i8], [2 x i8]* %12, i64 0, i64 0
  %41 = call i32 @isoir165ext_mbtowc(i32 %38, i32* %39, i8* %40, i32 2)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @RET_ILSEQ, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %5, align 4
  br label %103

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %30, %23
  br label %49

49:                                               ; preds = %48, %20
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32, i32* %6, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @gb2312_mbtowc(i32 %51, i32* %52, i8* %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @RET_ILSEQ, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %103

61:                                               ; preds = %50
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 42
  br i1 %66, label %67, label %96

67:                                               ; preds = %61
  %68 = load i32, i32* %9, align 4
  %69 = icmp sge i32 %68, 2
  br i1 %69, label %70, label %94

70:                                               ; preds = %67
  %71 = load i8*, i8** %8, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = load i8, i8* %72, align 1
  store i8 %73, i8* %13, align 1
  %74 = load i8, i8* %13, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sge i32 %75, 33
  br i1 %76, label %77, label %92

77:                                               ; preds = %70
  %78 = load i8, i8* %13, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp slt i32 %79, 127
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i32, i32* %6, align 4
  %83 = load i32*, i32** %7, align 8
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 1
  %86 = call i32 @iso646_cn_mbtowc(i32 %82, i32* %83, i8* %85, i32 1)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = call i32 (...) @abort() #3
  unreachable

91:                                               ; preds = %81
  store i32 2, i32* %5, align 4
  br label %103

92:                                               ; preds = %77, %70
  %93 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %93, i32* %5, align 4
  br label %103

94:                                               ; preds = %67
  %95 = call i32 @RET_TOOFEW(i32 0)
  store i32 %95, i32* %5, align 4
  br label %103

96:                                               ; preds = %61
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** %7, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @isoir165ext_mbtowc(i32 %97, i32* %98, i8* %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %96, %94, %92, %91, %59, %45
  %104 = load i32, i32* %5, align 4
  ret i32 %104
}

declare dso_local i32 @isoir165ext_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @gb2312_mbtowc(i32, i32*, i8*, i32) #1

declare dso_local i32 @iso646_cn_mbtowc(i32, i32*, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
