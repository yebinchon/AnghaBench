; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug.c_get_token.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/extr_debug.c_get_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c";\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i32, i8*)* @get_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @get_token(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %18, %3
  %14 = load i8*, i8** %8, align 8
  %15 = load i8, i8* %14, align 1
  %16 = call i64 @isspace_(i8 signext %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8
  %20 = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %20, i8** %8, align 8
  br label %13

21:                                               ; preds = %13
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i8* null, i8** %4, align 8
  br label %94

27:                                               ; preds = %21
  %28 = load i8*, i8** %8, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 59
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @strcpy(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  store i8* %36, i8** %4, align 8
  br label %94

37:                                               ; preds = %27
  %38 = load i8*, i8** %8, align 8
  store i8* %38, i8** %9, align 8
  br label %39

39:                                               ; preds = %57, %37
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %39
  %45 = load i8*, i8** %8, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 59
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isspace_(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  br label %55

55:                                               ; preds = %49, %44, %39
  %56 = phi i1 [ false, %44 ], [ false, %39 ], [ %54, %49 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  br label %39

60:                                               ; preds = %55
  %61 = load i8*, i8** %8, align 8
  store i8* %61, i8** %10, align 8
  br label %62

62:                                               ; preds = %67, %60
  %63 = load i8*, i8** %10, align 8
  %64 = load i8, i8* %63, align 1
  %65 = call i64 @isspace_(i8 signext %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i8*, i8** %10, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %10, align 8
  br label %62

70:                                               ; preds = %62
  %71 = load i8*, i8** %8, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub nsw i32 %78, 1
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %70
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %81, %70
  %85 = load i8*, i8** %5, align 8
  %86 = load i8*, i8** %9, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @memcpy(i8* %85, i8* %86, i32 %87)
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %10, align 8
  store i8* %93, i8** %4, align 8
  br label %94

94:                                               ; preds = %84, %32, %26
  %95 = load i8*, i8** %4, align 8
  ret i8* %95
}

declare dso_local i64 @isspace_(i8 signext) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
