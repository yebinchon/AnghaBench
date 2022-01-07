; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_set_typefilter_string.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_set_typefilter_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kdbg_typefilter = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i64 0, align 8
@KDBG_CSC_MAX = common dso_local global i64 0, align 8
@KDBG_CLASS_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @kdbg_set_typefilter_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kdbg_set_typefilter_string(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  %7 = call i32 (...) @ktrace_assert_lock_held()
  %8 = load i8*, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i32, i32* @kdbg_typefilter, align 4
  %13 = call i32 @typefilter_reject_all(i32 %12)
  %14 = load i32, i32* @kdbg_typefilter, align 4
  %15 = load i64, i64* @DBG_TRACE, align 8
  %16 = call i32 @typefilter_allow_class(i32 %14, i64 %15)
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 0
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp sge i32 %20, 48
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp sle i32 %26, 57
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load i8*, i8** %2, align 8
  %30 = call i64 @strtoul(i8* %29, i8** null, i32 0)
  store i64 %30, i64* %4, align 8
  %31 = load i8*, i8** %2, align 8
  %32 = load i8*, i8** %3, align 8
  %33 = icmp ne i8* %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @KDBG_CSC_MAX, align 8
  %37 = icmp ule i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32, i32* @kdbg_typefilter, align 4
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @typefilter_allow_csc(i32 %39, i64 %40)
  br label %42

42:                                               ; preds = %38, %34, %28
  br label %106

43:                                               ; preds = %22, %1
  br label %44

44:                                               ; preds = %105, %43
  %45 = load i8*, i8** %2, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %106

50:                                               ; preds = %44
  %51 = load i8*, i8** %2, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %6, align 1
  %54 = load i8, i8* %6, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp ne i32 %55, 67
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i8, i8* %6, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 83
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %106

62:                                               ; preds = %57, %50
  %63 = load i8*, i8** %2, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %2, align 8
  %65 = load i8*, i8** %2, align 8
  %66 = call i64 @strtoul(i8* %65, i8** %3, i32 0)
  store i64 %66, i64* %5, align 8
  %67 = load i8*, i8** %2, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = icmp eq i8* %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %106

71:                                               ; preds = %62
  %72 = load i8, i8* %6, align 1
  %73 = sext i8 %72 to i32
  switch i32 %73, label %94 [
    i32 67, label %74
    i32 83, label %84
  ]

74:                                               ; preds = %71
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @KDBG_CLASS_MAX, align 8
  %77 = icmp ule i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74
  %79 = load i32, i32* @kdbg_typefilter, align 4
  %80 = load i64, i64* %5, align 8
  %81 = call i32 @typefilter_allow_class(i32 %79, i64 %80)
  br label %83

82:                                               ; preds = %74
  br label %106

83:                                               ; preds = %78
  br label %95

84:                                               ; preds = %71
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @KDBG_CSC_MAX, align 8
  %87 = icmp ule i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i32, i32* @kdbg_typefilter, align 4
  %90 = load i64, i64* %5, align 8
  %91 = call i32 @typefilter_allow_csc(i32 %89, i64 %90)
  br label %93

92:                                               ; preds = %84
  br label %106

93:                                               ; preds = %88
  br label %95

94:                                               ; preds = %71
  br label %106

95:                                               ; preds = %93, %83
  %96 = load i8*, i8** %3, align 8
  store i8* %96, i8** %2, align 8
  %97 = load i8*, i8** %2, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 0
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 44
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i8*, i8** %2, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %2, align 8
  br label %105

105:                                              ; preds = %102, %95
  br label %44

106:                                              ; preds = %42, %61, %70, %82, %92, %94, %44
  ret void
}

declare dso_local i32 @ktrace_assert_lock_held(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @typefilter_reject_all(i32) #1

declare dso_local i32 @typefilter_allow_class(i32, i64) #1

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @typefilter_allow_csc(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
