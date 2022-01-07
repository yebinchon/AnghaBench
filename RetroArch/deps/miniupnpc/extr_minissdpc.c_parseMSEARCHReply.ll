; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minissdpc.c_parseMSEARCHReply.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_minissdpc.c_parseMSEARCHReply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"location\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"st\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"usn\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8**, i32*, i8**, i32*, i8**, i32*)* @parseMSEARCHReply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parseMSEARCHReply(i8* %0, i32 %1, i8** %2, i32* %3, i8** %4, i32* %5, i8** %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8** %2, i8*** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8** %4, i8*** %13, align 8
  store i32* %5, i32** %14, align 8
  store i8** %6, i8*** %15, align 8
  store i32* %7, i32** %16, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %21

21:                                               ; preds = %111, %8
  %22 = load i32, i32* %19, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %114

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8
  %27 = load i32, i32* %19, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %26, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  switch i32 %31, label %110 [
    i32 58, label %32
    i32 10, label %38
    i32 13, label %38
  ]

32:                                               ; preds = %25
  %33 = load i32, i32* %18, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %19, align 4
  store i32 %36, i32* %18, align 4
  br label %37

37:                                               ; preds = %35, %32
  br label %111

38:                                               ; preds = %25, %25
  %39 = load i32, i32* %18, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %107

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %45, %41
  %43 = load i32, i32* %18, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %18, align 4
  br label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** %9, align 8
  %47 = load i32, i32* %18, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp eq i32 %51, 32
  br i1 %52, label %42, label %53

53:                                               ; preds = %45
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* %17, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = call i32 @strncasecmp(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %59 = icmp eq i32 0, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i8*, i8** %9, align 8
  %62 = load i32, i32* %18, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %61, i64 %63
  %65 = load i8**, i8*** %11, align 8
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %19, align 4
  %67 = load i32, i32* %18, align 4
  %68 = sub nsw i32 %66, %67
  %69 = load i32*, i32** %12, align 8
  store i32 %68, i32* %69, align 4
  br label %106

70:                                               ; preds = %53
  %71 = load i8*, i8** %9, align 8
  %72 = load i32, i32* %17, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = call i32 @strncasecmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %76 = icmp eq i32 0, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load i8*, i8** %9, align 8
  %79 = load i32, i32* %18, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8**, i8*** %13, align 8
  store i8* %81, i8** %82, align 8
  %83 = load i32, i32* %19, align 4
  %84 = load i32, i32* %18, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load i32*, i32** %14, align 8
  store i32 %85, i32* %86, align 4
  br label %105

87:                                               ; preds = %70
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = call i32 @strncasecmp(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 3)
  %93 = icmp eq i32 0, %92
  br i1 %93, label %94, label %104

94:                                               ; preds = %87
  %95 = load i8*, i8** %9, align 8
  %96 = load i32, i32* %18, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8**, i8*** %15, align 8
  store i8* %98, i8** %99, align 8
  %100 = load i32, i32* %19, align 4
  %101 = load i32, i32* %18, align 4
  %102 = sub nsw i32 %100, %101
  %103 = load i32*, i32** %16, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %94, %87
  br label %105

105:                                              ; preds = %104, %77
  br label %106

106:                                              ; preds = %105, %60
  store i32 0, i32* %18, align 4
  br label %107

107:                                              ; preds = %106, %38
  %108 = load i32, i32* %19, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %17, align 4
  br label %111

110:                                              ; preds = %25
  br label %111

111:                                              ; preds = %110, %107, %37
  %112 = load i32, i32* %19, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %19, align 4
  br label %21

114:                                              ; preds = %21
  ret void
}

declare dso_local i32 @strncasecmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
