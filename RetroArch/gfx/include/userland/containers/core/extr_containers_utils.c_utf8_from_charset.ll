; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_utils.c_utf8_from_charset.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/core/extr_containers_utils.c_utf8_from_charset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"UTF16-LE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @utf8_from_charset(i8* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i8*, i8** %10, align 8
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %10, align 8
  store i8* %16, i8** %14, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ult i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %108

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %31

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = call i32 @strcmp(i8* %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  br label %70

30:                                               ; preds = %25
  store i32 1, i32* %6, align 4
  br label %108

31:                                               ; preds = %24
  store i32 0, i32* %12, align 4
  br label %32

32:                                               ; preds = %62, %31
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = udiv i32 %34, 2
  %36 = icmp ult i32 %33, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load i8*, i8** %13, align 8
  %39 = load i32, i32* %12, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = sub i32 %47, 1
  %49 = icmp ult i32 %46, %48
  br label %50

50:                                               ; preds = %45, %37, %32
  %51 = phi i1 [ false, %37 ], [ false, %32 ], [ %49, %45 ]
  br i1 %51, label %52, label %65

52:                                               ; preds = %50
  %53 = load i8*, i8** %13, align 8
  %54 = load i32, i32* %12, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = load i8*, i8** %8, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 %57, i8* %61, align 1
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %12, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %32

65:                                               ; preds = %50
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  store i8 0, i8* %69, align 1
  store i32 0, i32* %6, align 4
  br label %108

70:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  br label %71

71:                                               ; preds = %100, %70
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ult i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i8*, i8** %14, align 8
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %9, align 4
  %86 = sub i32 %85, 1
  %87 = icmp ult i32 %84, %86
  br label %88

88:                                               ; preds = %83, %75, %71
  %89 = phi i1 [ false, %75 ], [ false, %71 ], [ %87, %83 ]
  br i1 %89, label %90, label %103

90:                                               ; preds = %88
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* %12, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8, i8* %94, align 1
  %96 = load i8*, i8** %8, align 8
  %97 = load i32, i32* %12, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  store i8 %95, i8* %99, align 1
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %12, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %12, align 4
  br label %71

103:                                              ; preds = %88
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %12, align 4
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  store i8 0, i8* %107, align 1
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %103, %65, %30, %19
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
