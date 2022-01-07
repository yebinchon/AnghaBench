; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp949.h_cp949_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp949.h_cp949_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp949_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp949_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
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
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @ascii_wctomb(i32 %12, i8* %13, i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @RET_ILUNI, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %5, align 4
  br label %115

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 12926
  br i1 %24, label %25, label %59

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @ksc5601_wctomb(i32 %26, i8* %27, i32 %28, i32 2)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @RET_ILUNI, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 2
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (...) @abort() #3
  unreachable

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %39, 2
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %42, i32* %5, align 4
  br label %115

43:                                               ; preds = %38
  %44 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %46, 128
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 0
  store i8 %48, i8* %50, align 1
  %51 = getelementptr inbounds [2 x i8], [2 x i8]* %10, i64 0, i64 1
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, 128
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 1
  store i8 %55, i8* %57, align 1
  store i32 2, i32* %5, align 4
  br label %115

58:                                               ; preds = %25
  br label %59

59:                                               ; preds = %58, %22
  %60 = load i32, i32* %8, align 4
  %61 = icmp sge i32 %60, 44032
  br i1 %61, label %62, label %80

62:                                               ; preds = %59
  %63 = load i32, i32* %8, align 4
  %64 = icmp slt i32 %63, 55204
  br i1 %64, label %65, label %80

65:                                               ; preds = %62
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 51365
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @uhc_1_wctomb(i32 %69, i8* %70, i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %115

74:                                               ; preds = %65
  %75 = load i32, i32* %6, align 4
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @uhc_2_wctomb(i32 %75, i8* %76, i32 %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %115

80:                                               ; preds = %62, %59
  %81 = load i32, i32* %8, align 4
  %82 = icmp sge i32 %81, 57344
  br i1 %82, label %83, label %113

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 57532
  br i1 %85, label %86, label %113

86:                                               ; preds = %83
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 2
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %90, i32* %5, align 4
  br label %115

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = icmp slt i32 %92, 57438
  br i1 %93, label %94, label %103

94:                                               ; preds = %91
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8 -55, i8* %96, align 1
  %97 = load i32, i32* %8, align 4
  %98 = sub nsw i32 %97, 57344
  %99 = add nsw i32 %98, 161
  %100 = trunc i32 %99 to i8
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 1
  store i8 %100, i8* %102, align 1
  br label %112

103:                                              ; preds = %91
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 -2, i8* %105, align 1
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %106, 57438
  %108 = add nsw i32 %107, 161
  %109 = trunc i32 %108 to i8
  %110 = load i8*, i8** %7, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  store i8 %109, i8* %111, align 1
  br label %112

112:                                              ; preds = %103, %94
  store i32 2, i32* %5, align 4
  br label %115

113:                                              ; preds = %83, %80
  %114 = load i32, i32* @RET_ILUNI, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %112, %89, %74, %68, %43, %41, %20
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i32 @ascii_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @ksc5601_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @uhc_1_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @uhc_2_wctomb(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
