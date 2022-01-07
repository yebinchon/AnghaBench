; ModuleID = '/home/carl/AnghaBench/capstone/suite/cstest/src/extr_helper.c_split.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/cstest/src/extr_helper.c_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @split(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %9, align 8
  store i8** null, i8*** %7, align 8
  br label %12

12:                                               ; preds = %17, %3
  %13 = load i8*, i8** %9, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strstr(i8* %13, i8* %14)
  store i8* %15, i8** %8, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %72

17:                                               ; preds = %12
  %18 = load i8**, i8*** %7, align 8
  %19 = load i32, i32* %10, align 4
  %20 = add nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = trunc i64 %22 to i32
  %24 = call i64 @realloc(i8** %18, i32 %23)
  %25 = inttoptr i64 %24 to i8**
  store i8** %25, i8*** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = ptrtoint i8* %26 to i64
  %29 = ptrtoint i8* %27 to i64
  %30 = sub i64 %28, %29
  %31 = add nsw i64 %30, 10
  %32 = trunc i64 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = mul i64 1, %33
  %35 = trunc i64 %34 to i32
  %36 = call i64 @calloc(i32 1, i32 %35)
  %37 = inttoptr i64 %36 to i8*
  %38 = load i8**, i8*** %7, align 8
  %39 = load i32, i32* %10, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  store i8* %37, i8** %41, align 8
  %42 = load i8**, i8*** %7, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8*, i8** %42, i64 %44
  %46 = load i8*, i8** %45, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = load i8*, i8** %9, align 8
  %50 = ptrtoint i8* %48 to i64
  %51 = ptrtoint i8* %49 to i64
  %52 = sub i64 %50, %51
  %53 = trunc i64 %52 to i32
  %54 = call i32 @memcpy(i8* %46, i8* %47, i32 %53)
  %55 = load i8**, i8*** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i8*, i8** %9, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = getelementptr inbounds i8, i8* %59, i64 %64
  store i8 0, i8* %65, align 1
  %66 = load i8*, i8** %8, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8* %69, i8** %9, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %12

72:                                               ; preds = %12
  %73 = load i8*, i8** %9, align 8
  %74 = call i64 @strlen(i8* %73)
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load i8**, i8*** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = mul i64 8, %80
  %82 = trunc i64 %81 to i32
  %83 = call i64 @realloc(i8** %77, i32 %82)
  %84 = inttoptr i64 %83 to i8**
  store i8** %84, i8*** %7, align 8
  %85 = load i8*, i8** %9, align 8
  %86 = call i8* @strdup(i8* %85)
  %87 = load i8**, i8*** %7, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8*, i8** %87, i64 %89
  store i8* %86, i8** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %76, %72
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %6, align 8
  store i32 %94, i32* %95, align 4
  %96 = load i8**, i8*** %7, align 8
  ret i8** %96
}

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @realloc(i8**, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
