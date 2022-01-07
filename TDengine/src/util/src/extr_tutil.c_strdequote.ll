; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strdequote.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strdequote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i8 @strdequote(i8* %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 0, i8* %2, align 1
  br label %95

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %4, align 1
  %14 = load i8, i8* %4, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 39
  br i1 %16, label %17, label %25

17:                                               ; preds = %10
  %18 = load i8, i8* %4, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 34
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strlen(i8* %22)
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %2, align 1
  br label %95

25:                                               ; preds = %17, %10
  store i8 1, i8* %5, align 1
  store i8 0, i8* %6, align 1
  br label %26

26:                                               ; preds = %87, %25
  %27 = load i8*, i8** %3, align 8
  %28 = load i8, i8* %5, align 1
  %29 = sext i8 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %90

34:                                               ; preds = %26
  %35 = load i8*, i8** %3, align 8
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = load i8, i8* %4, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %76

44:                                               ; preds = %34
  %45 = load i8*, i8** %3, align 8
  %46 = load i8, i8* %5, align 1
  %47 = sext i8 %46 to i32
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %45, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = load i8, i8* %4, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %52, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %44
  %57 = load i8, i8* %4, align 1
  %58 = load i8*, i8** %3, align 8
  %59 = load i8, i8* %6, align 1
  %60 = add i8 %59, 1
  store i8 %60, i8* %6, align 1
  %61 = sext i8 %59 to i64
  %62 = getelementptr inbounds i8, i8* %58, i64 %61
  store i8 %57, i8* %62, align 1
  %63 = load i8, i8* %5, align 1
  %64 = add i8 %63, 1
  store i8 %64, i8* %5, align 1
  br label %75

65:                                               ; preds = %44
  %66 = load i8*, i8** %3, align 8
  %67 = load i8, i8* %6, align 1
  %68 = add i8 %67, 1
  store i8 %68, i8* %6, align 1
  %69 = sext i8 %67 to i64
  %70 = getelementptr inbounds i8, i8* %66, i64 %69
  store i8 0, i8* %70, align 1
  %71 = load i8, i8* %6, align 1
  %72 = sext i8 %71 to i32
  %73 = sub nsw i32 %72, 1
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %2, align 1
  br label %95

75:                                               ; preds = %56
  br label %87

76:                                               ; preds = %34
  %77 = load i8*, i8** %3, align 8
  %78 = load i8, i8* %5, align 1
  %79 = sext i8 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i8, i8* %80, align 1
  %82 = load i8*, i8** %3, align 8
  %83 = load i8, i8* %6, align 1
  %84 = add i8 %83, 1
  store i8 %84, i8* %6, align 1
  %85 = sext i8 %83 to i64
  %86 = getelementptr inbounds i8, i8* %82, i64 %85
  store i8 %81, i8* %86, align 1
  br label %87

87:                                               ; preds = %76, %75
  %88 = load i8, i8* %5, align 1
  %89 = add i8 %88, 1
  store i8 %89, i8* %5, align 1
  br label %26

90:                                               ; preds = %26
  %91 = load i8, i8* %6, align 1
  %92 = sext i8 %91 to i32
  %93 = add nsw i32 %92, 1
  %94 = trunc i32 %93 to i8
  store i8 %94, i8* %2, align 1
  br label %95

95:                                               ; preds = %90, %65, %21, %9
  %96 = load i8, i8* %2, align 1
  ret i8 %96
}

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
