; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_InitCommandLineStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_InitCommandLineStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@exename = common dso_local global i32 0, align 4
@exename_w = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@INFINITE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitCommandLineStr(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8** %1, i8*** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = icmp sge i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i8**, i8*** %4, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @CopyStr(i8* %16)
  store i32 %17, i32* @exename, align 4
  %18 = load i32, i32* @exename, align 4
  %19 = call i32 @CopyStrToUni(i32 %18)
  store i32 %19, i32* @exename_w, align 4
  br label %20

20:                                               ; preds = %13, %2
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 2
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8**, i8*** %4, align 8
  %25 = icmp eq i8** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %20
  %27 = call i32 @SetCommandLineStr(i8* null)
  br label %114

28:                                               ; preds = %23
  store i32 1, i32* %6, align 4
  store i32 1, i32* %5, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i8**, i8*** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8*, i8** %34, i64 %36
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @StrLen(i8* %38)
  %40 = mul nsw i32 %39, 2
  %41 = add nsw i32 %40, 32
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %33
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %29

47:                                               ; preds = %29
  %48 = load i32, i32* %6, align 4
  %49 = call i8* @ZeroMalloc(i32 %48)
  store i8* %49, i8** %7, align 8
  store i32 1, i32* %5, align 4
  br label %50

50:                                               ; preds = %104, %47
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %50
  %55 = load i8**, i8*** %4, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @StrLen(i8* %59)
  %61 = mul nsw i32 %60, 2
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i8* @ZeroMalloc(i32 %62)
  store i8* %63, i8** %9, align 8
  %64 = load i8**, i8*** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8*, i8** %64, i64 %66
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @SearchStrEx(i8* %68, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0, i32 1)
  %70 = load i64, i64* @INFINITE, align 8
  %71 = icmp ne i64 %69, %70
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load i8*, i8** %9, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i8**, i8*** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @ReplaceStrEx(i8* %73, i32 %74, i8* %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %54
  %84 = load i8*, i8** %7, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @StrCat(i8* %84, i32 %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %87

87:                                               ; preds = %83, %54
  %88 = load i8*, i8** %7, align 8
  %89 = load i32, i32* %6, align 4
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @StrCat(i8* %88, i32 %89, i8* %90)
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %87
  %95 = load i8*, i8** %7, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @StrCat(i8* %95, i32 %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %94, %87
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @StrCat(i8* %99, i32 %100, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @Free(i8* %102)
  br label %104

104:                                              ; preds = %98
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %50

107:                                              ; preds = %50
  %108 = load i8*, i8** %7, align 8
  %109 = call i32 @Trim(i8* %108)
  %110 = load i8*, i8** %7, align 8
  %111 = call i32 @SetCommandLineStr(i8* %110)
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @Free(i8* %112)
  br label %114

114:                                              ; preds = %107, %26
  ret void
}

declare dso_local i32 @CopyStr(i8*) #1

declare dso_local i32 @CopyStrToUni(i32) #1

declare dso_local i32 @SetCommandLineStr(i8*) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i64 @SearchStrEx(i8*, i8*, i32, i32) #1

declare dso_local i32 @ReplaceStrEx(i8*, i32, i8*, i8*, i8*, i32) #1

declare dso_local i32 @StrCat(i8*, i32, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @Trim(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
