; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_logcat.c_read_tok.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vcos/generic/extr_vcos_logcat.c_read_tok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8**, i8)* @read_tok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_tok(i8* %0, i64 %1, i8** %2, i8 signext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8, align 1
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8** %2, i8*** %8, align 8
  store i8 %3, i8* %9, align 1
  %13 = load i8**, i8*** %8, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %10, align 8
  store i64 0, i64* %11, align 8
  br label %15

15:                                               ; preds = %30, %4
  %16 = load i8*, i8** %10, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** %10, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = call i64 @isspace(i32 %25)
  %27 = icmp ne i64 %26, 0
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i1 [ false, %15 ], [ %27, %21 ]
  br i1 %29, label %30, label %33

30:                                               ; preds = %28
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %10, align 8
  br label %15

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %65, %33
  %35 = load i8*, i8** %10, align 8
  %36 = load i8, i8* %35, align 1
  store i8 %36, i8* %12, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load i8, i8* %12, align 1
  %41 = sext i8 %40 to i32
  %42 = load i8, i8* %9, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp ne i32 %41, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load i8, i8* %12, align 1
  %47 = sext i8 %46 to i32
  %48 = call i64 @isalnum(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %45
  %51 = load i8, i8* %12, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 95
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i8, i8* %12, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %56, 42
  br i1 %57, label %58, label %63

58:                                               ; preds = %54, %50, %45
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* %7, align 8
  %61 = sub i64 %60, 1
  %62 = icmp ne i64 %59, %61
  br label %63

63:                                               ; preds = %58, %54, %39, %34
  %64 = phi i1 [ false, %54 ], [ false, %39 ], [ false, %34 ], [ %62, %58 ]
  br i1 %64, label %65, label %73

65:                                               ; preds = %63
  %66 = load i8, i8* %12, align 1
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %11, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %11, align 8
  %70 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8 %66, i8* %70, align 1
  %71 = load i8*, i8** %10, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %10, align 8
  br label %34

73:                                               ; preds = %63
  %74 = load i8, i8* %12, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %73
  %78 = load i8, i8* %12, align 1
  %79 = sext i8 %78 to i32
  %80 = load i8, i8* %9, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %79, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %77, %73
  %84 = load i8, i8* %12, align 1
  %85 = icmp ne i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i8*, i8** %10, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %10, align 8
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i8*, i8** %6, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 0, i8* %92, align 1
  %93 = load i8*, i8** %10, align 8
  %94 = load i8**, i8*** %8, align 8
  store i8* %93, i8** %94, align 8
  store i32 1, i32* %5, align 4
  br label %96

95:                                               ; preds = %77
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %95, %89
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local i64 @isspace(i32) #1

declare dso_local i64 @isalnum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
