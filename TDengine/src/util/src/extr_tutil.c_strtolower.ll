; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strtolower.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tutil.c_strtolower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @strtolower(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i8 0, i8* %6, align 1
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %4, align 8
  %16 = load i8, i8* %14, align 1
  store i8 %16, i8* %8, align 1
  br label %17

17:                                               ; preds = %71, %2
  %18 = load i8, i8* %8, align 1
  %19 = icmp ne i8 %18, 0
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %67

24:                                               ; preds = %20
  %25 = load i8, i8* %6, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load i8, i8* %8, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 92
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %40

32:                                               ; preds = %27
  %33 = load i8, i8* %8, align 1
  %34 = sext i8 %33 to i32
  %35 = load i8, i8* %6, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i8 0, i8* %6, align 1
  br label %39

39:                                               ; preds = %38, %32
  br label %40

40:                                               ; preds = %39, %31
  br label %66

41:                                               ; preds = %24
  %42 = load i8, i8* %8, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp sge i32 %43, 65
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i8, i8* %8, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp sle i32 %47, 90
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i8, i8* %8, align 1
  %51 = sext i8 %50 to i32
  %52 = sub nsw i32 %51, -32
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %8, align 1
  br label %65

54:                                               ; preds = %45, %41
  %55 = load i8, i8* %8, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 39
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i8, i8* %8, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 34
  br i1 %61, label %62, label %64

62:                                               ; preds = %58, %54
  %63 = load i8, i8* %8, align 1
  store i8 %63, i8* %6, align 1
  br label %64

64:                                               ; preds = %62, %58
  br label %65

65:                                               ; preds = %64, %49
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %23
  %68 = load i8, i8* %8, align 1
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %7, align 8
  store i8 %68, i8* %69, align 1
  br label %71

71:                                               ; preds = %67
  %72 = load i8*, i8** %4, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 1
  store i8* %73, i8** %4, align 8
  %74 = load i8, i8* %72, align 1
  store i8 %74, i8* %8, align 1
  br label %17

75:                                               ; preds = %17
  %76 = load i8*, i8** %7, align 8
  store i8 0, i8* %76, align 1
  %77 = load i8*, i8** %3, align 8
  ret i8* %77
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
