; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_base64.c_decodeQuantum.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_base64.c_decodeQuantum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@base64 = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*)* @decodeQuantum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decodeQuantum(i8* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  %12 = load i8*, i8** %5, align 8
  store i8* %12, i8** %7, align 8
  br label %13

13:                                               ; preds = %64, %2
  %14 = load i64, i64* %9, align 8
  %15 = icmp ult i64 %14, 4
  br i1 %15, label %16, label %69

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 61
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load i64, i64* %10, align 8
  %23 = shl i64 %22, 6
  store i64 %23, i64* %10, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %6, align 8
  br label %63

26:                                               ; preds = %16
  store i64 0, i64* %11, align 8
  %27 = load i8*, i8** @base64, align 8
  store i8* %27, i8** %8, align 8
  br label %28

28:                                               ; preds = %43, %26
  %29 = load i8*, i8** %8, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %36, %39
  br label %41

41:                                               ; preds = %33, %28
  %42 = phi i1 [ false, %28 ], [ %40, %33 ]
  br i1 %42, label %43, label %48

43:                                               ; preds = %41
  %44 = load i64, i64* %11, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %11, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  br label %28

48:                                               ; preds = %41
  %49 = load i8*, i8** %8, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = load i8*, i8** %7, align 8
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %48
  %57 = load i64, i64* %10, align 8
  %58 = shl i64 %57, 6
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %58, %59
  store i64 %60, i64* %10, align 8
  br label %62

61:                                               ; preds = %48
  store i64 0, i64* %3, align 8
  br label %99

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %21
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %9, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %7, align 8
  br label %13

69:                                               ; preds = %13
  %70 = load i64, i64* %6, align 8
  %71 = icmp ult i64 %70, 1
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load i64, i64* %10, align 8
  %74 = and i64 %73, 255
  %75 = call zeroext i8 @curlx_ultouc(i64 %74)
  %76 = load i8*, i8** %4, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8 %75, i8* %77, align 1
  br label %78

78:                                               ; preds = %72, %69
  %79 = load i64, i64* %10, align 8
  %80 = lshr i64 %79, 8
  store i64 %80, i64* %10, align 8
  %81 = load i64, i64* %6, align 8
  %82 = icmp ult i64 %81, 2
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load i64, i64* %10, align 8
  %85 = and i64 %84, 255
  %86 = call zeroext i8 @curlx_ultouc(i64 %85)
  %87 = load i8*, i8** %4, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  store i8 %86, i8* %88, align 1
  br label %89

89:                                               ; preds = %83, %78
  %90 = load i64, i64* %10, align 8
  %91 = lshr i64 %90, 8
  store i64 %91, i64* %10, align 8
  %92 = load i64, i64* %10, align 8
  %93 = and i64 %92, 255
  %94 = call zeroext i8 @curlx_ultouc(i64 %93)
  %95 = load i8*, i8** %4, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 0
  store i8 %94, i8* %96, align 1
  %97 = load i64, i64* %6, align 8
  %98 = sub i64 3, %97
  store i64 %98, i64* %3, align 8
  br label %99

99:                                               ; preds = %89, %61
  %100 = load i64, i64* %3, align 8
  ret i64 %100
}

declare dso_local zeroext i8 @curlx_ultouc(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
