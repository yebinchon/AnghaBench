; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_cb_hdr.c_parse_filename.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_cb_hdr.c_parse_filename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @parse_filename to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @parse_filename(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8 0, i8* %9, align 1
  %10 = load i64, i64* %5, align 8
  %11 = add i64 %10, 1
  %12 = call i8* @malloc(i64 %11)
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %105

16:                                               ; preds = %2
  %17 = load i8*, i8** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @memcpy(i8* %17, i8* %18, i64 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds i8, i8* %21, i64 %22
  store i8 0, i8* %23, align 1
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %7, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 39
  br i1 %28, label %34, label %29

29:                                               ; preds = %16
  %30 = load i8*, i8** %7, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %32, 34
  br i1 %33, label %34, label %39

34:                                               ; preds = %29, %16
  %35 = load i8*, i8** %7, align 8
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %9, align 1
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %7, align 8
  br label %40

39:                                               ; preds = %29
  store i8 59, i8* %9, align 1
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i8*, i8** %7, align 8
  %42 = load i8, i8* %9, align 1
  %43 = call i8* @strchr(i8* %41, i8 signext %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i8*, i8** %8, align 8
  store i8 0, i8* %47, align 1
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i8*, i8** %7, align 8
  %50 = call i8* @strrchr(i8* %49, i8 signext 47)
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %48
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 1
  store i8* %55, i8** %7, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i8, i8* %56, align 1
  %58 = icmp ne i8 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %6, align 8
  %61 = call i32 @Curl_safefree(i8* %60)
  store i8* null, i8** %3, align 8
  br label %105

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %48
  %64 = load i8*, i8** %7, align 8
  %65 = call i8* @strrchr(i8* %64, i8 signext 92)
  store i8* %65, i8** %8, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i8*, i8** %6, align 8
  %76 = call i32 @Curl_safefree(i8* %75)
  store i8* null, i8** %3, align 8
  br label %105

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i8*, i8** %7, align 8
  %80 = call i8* @strchr(i8* %79, i8 signext 13)
  store i8* %80, i8** %8, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i8*, i8** %8, align 8
  store i8 0, i8* %84, align 1
  br label %85

85:                                               ; preds = %83, %78
  %86 = load i8*, i8** %7, align 8
  %87 = call i8* @strchr(i8* %86, i8 signext 10)
  store i8* %87, i8** %8, align 8
  %88 = load i8*, i8** %8, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i8*, i8** %8, align 8
  store i8 0, i8* %91, align 1
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i8*, i8** %6, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %92
  %97 = load i8*, i8** %6, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i64 @strlen(i8* %99)
  %101 = add nsw i64 %100, 1
  %102 = call i32 @memmove(i8* %97, i8* %98, i64 %101)
  br label %103

103:                                              ; preds = %96, %92
  %104 = load i8*, i8** %6, align 8
  store i8* %104, i8** %3, align 8
  br label %105

105:                                              ; preds = %103, %74, %59, %15
  %106 = load i8*, i8** %3, align 8
  ret i8* %106
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @Curl_safefree(i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
