; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_fake_ntlm.c_printable.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_fake_ntlm.c_printable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"[NOTHING]\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"[0x%02X]\00", align 1
@HEX_FMT_STR = common dso_local global i8* null, align 8
@HEX_STR_LEN = common dso_local global i32 0, align 4
@NOTHING_LEN = common dso_local global i32 0, align 4
@NOTHING_STR = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i64)* @printable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @printable(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  store i64 %17, i64* %5, align 8
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = udiv i64 %22, 2
  %24 = icmp ult i64 %23, 7
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %5, align 8
  %28 = udiv i64 %27, 2
  br label %29

29:                                               ; preds = %26, %25
  %30 = phi i64 [ 7, %25 ], [ %28, %26 ]
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %31, %32
  store i64 %33, i64* %9, align 8
  br label %35

34:                                               ; preds = %18
  store i64 10, i64* %9, align 8
  br label %35

35:                                               ; preds = %34, %29
  %36 = load i64, i64* %9, align 8
  %37 = call i8* @malloc(i64 %36)
  store i8* %37, i8** %6, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  store i8* null, i8** %3, align 8
  br label %122

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @msnprintf(i8* %46, i64 %47, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8 signext ptrtoint ([10 x i8]* @.str.1 to i8))
  %49 = load i8*, i8** %6, align 8
  store i8* %49, i8** %3, align 8
  br label %122

50:                                               ; preds = %41
  store i64 0, i64* %11, align 8
  br label %51

51:                                               ; preds = %114, %50
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %5, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %117

55:                                               ; preds = %51
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = sub i64 %57, 7
  %59 = icmp ugt i64 %56, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %55
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = add i64 %61, %62
  store i64 %63, i64* %8, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = call i8* @realloc(i8* %64, i64 %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i8*, i8** %6, align 8
  %71 = call i32 @free(i8* %70)
  store i8* null, i8** %3, align 8
  br label %122

72:                                               ; preds = %60
  %73 = load i8*, i8** %7, align 8
  store i8* %73, i8** %6, align 8
  %74 = load i64, i64* %8, align 8
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %72, %55
  %76 = load i8*, i8** %4, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp sgt i32 %80, 32
  br i1 %81, label %82, label %99

82:                                               ; preds = %75
  %83 = load i8*, i8** %4, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp slt i32 %87, 127
  br i1 %88, label %89, label %99

89:                                               ; preds = %82
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* %11, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %6, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 %93, i8* %96, align 1
  %97 = load i64, i64* %12, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %12, align 8
  br label %113

99:                                               ; preds = %82, %75
  %100 = load i8*, i8** %6, align 8
  %101 = load i64, i64* %12, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i64, i64* %9, align 8
  %104 = load i64, i64* %12, align 8
  %105 = sub i64 %103, %104
  %106 = load i8*, i8** %4, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @msnprintf(i8* %102, i64 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8 signext %109)
  %111 = load i64, i64* %12, align 8
  %112 = add i64 %111, 6
  store i64 %112, i64* %12, align 8
  br label %113

113:                                              ; preds = %99, %89
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %11, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %11, align 8
  br label %51

117:                                              ; preds = %51
  %118 = load i8*, i8** %6, align 8
  %119 = load i64, i64* %12, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8 0, i8* %120, align 1
  %121 = load i8*, i8** %6, align 8
  store i8* %121, i8** %3, align 8
  br label %122

122:                                              ; preds = %117, %69, %44, %40
  %123 = load i8*, i8** %3, align 8
  ret i8* %123
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @msnprintf(i8*, i64, i8*, i8 signext) #1

declare dso_local i8* @realloc(i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
