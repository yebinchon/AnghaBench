; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operhlp.c_add_file_name_to_url.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operhlp.c_add_file_name_to_url.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @add_file_name_to_url(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i8* @strstr(i8* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %13, i8** %6, align 8
  %14 = call i32* (...) @curl_easy_init()
  store i32* %14, i32** %7, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %97

18:                                               ; preds = %2
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  store i8* %23, i8** %6, align 8
  br label %26

24:                                               ; preds = %18
  %25 = load i8*, i8** %4, align 8
  store i8* %25, i8** %6, align 8
  br label %26

26:                                               ; preds = %24, %21
  %27 = load i8*, i8** %6, align 8
  %28 = call i8* @strrchr(i8* %27, i8 signext 47)
  store i8* %28, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %33, i8** %6, align 8
  %34 = call i32 @strlen(i8* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %93, label %36

36:                                               ; preds = %31, %26
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @strrchr(i8* %37, i8 signext 47)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i8*, i8** %8, align 8
  br label %45

43:                                               ; preds = %36
  %44 = load i8*, i8** %5, align 8
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i8* [ %42, %41 ], [ %44, %43 ]
  %47 = call i8* @strrchr(i8* %46, i8 signext 92)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  store i8* %52, i8** %8, align 8
  br label %62

53:                                               ; preds = %45
  %54 = load i8*, i8** %8, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %8, align 8
  br label %61

59:                                               ; preds = %53
  %60 = load i8*, i8** %5, align 8
  store i8* %60, i8** %8, align 8
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %50
  %63 = load i32*, i32** %7, align 8
  %64 = load i8*, i8** %8, align 8
  %65 = call i8* @curl_easy_escape(i32* %63, i8* %64, i32 0)
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %89

68:                                               ; preds = %62
  %69 = load i8*, i8** %6, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** %4, align 8
  %73 = load i8*, i8** %10, align 8
  %74 = call i8* @aprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %72, i8* %73)
  store i8* %74, i8** %11, align 8
  br label %79

75:                                               ; preds = %68
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %10, align 8
  %78 = call i8* @aprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %76, i8* %77)
  store i8* %78, i8** %11, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i8*, i8** %10, align 8
  %81 = call i32 @curl_free(i8* %80)
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 @Curl_safefree(i8* %82)
  %84 = load i8*, i8** %11, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %79
  store i8* null, i8** %3, align 8
  br label %97

87:                                               ; preds = %79
  %88 = load i8*, i8** %11, align 8
  store i8* %88, i8** %4, align 8
  br label %92

89:                                               ; preds = %62
  %90 = load i8*, i8** %4, align 8
  %91 = call i32 @Curl_safefree(i8* %90)
  br label %92

92:                                               ; preds = %89, %87
  br label %93

93:                                               ; preds = %92, %31
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 @curl_easy_cleanup(i32* %94)
  %96 = load i8*, i8** %4, align 8
  store i8* %96, i8** %3, align 8
  br label %97

97:                                               ; preds = %93, %86, %17
  %98 = load i8*, i8** %3, align 8
  ret i8* %98
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32* @curl_easy_init(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @curl_easy_escape(i32*, i8*, i32) #1

declare dso_local i8* @aprintf(i8*, i8*, i8*) #1

declare dso_local i32 @curl_free(i8*) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i32 @curl_easy_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
