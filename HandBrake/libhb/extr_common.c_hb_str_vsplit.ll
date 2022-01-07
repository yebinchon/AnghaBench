; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_str_vsplit.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_common.c_hb_str_vsplit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8** @hb_str_vsplit(i8* %0, i8 signext %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8 34, i8* %11, align 1
  %12 = load i8, i8* %5, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 34
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i8 39, i8* %11, align 1
  br label %16

16:                                               ; preds = %15, %2
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19, %16
  %26 = call i8** @malloc(i32 8)
  store i8** %26, i8*** %8, align 8
  %27 = load i8**, i8*** %8, align 8
  %28 = icmp eq i8** %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i8**, i8*** %8, align 8
  store i8** %30, i8*** %3, align 8
  br label %96

31:                                               ; preds = %25
  %32 = load i8**, i8*** %8, align 8
  store i8* null, i8** %32, align 8
  %33 = load i8**, i8*** %8, align 8
  store i8** %33, i8*** %3, align 8
  br label %96

34:                                               ; preds = %19
  store i32 1, i32* %9, align 4
  %35 = load i8*, i8** %4, align 8
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %42, %34
  %37 = load i8*, i8** %6, align 8
  %38 = load i8, i8* %5, align 1
  %39 = load i8, i8* %11, align 1
  %40 = call i8* @strchr_quote(i8* %37, i8 signext %38, i8 signext %39)
  store i8* %40, i8** %6, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %6, align 8
  br label %36

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  %50 = call i8** @calloc(i32 %49, i32 8)
  store i8** %50, i8*** %8, align 8
  %51 = load i8**, i8*** %8, align 8
  %52 = icmp eq i8** %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i8**, i8*** %8, align 8
  store i8** %54, i8*** %3, align 8
  br label %96

55:                                               ; preds = %47
  %56 = load i8*, i8** %4, align 8
  store i8* %56, i8** %6, align 8
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %82, %55
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %59, 1
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %57
  %63 = load i8*, i8** %6, align 8
  %64 = load i8, i8* %5, align 1
  %65 = load i8, i8* %11, align 1
  %66 = call i8* @strchr_quote(i8* %63, i8 signext %64, i8 signext %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %11, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = load i8*, i8** %6, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  %75 = call i8* @strndup_quote(i8* %67, i8 signext %68, i32 %74)
  %76 = load i8**, i8*** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  store i8* %75, i8** %79, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  store i8* %81, i8** %6, align 8
  br label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %57

85:                                               ; preds = %57
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %11, align 1
  %88 = load i8*, i8** %6, align 8
  %89 = call i32 @strlen(i8* %88)
  %90 = call i8* @strndup_quote(i8* %86, i8 signext %87, i32 %89)
  %91 = load i8**, i8*** %8, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %90, i8** %94, align 8
  %95 = load i8**, i8*** %8, align 8
  store i8** %95, i8*** %3, align 8
  br label %96

96:                                               ; preds = %85, %53, %31, %29
  %97 = load i8**, i8*** %3, align 8
  ret i8** %97
}

declare dso_local i8** @malloc(i32) #1

declare dso_local i8* @strchr_quote(i8*, i8 signext, i8 signext) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i8* @strndup_quote(i8*, i8 signext, i32) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
