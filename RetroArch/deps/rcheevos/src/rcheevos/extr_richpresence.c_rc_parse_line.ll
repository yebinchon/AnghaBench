; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_richpresence.c_rc_parse_line.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_richpresence.c_rc_parse_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8**)* @rc_parse_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rc_parse_line(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %7 = load i8*, i8** %3, align 8
  store i8* %7, i8** %5, align 8
  br label %8

8:                                                ; preds = %20, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 10
  br label %18

18:                                               ; preds = %13, %8
  %19 = phi i1 [ false, %8 ], [ %17, %13 ]
  br i1 %19, label %20, label %23

20:                                               ; preds = %18
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  br label %8

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  store i8* %24, i8** %6, align 8
  br label %25

25:                                               ; preds = %57, %23
  %26 = load i8*, i8** %6, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp ult i8* %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp ne i32 %33, 47
  br i1 %34, label %53, label %35

35:                                               ; preds = %29
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 47
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load i8*, i8** %6, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = icmp ugt i8* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 -1
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 92
  br label %51

51:                                               ; preds = %45, %41
  %52 = phi i1 [ false, %41 ], [ %50, %45 ]
  br label %53

53:                                               ; preds = %51, %35, %29
  %54 = phi i1 [ true, %35 ], [ true, %29 ], [ %52, %51 ]
  br label %55

55:                                               ; preds = %53, %25
  %56 = phi i1 [ false, %25 ], [ %54, %53 ]
  br i1 %56, label %57, label %60

57:                                               ; preds = %55
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  br label %25

60:                                               ; preds = %55
  %61 = load i8*, i8** %6, align 8
  %62 = load i8*, i8** %5, align 8
  %63 = icmp eq i8* %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load i8*, i8** %6, align 8
  %66 = load i8*, i8** %3, align 8
  %67 = icmp ugt i8* %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %64
  %69 = load i8*, i8** %6, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 -1
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 13
  br i1 %73, label %74, label %77

74:                                               ; preds = %68
  %75 = load i8*, i8** %6, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 -1
  store i8* %76, i8** %6, align 8
  br label %77

77:                                               ; preds = %74, %68, %64
  br label %95

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %91, %78
  %80 = load i8*, i8** %6, align 8
  %81 = load i8*, i8** %3, align 8
  %82 = icmp ugt i8* %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79
  %84 = load i8*, i8** %6, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 -1
  %86 = load i8, i8* %85, align 1
  %87 = call i64 @isspace(i8 signext %86)
  %88 = icmp ne i64 %87, 0
  br label %89

89:                                               ; preds = %83, %79
  %90 = phi i1 [ false, %79 ], [ %88, %83 ]
  br i1 %90, label %91, label %94

91:                                               ; preds = %89
  %92 = load i8*, i8** %6, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 -1
  store i8* %93, i8** %6, align 8
  br label %79

94:                                               ; preds = %89
  br label %95

95:                                               ; preds = %94, %77
  %96 = load i8*, i8** %6, align 8
  %97 = load i8**, i8*** %4, align 8
  store i8* %96, i8** %97, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 10
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i8*, i8** %5, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %5, align 8
  br label %105

105:                                              ; preds = %102, %95
  %106 = load i8*, i8** %5, align 8
  ret i8* %106
}

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
