; ModuleID = '/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_menu.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/unity/extr_unity_runner.c_unity_run_menu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [38 x i8] c"Press ENTER to see the list of tests.\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Enter next test, or 'enter' to see menu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unity_run_menu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = call i32 (...) @UNITY_PRINT_EOL()
  %7 = call i32 (...) @UNITY_PRINT_EOL()
  %8 = call i32 @UnityPrint(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 (...) @UNITY_PRINT_EOL()
  %10 = call i32 (...) @get_test_count()
  store i32 %10, i32* %1, align 4
  br label %11

11:                                               ; preds = %0, %33, %101
  %12 = bitcast [256 x i8]* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 256, i1 false)
  br label %13

13:                                               ; preds = %27, %11
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %15 = call i64 @strlen(i8* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %13
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %19 = call i32 @unity_gets(i8* %18, i32 256)
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %21 = call i32 @trim_trailing_space(i8* %20)
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 (...) @print_test_menu()
  br label %27

27:                                               ; preds = %25, %17
  br label %13

28:                                               ; preds = %13
  %29 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %30 = load i8, i8* %29, align 16
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 45
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (...) @UNITY_END()
  br label %11

35:                                               ; preds = %28
  %36 = call i32 (...) @UNITY_BEGIN()
  store i64 0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  %37 = load i64, i64* %3, align 8
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 33
  br i1 %41, label %42, label %45

42:                                               ; preds = %35
  store i32 1, i32* %4, align 4
  %43 = load i64, i64* %3, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %3, align 8
  br label %45

45:                                               ; preds = %42, %35
  %46 = load i64, i64* %3, align 8
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 42
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = call i32 (...) @unity_run_all_tests()
  br label %101

53:                                               ; preds = %45
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 91
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @unity_run_tests_by_tag(i8* %62, i32 %63)
  br label %100

65:                                               ; preds = %53
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 34
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %73 = call i8* @strrchr(i8* %72, i8 signext 34)
  store i8* %73, i8** %5, align 8
  %74 = load i8*, i8** %5, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %75
  %77 = icmp ugt i8* %74, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %71
  %79 = load i8*, i8** %5, align 8
  store i8 0, i8* %79, align 1
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %81 = load i64, i64* %3, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  %84 = call i32 @unity_run_test_by_name(i8* %83)
  br label %85

85:                                               ; preds = %78, %71
  br label %99

86:                                               ; preds = %65
  %87 = load i64, i64* %3, align 8
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = call i64 @isdigit(i8 zeroext %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %94 = load i64, i64* %3, align 8
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  %96 = load i32, i32* %1, align 4
  %97 = call i32 @unity_run_single_test_by_index_parse(i8* %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %86
  br label %99

99:                                               ; preds = %98, %85
  br label %100

100:                                              ; preds = %99, %59
  br label %101

101:                                              ; preds = %100, %51
  %102 = call i32 (...) @UNITY_END()
  %103 = call i32 @UnityPrint(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %104 = call i32 (...) @UNITY_PRINT_EOL()
  %105 = call i32 (...) @UNITY_OUTPUT_FLUSH()
  br label %11
}

declare dso_local i32 @UNITY_PRINT_EOL(...) #1

declare dso_local i32 @UnityPrint(i8*) #1

declare dso_local i32 @get_test_count(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @unity_gets(i8*, i32) #1

declare dso_local i32 @trim_trailing_space(i8*) #1

declare dso_local i32 @print_test_menu(...) #1

declare dso_local i32 @UNITY_END(...) #1

declare dso_local i32 @UNITY_BEGIN(...) #1

declare dso_local i32 @unity_run_all_tests(...) #1

declare dso_local i32 @unity_run_tests_by_tag(i8*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @unity_run_test_by_name(i8*) #1

declare dso_local i64 @isdigit(i8 zeroext) #1

declare dso_local i32 @unity_run_single_test_by_index_parse(i8*, i32) #1

declare dso_local i32 @UNITY_OUTPUT_FLUSH(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
