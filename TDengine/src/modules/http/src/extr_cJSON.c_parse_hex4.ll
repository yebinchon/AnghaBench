; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_parse_hex4.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_cJSON.c_parse_hex4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @parse_hex4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hex4(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %90, %1
  %7 = load i64, i64* %5, align 8
  %8 = icmp ult i64 %7, 4
  br i1 %8, label %9, label %93

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load i64, i64* %5, align 8
  %12 = getelementptr inbounds i8, i8* %10, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp sge i32 %14, 48
  br i1 %15, label %16, label %32

16:                                               ; preds = %9
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp sle i32 %21, 57
  br i1 %22, label %23, label %32

23:                                               ; preds = %16
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = sub i32 %28, 48
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %83

32:                                               ; preds = %16, %9
  %33 = load i8*, i8** %3, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 65
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load i8*, i8** %3, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp sle i32 %44, 70
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load i8*, i8** %3, align 8
  %48 = load i64, i64* %5, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = add i32 10, %51
  %53 = sub i32 %52, 65
  %54 = load i32, i32* %4, align 4
  %55 = add i32 %54, %53
  store i32 %55, i32* %4, align 4
  br label %82

56:                                               ; preds = %39, %32
  %57 = load i8*, i8** %3, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp sge i32 %61, 97
  br i1 %62, label %63, label %80

63:                                               ; preds = %56
  %64 = load i8*, i8** %3, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp sle i32 %68, 102
  br i1 %69, label %70, label %80

70:                                               ; preds = %63
  %71 = load i8*, i8** %3, align 8
  %72 = load i64, i64* %5, align 8
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = add i32 10, %75
  %77 = sub i32 %76, 97
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %81

80:                                               ; preds = %63, %56
  store i32 0, i32* %2, align 4
  br label %95

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81, %46
  br label %83

83:                                               ; preds = %82, %23
  %84 = load i64, i64* %5, align 8
  %85 = icmp ult i64 %84, 3
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %4, align 4
  %88 = shl i32 %87, 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %83
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %5, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %5, align 8
  br label %6

93:                                               ; preds = %6
  %94 = load i32, i32* %4, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %93, %80
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
