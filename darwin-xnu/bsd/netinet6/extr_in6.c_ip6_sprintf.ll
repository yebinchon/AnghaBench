; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_ip6_sprintf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_ip6_sprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addr = type { i32 }

@ip6_sprintf.digits = internal constant [17 x i8] c"0123456789abcdef\00", align 16
@ip6_sprintf.ip6round = internal global i32 0, align 4
@ip6_sprintf.ip6buf = internal global [8 x [48 x i8]] zeroinitializer, align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ip6_sprintf(%struct.in6_addr* %0) #0 {
  %2 = alloca %struct.in6_addr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.in6_addr* %0, %struct.in6_addr** %2, align 8
  %10 = load %struct.in6_addr*, %struct.in6_addr** %2, align 8
  %11 = bitcast %struct.in6_addr* %10 to i64*
  store i64* %11, i64** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @ip6_sprintf.ip6round, align 4
  %13 = add nsw i32 %12, 1
  %14 = and i32 %13, 7
  store i32 %14, i32* @ip6_sprintf.ip6round, align 4
  %15 = load i32, i32* @ip6_sprintf.ip6round, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [8 x [48 x i8]], [8 x [48 x i8]]* @ip6_sprintf.ip6buf, i64 0, i64 %16
  %18 = getelementptr inbounds [48 x i8], [48 x i8]* %17, i64 0, i64 0
  store i8* %18, i8** %4, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %134, %1
  %20 = load i32, i32* %3, align 4
  %21 = icmp slt i32 %20, 8
  br i1 %21, label %22, label %137

22:                                               ; preds = %19
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 7
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  store i8 58, i8* %33, align 1
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i64*, i64** %5, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %5, align 8
  br label %134

38:                                               ; preds = %25
  store i32 2, i32* %8, align 4
  br label %39

39:                                               ; preds = %38
  br label %40

40:                                               ; preds = %39, %22
  %41 = load i64*, i64** %5, align 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %40
  %45 = load i32, i32* %8, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i64*, i64** %5, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %4, align 8
  store i8 58, i8* %56, align 1
  br label %58

58:                                               ; preds = %55, %52
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  store i8 58, i8* %59, align 1
  store i32 1, i32* %8, align 4
  br label %66

61:                                               ; preds = %47, %44
  %62 = load i8*, i8** %4, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %4, align 8
  store i8 48, i8* %62, align 1
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %4, align 8
  store i8 58, i8* %64, align 1
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i64*, i64** %5, align 8
  %68 = getelementptr inbounds i64, i64* %67, i32 1
  store i64* %68, i64** %5, align 8
  br label %134

69:                                               ; preds = %40
  %70 = load i64*, i64** %5, align 8
  %71 = bitcast i64* %70 to i32*
  store i32* %71, i32** %6, align 8
  store i32 0, i32* %9, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %72, align 4
  %74 = ashr i32 %73, 4
  store i32 %74, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [17 x i8], [17 x i8]* @ip6_sprintf.digits, i64 0, i64 %78
  %80 = load i8, i8* %79, align 1
  %81 = load i8*, i8** %4, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %4, align 8
  store i8 %80, i8* %81, align 1
  store i32 1, i32* %9, align 4
  br label %83

83:                                               ; preds = %76, %69
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %6, align 8
  %86 = load i32, i32* %84, align 4
  %87 = and i32 %86, 15
  store i32 %87, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89, %83
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [17 x i8], [17 x i8]* @ip6_sprintf.digits, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %4, align 8
  store i8 %96, i8* %97, align 1
  store i32 1, i32* %9, align 4
  br label %99

99:                                               ; preds = %92, %89
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 4
  store i32 %102, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %104, %99
  %108 = load i32, i32* %7, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds [17 x i8], [17 x i8]* @ip6_sprintf.digits, i64 0, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = load i8*, i8** %4, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %4, align 8
  store i8 %111, i8* %112, align 1
  store i32 1, i32* %9, align 4
  br label %114

114:                                              ; preds = %107, %104
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 15
  store i32 %117, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119, %114
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [17 x i8], [17 x i8]* @ip6_sprintf.digits, i64 0, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = load i8*, i8** %4, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %4, align 8
  store i8 %126, i8* %127, align 1
  br label %129

129:                                              ; preds = %122, %119
  %130 = load i8*, i8** %4, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %4, align 8
  store i8 58, i8* %130, align 1
  %132 = load i64*, i64** %5, align 8
  %133 = getelementptr inbounds i64, i64* %132, i32 1
  store i64* %133, i64** %5, align 8
  br label %134

134:                                              ; preds = %129, %66, %35
  %135 = load i32, i32* %3, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %3, align 4
  br label %19

137:                                              ; preds = %19
  %138 = load i8*, i8** %4, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 -1
  store i8* %139, i8** %4, align 8
  store i8 0, i8* %139, align 1
  %140 = load i32, i32* @ip6_sprintf.ip6round, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [8 x [48 x i8]], [8 x [48 x i8]]* @ip6_sprintf.ip6buf, i64 0, i64 %141
  %143 = getelementptr inbounds [48 x i8], [48 x i8]* %142, i64 0, i64 0
  ret i8* %143
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
