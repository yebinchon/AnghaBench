; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_utl.c_utl_isdialstr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/sys/extr_utl.c_utl_isdialstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utl_isdialstr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %99, %1
  %6 = load i8*, i8** %3, align 8
  %7 = load i64, i64* %4, align 8
  %8 = getelementptr inbounds i8, i8* %6, i64 %7
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %102

12:                                               ; preds = %5
  %13 = load i8*, i8** %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp sge i32 %17, 48
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load i8*, i8** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds i8, i8* %20, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp sle i32 %24, 57
  br i1 %25, label %98, label %26

26:                                               ; preds = %19, %12
  %27 = load i8*, i8** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 42
  br i1 %32, label %98, label %33

33:                                               ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = load i64, i64* %4, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 43
  br i1 %39, label %98, label %40

40:                                               ; preds = %33
  %41 = load i8*, i8** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 35
  br i1 %46, label %98, label %47

47:                                               ; preds = %40
  %48 = load i8*, i8** %3, align 8
  %49 = load i64, i64* %4, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 59
  br i1 %53, label %98, label %54

54:                                               ; preds = %47
  %55 = load i8*, i8** %3, align 8
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp sge i32 %59, 65
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load i8*, i8** %3, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp sle i32 %66, 67
  br i1 %67, label %98, label %68

68:                                               ; preds = %61, %54
  %69 = load i8*, i8** %3, align 8
  %70 = load i64, i64* %4, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp eq i32 %73, 112
  br i1 %74, label %98, label %75

75:                                               ; preds = %68
  %76 = load i8*, i8** %3, align 8
  %77 = load i64, i64* %4, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %80, 80
  br i1 %81, label %98, label %82

82:                                               ; preds = %75
  %83 = load i8*, i8** %3, align 8
  %84 = load i64, i64* %4, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 119
  br i1 %88, label %98, label %89

89:                                               ; preds = %82
  %90 = load i8*, i8** %3, align 8
  %91 = load i64, i64* %4, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 87
  br i1 %95, label %98, label %96

96:                                               ; preds = %89
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %2, align 4
  br label %104

98:                                               ; preds = %89, %82, %75, %68, %61, %47, %40, %33, %26, %19
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %4, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %4, align 8
  br label %5

102:                                              ; preds = %5
  %103 = load i32, i32* @TRUE, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %96
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
