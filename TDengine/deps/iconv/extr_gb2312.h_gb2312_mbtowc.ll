; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb2312.h_gb2312_mbtowc.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_gb2312.h_gb2312_mbtowc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gb2312_2uni_page21 = common dso_local global i16* null, align 8
@gb2312_2uni_page30 = common dso_local global i16* null, align 8
@RET_ILSEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8*, i32)* @gb2312_mbtowc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb2312_mbtowc(i32 %0, i64* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i8*, i8** %8, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  store i8 %16, i8* %10, align 1
  %17 = load i8, i8* %10, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp sge i32 %18, 33
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i8, i8* %10, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp sle i32 %22, 41
  br i1 %23, label %32, label %24

24:                                               ; preds = %20, %4
  %25 = load i8, i8* %10, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp sge i32 %26, 48
  br i1 %27, label %28, label %91

28:                                               ; preds = %24
  %29 = load i8, i8* %10, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp sle i32 %30, 119
  br i1 %31, label %32, label %91

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %9, align 4
  %34 = icmp sge i32 %33, 2
  br i1 %34, label %35, label %89

35:                                               ; preds = %32
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %11, align 1
  %39 = load i8, i8* %11, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp sge i32 %40, 33
  br i1 %41, label %42, label %87

42:                                               ; preds = %35
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp slt i32 %44, 127
  br i1 %45, label %46, label %87

46:                                               ; preds = %42
  %47 = load i8, i8* %10, align 1
  %48 = zext i8 %47 to i32
  %49 = sub nsw i32 %48, 33
  %50 = mul nsw i32 94, %49
  %51 = load i8, i8* %11, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 %52, 33
  %54 = add nsw i32 %50, %53
  store i32 %54, i32* %12, align 4
  store i16 -3, i16* %13, align 2
  %55 = load i32, i32* %12, align 4
  %56 = icmp ult i32 %55, 1410
  br i1 %56, label %57, label %67

57:                                               ; preds = %46
  %58 = load i32, i32* %12, align 4
  %59 = icmp ult i32 %58, 831
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i16*, i16** @gb2312_2uni_page21, align 8
  %62 = load i32, i32* %12, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i16, i16* %61, i64 %63
  %65 = load i16, i16* %64, align 2
  store i16 %65, i16* %13, align 2
  br label %66

66:                                               ; preds = %60, %57
  br label %78

67:                                               ; preds = %46
  %68 = load i32, i32* %12, align 4
  %69 = icmp ult i32 %68, 8178
  br i1 %69, label %70, label %77

70:                                               ; preds = %67
  %71 = load i16*, i16** @gb2312_2uni_page30, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sub i32 %72, 1410
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %71, i64 %74
  %76 = load i16, i16* %75, align 2
  store i16 %76, i16* %13, align 2
  br label %77

77:                                               ; preds = %70, %67
  br label %78

78:                                               ; preds = %77, %66
  %79 = load i16, i16* %13, align 2
  %80 = zext i16 %79 to i32
  %81 = icmp ne i32 %80, 65533
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i16, i16* %13, align 2
  %84 = zext i16 %83 to i64
  %85 = load i64*, i64** %7, align 8
  store i64 %84, i64* %85, align 8
  store i32 2, i32* %5, align 4
  br label %93

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86, %42, %35
  %88 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %88, i32* %5, align 4
  br label %93

89:                                               ; preds = %32
  %90 = call i32 @RET_TOOFEW(i32 0)
  store i32 %90, i32* %5, align 4
  br label %93

91:                                               ; preds = %28, %24
  %92 = load i32, i32* @RET_ILSEQ, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %89, %87, %82
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @RET_TOOFEW(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
