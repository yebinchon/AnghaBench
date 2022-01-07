; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_str_width_split.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_str_width_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8** (i8*, i32)* @str_width_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8** @str_width_split(i8* %0, i32 %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 32, i8* %12, align 1
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %15, %2
  %22 = call i8** @malloc(i32 8)
  store i8** %22, i8*** %8, align 8
  %23 = load i8**, i8*** %8, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i8**, i8*** %8, align 8
  store i8** %26, i8*** %3, align 8
  br label %144

27:                                               ; preds = %21
  %28 = load i8**, i8*** %8, align 8
  store i8* null, i8** %28, align 8
  %29 = load i8**, i8*** %8, align 8
  store i8** %29, i8*** %3, align 8
  br label %144

30:                                               ; preds = %15
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @strlen(i8* %31)
  store i32 %32, i32* %11, align 4
  store i32 1, i32* %9, align 4
  %33 = load i8*, i8** %4, align 8
  store i8* %33, i8** %6, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %54, %30
  %39 = load i8*, i8** %7, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = icmp ult i8* %39, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %38
  %46 = load i8*, i8** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8, i8* %12, align 1
  %49 = call i8* @reverse_search_char(i8* %46, i8* %47, i8 signext %48)
  store i8* %49, i8** %7, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  br label %63

54:                                               ; preds = %45
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  store i8* %58, i8** %6, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %7, align 8
  br label %38

63:                                               ; preds = %53, %38
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i8** @calloc(i32 %67, i32 8)
  store i8** %68, i8*** %8, align 8
  %69 = load i8**, i8*** %8, align 8
  %70 = icmp eq i8** %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i8**, i8*** %8, align 8
  store i8** %72, i8*** %3, align 8
  br label %144

73:                                               ; preds = %63
  %74 = load i8*, i8** %4, align 8
  store i8* %74, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  store i8* %78, i8** %7, align 8
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %121, %73
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %9, align 4
  %82 = sub nsw i32 %81, 1
  %83 = icmp slt i32 %80, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i8*, i8** %7, align 8
  %86 = load i8*, i8** %4, align 8
  %87 = load i32, i32* %11, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = icmp ult i8* %85, %89
  br label %91

91:                                               ; preds = %84, %79
  %92 = phi i1 [ false, %79 ], [ %90, %84 ]
  br i1 %92, label %93, label %124

93:                                               ; preds = %91
  %94 = load i8*, i8** %6, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i8, i8* %12, align 1
  %97 = call i8* @reverse_search_char(i8* %94, i8* %95, i8 signext %96)
  store i8* %97, i8** %7, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = icmp eq i8* %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %93
  br label %124

102:                                              ; preds = %93
  %103 = load i8*, i8** %6, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = call i8* @my_strndup(i8* %103, i32 %109)
  %111 = load i8**, i8*** %8, align 8
  %112 = load i32, i32* %10, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %111, i64 %113
  store i8* %110, i8** %114, align 8
  %115 = load i8*, i8** %7, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 1
  store i8* %116, i8** %6, align 8
  %117 = load i8*, i8** %6, align 8
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  store i8* %120, i8** %7, align 8
  br label %121

121:                                              ; preds = %102
  %122 = load i32, i32* %10, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %10, align 4
  br label %79

124:                                              ; preds = %101, %91
  %125 = load i8*, i8** %6, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %124
  %130 = load i32, i32* %10, align 4
  %131 = load i32, i32* %9, align 4
  %132 = sub nsw i32 %131, 1
  %133 = icmp slt i32 %130, %132
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i8*, i8** %6, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i8* @my_strndup(i8* %135, i32 %136)
  %138 = load i8**, i8*** %8, align 8
  %139 = load i32, i32* %10, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8*, i8** %138, i64 %140
  store i8* %137, i8** %141, align 8
  br label %142

142:                                              ; preds = %134, %129, %124
  %143 = load i8**, i8*** %8, align 8
  store i8** %143, i8*** %3, align 8
  br label %144

144:                                              ; preds = %142, %71, %27, %25
  %145 = load i8**, i8*** %3, align 8
  ret i8** %145
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @reverse_search_char(i8*, i8*, i8 signext) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i8* @my_strndup(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
