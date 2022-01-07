; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_StrToBin.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_StrToBin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"0x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @StrToBin(i8* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [3 x i8], align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca [64 x i8], align 16
  store i8* %0, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32* null, i32** %2, align 8
  br label %101

14:                                               ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @StrLen(i8* %15)
  store i64 %16, i64* %5, align 8
  %17 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 0, i8* %17, align 1
  %18 = call i32* (...) @NewBuf()
  store i32* %18, i32** %4, align 8
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %96, %14
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %99

23:                                               ; preds = %19
  %24 = load i8*, i8** %3, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i8, i8* %26, align 1
  store i8 %27, i8* %8, align 1
  %28 = load i8, i8* %8, align 1
  %29 = call signext i8 @ToUpper(i8 signext %28)
  store i8 %29, i8* %8, align 1
  %30 = load i8, i8* %8, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp sle i32 48, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i8, i8* %8, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp sle i32 %35, 57
  br i1 %36, label %45, label %37

37:                                               ; preds = %33, %23
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp sle i32 65, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %37
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sle i32 %43, 70
  br i1 %44, label %45, label %76

45:                                               ; preds = %41, %33
  %46 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i8, i8* %8, align 1
  %52 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %51, i8* %52, align 1
  %53 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 0, i8* %53, align 1
  br label %75

54:                                               ; preds = %45
  %55 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load i8, i8* %8, align 1
  %61 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %60, i8* %61, align 1
  %62 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 0, i8* %62, align 1
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %64 = call i32 @StrCpy(i8* %63, i32 64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %65 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %66 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %67 = call i32 @StrCat(i8* %65, i32 64, i8* %66)
  %68 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %69 = call i64 @strtoul(i8* %68, i32* null, i32 0)
  store i64 %69, i64* %9, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @WriteBuf(i32* %70, i64* %9, i32 1)
  %72 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %73 = call i32 @Zero(i8* %72, i32 3)
  br label %74

74:                                               ; preds = %59, %54
  br label %75

75:                                               ; preds = %74, %50
  br label %95

76:                                               ; preds = %41, %37
  %77 = load i8, i8* %8, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = load i8, i8* %8, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 44
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i8, i8* %8, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 45
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i8, i8* %8, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 58
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %84, %80, %76
  br label %94

93:                                               ; preds = %88
  br label %99

94:                                               ; preds = %92
  br label %95

95:                                               ; preds = %94, %75
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* %6, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %6, align 8
  br label %19

99:                                               ; preds = %93, %19
  %100 = load i32*, i32** %4, align 8
  store i32* %100, i32** %2, align 8
  br label %101

101:                                              ; preds = %99, %13
  %102 = load i32*, i32** %2, align 8
  ret i32* %102
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i32* @NewBuf(...) #1

declare dso_local signext i8 @ToUpper(i8 signext) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @StrCat(i8*, i32, i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @WriteBuf(i32*, i64*, i32) #1

declare dso_local i32 @Zero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
