; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_isoir165.h_isoir165_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_isoir165.h_isoir165_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @isoir165_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoir165_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i8], align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @gb2312_wctomb(i32 %12, i8* %13, i32 %14, i32 2)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @RET_ILUNI, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %54

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 2
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (...) @abort() #3
  unreachable

24:                                               ; preds = %19
  %25 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 40
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp sge i32 %32, 33
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sle i32 %37, 64
  br i1 %38, label %53, label %39

39:                                               ; preds = %34, %29, %24
  %40 = load i32, i32* %9, align 4
  %41 = icmp sge i32 %40, 2
  br i1 %41, label %42, label %51

42:                                               ; preds = %39
  %43 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  store i8 %44, i8* %46, align 1
  %47 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %48 = load i8, i8* %47, align 1
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  store i8 %48, i8* %50, align 1
  store i32 2, i32* %5, align 4
  br label %97

51:                                               ; preds = %39
  %52 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %52, i32* %5, align 4
  br label %97

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53, %4
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @iso646_cn_wctomb(i32 %55, i8* %56, i32 %57, i32 1)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @RET_ILUNI, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %54
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @abort() #3
  unreachable

67:                                               ; preds = %62
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp sge i32 %70, 33
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp slt i32 %75, 127
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load i32, i32* %9, align 4
  %79 = icmp sge i32 %78, 2
  br i1 %79, label %80, label %87

80:                                               ; preds = %77
  %81 = load i8*, i8** %7, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 0
  store i8 42, i8* %82, align 1
  %83 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %84 = load i8, i8* %83, align 1
  %85 = load i8*, i8** %7, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 1
  store i8 %84, i8* %86, align 1
  store i32 2, i32* %5, align 4
  br label %97

87:                                               ; preds = %77
  %88 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %88, i32* %5, align 4
  br label %97

89:                                               ; preds = %72, %67
  br label %90

90:                                               ; preds = %89, %54
  %91 = load i32, i32* %6, align 4
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @isoir165ext_wctomb(i32 %91, i8* %92, i32 %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %90, %87, %80, %51, %42
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @gb2312_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @iso646_cn_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @isoir165ext_wctomb(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
