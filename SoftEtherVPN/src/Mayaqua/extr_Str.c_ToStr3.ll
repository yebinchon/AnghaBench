; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ToStr3.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_ToStr3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ToStr3(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %104

15:                                               ; preds = %3
  %16 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ToStr64(i8* %16, i32 %17)
  store i32 0, i32* %11, align 4
  %19 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %20 = call i32 @StrLen(i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %35, %15
  %24 = load i32, i32* %9, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = sext i32 %31 to i64
  %34 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %33
  store i8 %30, i8* %34, align 1
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %9, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %41
  store i8 0, i8* %42, align 1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %68, %38
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = srem i32 %51, 3
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %57
  store i8 44, i8* %58, align 1
  br label %59

59:                                               ; preds = %54, %50, %47
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %66
  store i8 %63, i8* %67, align 1
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %43

71:                                               ; preds = %43
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %74
  store i8 0, i8* %75, align 1
  store i32 0, i32* %11, align 4
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %77 = call i32 @StrLen(i8* %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %92, %71
  %81 = load i32, i32* %9, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %90
  store i8 %87, i8* %91, align 1
  br label %92

92:                                               ; preds = %83
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %9, align 4
  br label %80

95:                                               ; preds = %80
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %11, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 %98
  store i8 0, i8* %99, align 1
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %5, align 4
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %103 = call i32 @StrCpy(i8* %100, i32 %101, i8* %102)
  br label %104

104:                                              ; preds = %95, %14
  ret void
}

declare dso_local i32 @ToStr64(i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
