; ModuleID = '/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp866.h_cp866_wctomb.c'
source_filename = "/home/carl/AnghaBench/TDengine/deps/iconv/extr_cp866.h_cp866_wctomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cp866_page00 = common dso_local global i8* null, align 8
@cp866_page04 = common dso_local global i8* null, align 8
@cp866_page22 = common dso_local global i8* null, align 8
@cp866_page25 = common dso_local global i8* null, align 8
@RET_ILUNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32)* @cp866_wctomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp866_wctomb(i32 %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8 0, i8* %10, align 1
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 128
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = trunc i32 %14 to i8
  %16 = load i8*, i8** %7, align 8
  store i8 %15, i8* %16, align 1
  store i32 1, i32* %5, align 4
  br label %87

17:                                               ; preds = %4
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 160
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 184
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i8*, i8** @cp866_page00, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 160
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %24, i64 %27
  %29 = load i8, i8* %28, align 1
  store i8 %29, i8* %10, align 1
  br label %77

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %8, align 4
  %32 = icmp sge i32 %31, 1024
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 1120
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load i8*, i8** @cp866_page04, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1024
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8, i8* %41, align 1
  store i8 %42, i8* %10, align 1
  br label %76

43:                                               ; preds = %33, %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 8470
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i8 -4, i8* %10, align 1
  br label %75

47:                                               ; preds = %43
  %48 = load i32, i32* %8, align 4
  %49 = icmp sge i32 %48, 8728
  br i1 %49, label %50, label %60

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 8736
  br i1 %52, label %53, label %60

53:                                               ; preds = %50
  %54 = load i8*, i8** @cp866_page22, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %55, 8728
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %54, i64 %57
  %59 = load i8, i8* %58, align 1
  store i8 %59, i8* %10, align 1
  br label %74

60:                                               ; preds = %50, %47
  %61 = load i32, i32* %8, align 4
  %62 = icmp sge i32 %61, 9472
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 9640
  br i1 %65, label %66, label %73

66:                                               ; preds = %63
  %67 = load i8*, i8** @cp866_page25, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sub nsw i32 %68, 9472
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %67, i64 %70
  %72 = load i8, i8* %71, align 1
  store i8 %72, i8* %10, align 1
  br label %73

73:                                               ; preds = %66, %63, %60
  br label %74

74:                                               ; preds = %73, %53
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75, %36
  br label %77

77:                                               ; preds = %76, %23
  br label %78

78:                                               ; preds = %77
  %79 = load i8, i8* %10, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load i8, i8* %10, align 1
  %84 = load i8*, i8** %7, align 8
  store i8 %83, i8* %84, align 1
  store i32 1, i32* %5, align 4
  br label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @RET_ILUNI, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %82, %13
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
