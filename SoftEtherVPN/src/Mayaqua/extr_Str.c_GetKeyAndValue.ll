; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_GetKeyAndValue.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Str.c_GetKeyAndValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@default_spliter = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetKeyAndValue(i8* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* %5, i8** %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i32 0, i32* %20, align 4
  %22 = load i8*, i8** %12, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i8*, i8** @default_spliter, align 8
  store i8* %25, i8** %12, align 8
  br label %26

26:                                               ; preds = %24, %6
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @StrLen(i8* %27)
  store i64 %28, i64* %17, align 8
  %29 = load i64, i64* %17, align 8
  %30 = add i64 %29, 1
  %31 = call i8* @ZeroMalloc(i64 %30)
  store i8* %31, i8** %18, align 8
  %32 = load i64, i64* %17, align 8
  %33 = add i64 %32, 1
  %34 = call i8* @ZeroMalloc(i64 %33)
  store i8* %34, i8** %19, align 8
  store i64 0, i64* %16, align 8
  br label %35

35:                                               ; preds = %93, %26
  %36 = load i64, i64* %16, align 8
  %37 = load i64, i64* %17, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %96

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  store i8 %43, i8* %21, align 1
  %44 = load i64, i64* %13, align 8
  switch i64 %44, label %92 [
    i64 0, label %45
    i64 1, label %58
    i64 2, label %72
    i64 3, label %85
  ]

45:                                               ; preds = %39
  %46 = load i8, i8* %21, align 1
  %47 = load i8*, i8** %12, align 8
  %48 = call i32 @IsSplitChar(i8 signext %46, i8* %47)
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  store i64 1, i64* %13, align 8
  %51 = load i8, i8* %21, align 1
  %52 = load i8*, i8** %18, align 8
  %53 = load i64, i64* %14, align 8
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8 %51, i8* %54, align 1
  %55 = load i64, i64* %14, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %14, align 8
  br label %57

57:                                               ; preds = %50, %45
  br label %92

58:                                               ; preds = %39
  %59 = load i8, i8* %21, align 1
  %60 = load i8*, i8** %12, align 8
  %61 = call i32 @IsSplitChar(i8 signext %59, i8* %60)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load i8, i8* %21, align 1
  %65 = load i8*, i8** %18, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 %64, i8* %67, align 1
  %68 = load i64, i64* %14, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %14, align 8
  br label %71

70:                                               ; preds = %58
  store i64 2, i64* %13, align 8
  br label %71

71:                                               ; preds = %70, %63
  br label %92

72:                                               ; preds = %39
  %73 = load i8, i8* %21, align 1
  %74 = load i8*, i8** %12, align 8
  %75 = call i32 @IsSplitChar(i8 signext %73, i8* %74)
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  store i64 3, i64* %13, align 8
  %78 = load i8, i8* %21, align 1
  %79 = load i8*, i8** %19, align 8
  %80 = load i64, i64* %15, align 8
  %81 = getelementptr inbounds i8, i8* %79, i64 %80
  store i8 %78, i8* %81, align 1
  %82 = load i64, i64* %15, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %15, align 8
  br label %84

84:                                               ; preds = %77, %72
  br label %92

85:                                               ; preds = %39
  %86 = load i8, i8* %21, align 1
  %87 = load i8*, i8** %19, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8 %86, i8* %89, align 1
  %90 = load i64, i64* %15, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %15, align 8
  br label %92

92:                                               ; preds = %39, %85, %84, %71, %57
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* %16, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %16, align 8
  br label %35

96:                                               ; preds = %35
  %97 = load i64, i64* %13, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  store i32 1, i32* %20, align 4
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i8*, i8** %18, align 8
  %103 = call i32 @StrCpy(i8* %100, i64 %101, i8* %102)
  %104 = load i8*, i8** %10, align 8
  %105 = load i64, i64* %11, align 8
  %106 = load i8*, i8** %19, align 8
  %107 = call i32 @StrCpy(i8* %104, i64 %105, i8* %106)
  br label %108

108:                                              ; preds = %99, %96
  %109 = load i8*, i8** %18, align 8
  %110 = call i32 @Free(i8* %109)
  %111 = load i8*, i8** %19, align 8
  %112 = call i32 @Free(i8* %111)
  %113 = load i32, i32* %20, align 4
  ret i32 %113
}

declare dso_local i64 @StrLen(i8*) #1

declare dso_local i8* @ZeroMalloc(i64) #1

declare dso_local i32 @IsSplitChar(i8 signext, i8*) #1

declare dso_local i32 @StrCpy(i8*, i64, i8*) #1

declare dso_local i32 @Free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
