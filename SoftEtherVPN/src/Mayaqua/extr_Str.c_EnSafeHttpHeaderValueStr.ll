; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_EnSafeHttpHeaderValueStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_EnSafeHttpHeaderValueStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EnSafeHttpHeaderValueStr(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8 %1, i8* %4, align 1
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %111

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @StrLen(i8* %11)
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %108, %10
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %111

17:                                               ; preds = %13
  %18 = load i8*, i8** %3, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 13
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load i8*, i8** %3, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i8, i8* %25, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 10
  br i1 %30, label %31, label %53

31:                                               ; preds = %24, %17
  %32 = load i8, i8* %4, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 32
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i8*, i8** %3, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = load i8*, i8** %3, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub i64 %43, %44
  %46 = call i32 @Move(i8* %38, i8* %42, i64 %45)
  br label %52

47:                                               ; preds = %31
  %48 = load i8, i8* %4, align 1
  %49 = load i8*, i8** %3, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8 %48, i8* %51, align 1
  br label %52

52:                                               ; preds = %47, %35
  br label %108

53:                                               ; preds = %24
  %54 = load i8*, i8** %3, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 92
  br i1 %59, label %60, label %107

60:                                               ; preds = %53
  %61 = load i8*, i8** %3, align 8
  %62 = load i64, i64* %6, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 114
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load i8*, i8** %3, align 8
  %70 = load i64, i64* %6, align 8
  %71 = add i64 %70, 1
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 110
  br i1 %75, label %76, label %106

76:                                               ; preds = %68, %60
  %77 = load i8, i8* %4, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %80, label %94

80:                                               ; preds = %76
  %81 = load i8*, i8** %3, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = load i8*, i8** %3, align 8
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, 2
  %87 = getelementptr inbounds i8, i8* %84, i64 %86
  %88 = load i64, i64* %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = sub i64 %88, %89
  %91 = call i32 @Move(i8* %83, i8* %87, i64 %90)
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, -1
  store i64 %93, i64* %6, align 8
  br label %105

94:                                               ; preds = %76
  %95 = load i8, i8* %4, align 1
  %96 = load i8*, i8** %3, align 8
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 1
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8 %95, i8* %99, align 1
  %100 = load i8*, i8** %3, align 8
  %101 = load i64, i64* %6, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8 %95, i8* %102, align 1
  %103 = load i64, i64* %6, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %6, align 8
  br label %105

105:                                              ; preds = %94, %80
  br label %106

106:                                              ; preds = %105, %68
  br label %107

107:                                              ; preds = %106, %53
  br label %108

108:                                              ; preds = %107, %52
  %109 = load i64, i64* %6, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %6, align 8
  br label %13

111:                                              ; preds = %9, %13
  ret void
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32 @Move(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
