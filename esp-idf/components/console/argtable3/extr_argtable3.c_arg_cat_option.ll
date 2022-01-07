; ModuleID = '/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_cat_option.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/console/argtable3/extr_argtable3.c_arg_cat_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i8*, i8*, i8*, i32)* @arg_cat_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arg_cat_option(i8* %0, i64 %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8], align 1
  %14 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %6
  %18 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  store i8 45, i8* %18, align 1
  %19 = load i8*, i8** %9, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 2
  store i8 0, i8* %23, align 1
  %24 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %25 = call i32 @arg_cat(i8** %7, i8* %24, i64* %8)
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %17
  %29 = call i32 @arg_cat(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i64* %8)
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = call i32 @arg_cat(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64* %8)
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @arg_cat(i8** %7, i8* %34, i64* %8)
  %36 = call i32 @arg_cat(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64* %8)
  br label %40

37:                                               ; preds = %28
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @arg_cat(i8** %7, i8* %38, i64* %8)
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %17
  br label %94

42:                                               ; preds = %6
  %43 = load i8*, i8** %10, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %77

45:                                               ; preds = %42
  %46 = call i32 @arg_cat(i8** %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i64* %8)
  %47 = load i8*, i8** %10, align 8
  %48 = call i64 @strcspn(i8* %47, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  store i64 %48, i64* %14, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i64, i64* %14, align 8
  br label %58

56:                                               ; preds = %45
  %57 = load i64, i64* %8, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i64 [ %55, %54 ], [ %57, %56 ]
  %60 = call i32 @strncat(i8* %49, i8* %50, i64 %59)
  %61 = load i8*, i8** %11, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %76

63:                                               ; preds = %58
  %64 = call i32 @arg_cat(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64* %8)
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = call i32 @arg_cat(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64* %8)
  %69 = load i8*, i8** %11, align 8
  %70 = call i32 @arg_cat(i8** %7, i8* %69, i64* %8)
  %71 = call i32 @arg_cat(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64* %8)
  br label %75

72:                                               ; preds = %63
  %73 = load i8*, i8** %11, align 8
  %74 = call i32 @arg_cat(i8** %7, i8* %73, i64* %8)
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %58
  br label %93

77:                                               ; preds = %42
  %78 = load i8*, i8** %11, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %80
  %84 = call i32 @arg_cat(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i64* %8)
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @arg_cat(i8** %7, i8* %85, i64* %8)
  %87 = call i32 @arg_cat(i8** %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i64* %8)
  br label %91

88:                                               ; preds = %80
  %89 = load i8*, i8** %11, align 8
  %90 = call i32 @arg_cat(i8** %7, i8* %89, i64* %8)
  br label %91

91:                                               ; preds = %88, %83
  br label %92

92:                                               ; preds = %91, %77
  br label %93

93:                                               ; preds = %92, %76
  br label %94

94:                                               ; preds = %93, %41
  ret void
}

declare dso_local i32 @arg_cat(i8**, i8*, i64*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncat(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
