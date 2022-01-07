; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_Sys_ConcatenateFileLists.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/qcommon/extr_files.c_Sys_ConcatenateFileLists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8**, i8**, i8**)* @Sys_ConcatenateFileLists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @Sys_ConcatenateFileLists(i8** %0, i8** %1, i8** %2) #0 {
  %4 = alloca i8**, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store i8** %0, i8*** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i8** %2, i8*** %6, align 8
  store i32 0, i32* %7, align 4
  store i8** null, i8*** %8, align 8
  %11 = load i8**, i8*** %4, align 8
  %12 = call i64 @Sys_CountFileList(i8** %11)
  %13 = load i32, i32* %7, align 4
  %14 = sext i32 %13 to i64
  %15 = add nsw i64 %14, %12
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %7, align 4
  %17 = load i8**, i8*** %5, align 8
  %18 = call i64 @Sys_CountFileList(i8** %17)
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %7, align 4
  %23 = load i8**, i8*** %6, align 8
  %24 = call i64 @Sys_CountFileList(i8** %23)
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 8
  %33 = trunc i64 %32 to i32
  %34 = call i8** @Z_Malloc(i32 %33)
  store i8** %34, i8*** %8, align 8
  store i8** %34, i8*** %9, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = icmp ne i8** %35, null
  br i1 %36, label %37, label %53

37:                                               ; preds = %3
  %38 = load i8**, i8*** %4, align 8
  store i8** %38, i8*** %10, align 8
  br label %39

39:                                               ; preds = %47, %37
  %40 = load i8**, i8*** %10, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load i8**, i8*** %10, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load i8**, i8*** %9, align 8
  store i8* %45, i8** %46, align 8
  br label %47

47:                                               ; preds = %43
  %48 = load i8**, i8*** %10, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %10, align 8
  %50 = load i8**, i8*** %9, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i32 1
  store i8** %51, i8*** %9, align 8
  br label %39

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52, %3
  %54 = load i8**, i8*** %5, align 8
  %55 = icmp ne i8** %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load i8**, i8*** %5, align 8
  store i8** %57, i8*** %10, align 8
  br label %58

58:                                               ; preds = %66, %56
  %59 = load i8**, i8*** %10, align 8
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = load i8**, i8*** %10, align 8
  %64 = load i8*, i8** %63, align 8
  %65 = load i8**, i8*** %9, align 8
  store i8* %64, i8** %65, align 8
  br label %66

66:                                               ; preds = %62
  %67 = load i8**, i8*** %10, align 8
  %68 = getelementptr inbounds i8*, i8** %67, i32 1
  store i8** %68, i8*** %10, align 8
  %69 = load i8**, i8*** %9, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i32 1
  store i8** %70, i8*** %9, align 8
  br label %58

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %53
  %73 = load i8**, i8*** %6, align 8
  %74 = icmp ne i8** %73, null
  br i1 %74, label %75, label %91

75:                                               ; preds = %72
  %76 = load i8**, i8*** %6, align 8
  store i8** %76, i8*** %10, align 8
  br label %77

77:                                               ; preds = %85, %75
  %78 = load i8**, i8*** %10, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = icmp ne i8* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i8**, i8*** %10, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i8**, i8*** %9, align 8
  store i8* %83, i8** %84, align 8
  br label %85

85:                                               ; preds = %81
  %86 = load i8**, i8*** %10, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i32 1
  store i8** %87, i8*** %10, align 8
  %88 = load i8**, i8*** %9, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i32 1
  store i8** %89, i8*** %9, align 8
  br label %77

90:                                               ; preds = %77
  br label %91

91:                                               ; preds = %90, %72
  %92 = load i8**, i8*** %9, align 8
  store i8* null, i8** %92, align 8
  %93 = load i8**, i8*** %4, align 8
  %94 = icmp ne i8** %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load i8**, i8*** %4, align 8
  %97 = call i32 @Z_Free(i8** %96)
  br label %98

98:                                               ; preds = %95, %91
  %99 = load i8**, i8*** %5, align 8
  %100 = icmp ne i8** %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i8**, i8*** %5, align 8
  %103 = call i32 @Z_Free(i8** %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i8**, i8*** %6, align 8
  %106 = icmp ne i8** %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i8**, i8*** %6, align 8
  %109 = call i32 @Z_Free(i8** %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i8**, i8*** %8, align 8
  ret i8** %111
}

declare dso_local i64 @Sys_CountFileList(i8**) #1

declare dso_local i8** @Z_Malloc(i32) #1

declare dso_local i32 @Z_Free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
