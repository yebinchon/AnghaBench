; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_inet_pton.c_inet_pton4.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_inet_pton.c_inet_pton4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@inet_pton4.digits = internal constant [11 x i8] c"0123456789\00", align 1
@INADDRSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @inet_pton4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inet_pton4(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i32, i32* @INADDRSZ, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %9, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i8* %18, i8** %11, align 8
  %19 = load i8*, i8** %11, align 8
  store i8 0, i8* %19, align 1
  br label %20

20:                                               ; preds = %81, %2
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %4, align 8
  %23 = load i8, i8* %21, align 1
  %24 = sext i8 %23 to i32
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %82

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = call i8* @strchr(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @inet_pton4.digits, i64 0, i64 0), i32 %27)
  store i8* %28, i8** %12, align 8
  %29 = load i8*, i8** %12, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %66

31:                                               ; preds = %26
  %32 = load i8*, i8** %11, align 8
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = mul nsw i32 %34, 10
  %36 = load i8*, i8** %12, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = sub i64 %37, ptrtoint ([11 x i8]* @inet_pton4.digits to i64)
  %39 = trunc i64 %38 to i32
  %40 = add i32 %35, %39
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %31
  %44 = load i8*, i8** %11, align 8
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

49:                                               ; preds = %43, %31
  %50 = load i32, i32* %13, align 4
  %51 = icmp ugt i32 %50, 255
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

53:                                               ; preds = %49
  %54 = load i32, i32* %13, align 4
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %11, align 8
  store i8 %55, i8* %56, align 1
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %7, align 4
  %62 = icmp sgt i32 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

64:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %53
  br label %81

66:                                               ; preds = %26
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 46
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %7, align 4
  %74 = icmp eq i32 %73, 4
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

76:                                               ; preds = %72
  %77 = load i8*, i8** %11, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %11, align 8
  store i8 0, i8* %78, align 1
  store i32 0, i32* %6, align 4
  br label %80

79:                                               ; preds = %69, %66
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

80:                                               ; preds = %76
  br label %81

81:                                               ; preds = %80, %65
  br label %20

82:                                               ; preds = %20
  %83 = load i32, i32* %7, align 4
  %84 = icmp slt i32 %83, 4
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

86:                                               ; preds = %82
  %87 = load i8*, i8** %5, align 8
  %88 = load i32, i32* @INADDRSZ, align 4
  %89 = call i32 @memcpy(i8* %87, i8* %18, i32 %88)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %85, %79, %75, %63, %52, %48
  %91 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %91)
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i8* @strchr(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
