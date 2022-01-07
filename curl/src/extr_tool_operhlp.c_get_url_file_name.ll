; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operhlp.c_get_url_file_name.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operhlp.c_get_url_file_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"://\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURLE_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@CURLE_OK = common dso_local global i32 0, align 4
@CURLE_URL_MALFORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_url_file_name(i8** %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8** %0, i8*** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8**, i8*** %4, align 8
  store i8* null, i8** %8, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i8* @strstr(i8* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i8*, i8** %6, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 3
  store i8* %15, i8** %6, align 8
  br label %18

16:                                               ; preds = %2
  %17 = load i8*, i8** %5, align 8
  store i8* %17, i8** %6, align 8
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i8*, i8** %6, align 8
  %20 = call i8* @strrchr(i8* %19, i8 signext 92)
  store i8* %20, i8** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i8* @strrchr(i8* %21, i8 signext 47)
  store i8* %22, i8** %6, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp ult i8* %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %28, %25
  %33 = load i8*, i8** %7, align 8
  store i8* %33, i8** %6, align 8
  br label %34

34:                                               ; preds = %32, %28, %18
  %35 = load i8*, i8** %6, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %6, align 8
  br label %41

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i8*, i8** %6, align 8
  %43 = call i8* @strdup(i8* %42)
  %44 = load i8**, i8*** %4, align 8
  store i8* %43, i8** %44, align 8
  %45 = load i8**, i8*** %4, align 8
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @CURLE_OUT_OF_MEMORY, align 4
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %41
  %51 = load i32, i32* @CURLE_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
