; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http_parse.c_string_parse_html_anchor.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/net/extr_net_http_parse.c_string_parse_html_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"<a href=\22\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\22>\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"</a>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_parse_html_anchor(i8* %0, i8* %1, i8* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %5
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20, %17, %5
  store i32 1, i32* %6, align 4
  br label %123

24:                                               ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = load i64, i64* %10, align 8
  %27 = call i32 @memset(i8* %25, i32 0, i64 %26)
  %28 = load i8*, i8** %9, align 8
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @memset(i8* %28, i32 0, i64 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = call i8* @strcasestr(i8* %31, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i8* %32, i8** %7, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %123

36:                                               ; preds = %24
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 9
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %122

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %122

46:                                               ; preds = %41
  %47 = load i8*, i8** %8, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %80, label %50

50:                                               ; preds = %46
  %51 = load i8*, i8** %7, align 8
  %52 = call i8* @strstr(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 1, i32* %6, align 4
  br label %123

56:                                               ; preds = %50
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = load i8*, i8** %12, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = ptrtoint i8* %59 to i64
  %62 = ptrtoint i8* %60 to i64
  %63 = sub i64 %61, %62
  %64 = trunc i64 %63 to i32
  %65 = call i32 @memcpy(i8* %57, i8* %58, i32 %64)
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %7, align 8
  %69 = ptrtoint i8* %67 to i64
  %70 = ptrtoint i8* %68 to i64
  %71 = sub i64 %69, %70
  %72 = getelementptr inbounds i8, i8* %66, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %12, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = ptrtoint i8* %73 to i64
  %76 = ptrtoint i8* %74 to i64
  %77 = sub i64 %75, %76
  %78 = load i8*, i8** %7, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %7, align 8
  br label %80

80:                                               ; preds = %56, %46
  %81 = load i8*, i8** %9, align 8
  %82 = load i8, i8* %81, align 1
  %83 = icmp ne i8 %82, 0
  br i1 %83, label %121, label %84

84:                                               ; preds = %80
  %85 = load i8*, i8** %7, align 8
  %86 = call i8* @strstr(i8* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %86, i8** %13, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i8*, i8** %13, align 8
  %91 = call i8* @strstr(i8* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %93

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %89
  %94 = phi i8* [ %91, %89 ], [ null, %92 ]
  store i8* %94, i8** %14, align 8
  %95 = load i8*, i8** %13, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i8*, i8** %14, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97, %93
  store i32 1, i32* %6, align 4
  br label %123

101:                                              ; preds = %97
  %102 = load i8*, i8** %9, align 8
  %103 = load i8*, i8** %13, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 2
  %105 = load i8*, i8** %14, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sub nsw i64 %109, 2
  %111 = trunc i64 %110 to i32
  %112 = call i32 @memcpy(i8* %102, i8* %104, i32 %111)
  %113 = load i8*, i8** %9, align 8
  %114 = load i8*, i8** %14, align 8
  %115 = load i8*, i8** %13, align 8
  %116 = ptrtoint i8* %114 to i64
  %117 = ptrtoint i8* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sub nsw i64 %118, 2
  %120 = getelementptr inbounds i8, i8* %113, i64 %119
  store i8 0, i8* %120, align 1
  br label %121

121:                                              ; preds = %101, %80
  br label %122

122:                                              ; preds = %121, %41, %36
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %122, %100, %55, %35, %23
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i8* @strcasestr(i8*, i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
