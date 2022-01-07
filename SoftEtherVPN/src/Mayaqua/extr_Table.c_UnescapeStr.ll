; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_UnescapeStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Table.c_UnescapeStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @UnescapeStr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %86

10:                                               ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = call i64 @StrLen(i8* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = add i64 %13, 1
  %15 = call i8* @Malloc(i64 %14)
  store i8* %15, i8** %6, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %3, align 8
  br label %16

16:                                               ; preds = %72, %10
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* %4, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %16
  %21 = load i8*, i8** %2, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 92
  br i1 %26, label %27, label %62

27:                                               ; preds = %20
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %61 [
    i32 0, label %35
    i32 92, label %36
    i32 32, label %41
    i32 110, label %46
    i32 78, label %46
    i32 114, label %51
    i32 82, label %51
    i32 116, label %56
    i32 84, label %56
  ]

35:                                               ; preds = %27
  br label %76

36:                                               ; preds = %27
  %37 = load i8*, i8** %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %5, align 8
  %40 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8 92, i8* %40, align 1
  br label %61

41:                                               ; preds = %27
  %42 = load i8*, i8** %6, align 8
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  %45 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8 32, i8* %45, align 1
  br label %61

46:                                               ; preds = %27, %27
  %47 = load i8*, i8** %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %5, align 8
  %50 = getelementptr inbounds i8, i8* %47, i64 %48
  store i8 10, i8* %50, align 1
  br label %61

51:                                               ; preds = %27, %27
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  %55 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 13, i8* %55, align 1
  br label %61

56:                                               ; preds = %27, %27
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %5, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %5, align 8
  %60 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8 9, i8* %60, align 1
  br label %61

61:                                               ; preds = %27, %56, %51, %46, %41, %36
  br label %71

62:                                               ; preds = %20
  %63 = load i8*, i8** %2, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds i8, i8* %63, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %5, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %5, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 %66, i8* %70, align 1
  br label %71

71:                                               ; preds = %62, %61
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %3, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %16

75:                                               ; preds = %16
  br label %76

76:                                               ; preds = %75, %35
  %77 = load i8*, i8** %6, align 8
  %78 = load i64, i64* %5, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %5, align 8
  %80 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8 0, i8* %80, align 1
  %81 = load i8*, i8** %2, align 8
  %82 = load i8*, i8** %6, align 8
  %83 = call i32 @StrCpy(i8* %81, i32 0, i8* %82)
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @Free(i8* %84)
  br label %86

86:                                               ; preds = %76, %9
  ret void
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i8* @Malloc(i64) #1

declare dso_local i32 @StrCpy(i8*, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
