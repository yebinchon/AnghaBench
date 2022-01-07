; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_append_path_component.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_avstring.c_av_append_path_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @av_append_path_component(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @av_strdup(i8* %12)
  store i8* %13, i8** %3, align 8
  br label %111

14:                                               ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load i8*, i8** %4, align 8
  %19 = call i8* @av_strdup(i8* %18)
  store i8* %19, i8** %3, align 8
  br label %111

20:                                               ; preds = %14
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @strlen(i8* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call i64 @strlen(i8* %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @SIZE_MAX, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub i64 %26, %27
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* @SIZE_MAX, align 8
  %35 = sub i64 %34, 2
  %36 = icmp ugt i64 %33, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %20
  store i8* null, i8** %3, align 8
  br label %111

38:                                               ; preds = %30
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  %42 = add i64 %41, 2
  %43 = call i8* @av_malloc(i64 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %109

46:                                               ; preds = %38
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %96

49:                                               ; preds = %46
  %50 = load i8*, i8** %8, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = load i64, i64* %6, align 8
  %53 = add i64 %52, 1
  %54 = call i32 @av_strlcpy(i8* %50, i8* %51, i64 %53)
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %95

57:                                               ; preds = %49
  %58 = load i8*, i8** %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub i64 %59, 1
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 47
  br i1 %64, label %65, label %76

65:                                               ; preds = %57
  %66 = load i8*, i8** %5, align 8
  %67 = getelementptr inbounds i8, i8* %66, i64 0
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 47
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load i8*, i8** %8, align 8
  %73 = load i64, i64* %6, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %6, align 8
  %75 = getelementptr inbounds i8, i8* %72, i64 %73
  store i8 47, i8* %75, align 1
  br label %94

76:                                               ; preds = %65, %57
  %77 = load i8*, i8** %8, align 8
  %78 = load i64, i64* %6, align 8
  %79 = sub i64 %78, 1
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 47
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load i8*, i8** %5, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 0
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 47
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, -1
  store i64 %92, i64* %6, align 8
  br label %93

93:                                               ; preds = %90, %84, %76
  br label %94

94:                                               ; preds = %93, %71
  br label %95

95:                                               ; preds = %94, %49
  br label %96

96:                                               ; preds = %95, %46
  %97 = load i8*, i8** %8, align 8
  %98 = load i64, i64* %6, align 8
  %99 = getelementptr inbounds i8, i8* %97, i64 %98
  %100 = load i8*, i8** %5, align 8
  %101 = load i64, i64* %7, align 8
  %102 = add i64 %101, 1
  %103 = call i32 @av_strlcpy(i8* %99, i8* %100, i64 %102)
  %104 = load i8*, i8** %8, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load i64, i64* %7, align 8
  %107 = add i64 %105, %106
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  store i8 0, i8* %108, align 1
  br label %109

109:                                              ; preds = %96, %38
  %110 = load i8*, i8** %8, align 8
  store i8* %110, i8** %3, align 8
  br label %111

111:                                              ; preds = %109, %37, %17, %11
  %112 = load i8*, i8** %3, align 8
  ret i8* %112
}

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @av_malloc(i64) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
