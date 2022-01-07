; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_dec_hanyu.h_dec_hanyu_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_dec_hanyu.h_dec_hanyu_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RET_ILUNI = common dso_local global i32 0, align 4
@RET_TOOSMALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @dec_hanyu_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dec_hanyu_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i8], align 1
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
  br label %124

22:                                               ; preds = %4
  %23 = load i32, i32* %6, align 4
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @cns11643_wctomb(i32 %23, i8* %24, i32 %25, i32 3)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @RET_ILUNI, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %122

30:                                               ; preds = %22
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 3
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 (...) @abort() #3
  unreachable

35:                                               ; preds = %30
  %36 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %70

40:                                               ; preds = %35
  %41 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp ne i32 %43, 66
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp slt i32 %48, 66
  br i1 %49, label %50, label %70

50:                                               ; preds = %45, %40
  %51 = load i32, i32* %9, align 4
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %53, label %55

53:                                               ; preds = %50
  %54 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %54, i32* %5, align 4
  br label %124

55:                                               ; preds = %50
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %58, 128
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 0
  store i8 %60, i8* %62, align 1
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, 128
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %7, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  store i8 %67, i8* %69, align 1
  store i32 2, i32* %5, align 4
  br label %124

70:                                               ; preds = %45, %35
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %92

75:                                               ; preds = %70
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %79, i32* %5, align 4
  br label %124

80:                                               ; preds = %75
  %81 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = add nsw i32 %83, 128
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %7, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 0
  store i8 %85, i8* %87, align 1
  %88 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %7, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 1
  store i8 %89, i8* %91, align 1
  store i32 2, i32* %5, align 4
  br label %124

92:                                               ; preds = %70
  %93 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 3
  br i1 %96, label %97, label %121

97:                                               ; preds = %92
  %98 = load i32, i32* %9, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @RET_TOOSMALL, align 4
  store i32 %101, i32* %5, align 4
  br label %124

102:                                              ; preds = %97
  %103 = load i8*, i8** %7, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 0
  store i8 -62, i8* %104, align 1
  %105 = load i8*, i8** %7, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 1
  store i8 -53, i8* %106, align 1
  %107 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 1
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = add nsw i32 %109, 128
  %111 = trunc i32 %110 to i8
  %112 = load i8*, i8** %7, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 2
  store i8 %111, i8* %113, align 1
  %114 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 2
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = add nsw i32 %116, 128
  %118 = trunc i32 %117 to i8
  %119 = load i8*, i8** %7, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 3
  store i8 %118, i8* %120, align 1
  store i32 4, i32* %5, align 4
  br label %124

121:                                              ; preds = %92
  br label %122

122:                                              ; preds = %121, %22
  %123 = load i32, i32* @RET_ILUNI, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %122, %102, %100, %80, %78, %55, %53, %20
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local i32 @ascii_wctomb(i32, i8*, i32, i32) #1

declare dso_local i32 @cns11643_wctomb(i32, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
