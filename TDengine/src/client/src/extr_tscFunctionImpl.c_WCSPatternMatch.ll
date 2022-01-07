; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_WCSPatternMatch.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscFunctionImpl.c_WCSPatternMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_PATTERN_NOWILDCARDMATCH = common dso_local global i32 0, align 4
@TSDB_PATTERN_MATCH = common dso_local global i32 0, align 4
@TSDB_PATTERN_NOMATCH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @WCSPatternMatch(i64* %0, i64* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca [3 x i64], align 16
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 95, i64* %12, align 8
  store i64 37, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  br label %19

19:                                               ; preds = %140, %4
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %14, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %14, align 8
  %23 = getelementptr inbounds i64, i64* %20, i64 %21
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %145

26:                                               ; preds = %19
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %13, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %114

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %62, %30
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %14, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %14, align 8
  %35 = getelementptr inbounds i64, i64* %32, i64 %33
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %31
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %39, %31
  %44 = phi i1 [ true, %31 ], [ %42, %39 ]
  br i1 %44, label %45, label %63

45:                                               ; preds = %43
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* %12, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %45
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %49
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %15, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %15, align 8
  %57 = getelementptr inbounds i64, i64* %54, i64 %55
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53, %49
  %61 = load i32, i32* @TSDB_PATTERN_NOWILDCARDMATCH, align 4
  store i32 %61, i32* %5, align 4
  br label %163

62:                                               ; preds = %53, %45
  br label %31

63:                                               ; preds = %43
  %64 = load i64, i64* %10, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @TSDB_PATTERN_MATCH, align 4
  store i32 %67, i32* %5, align 4
  br label %163

68:                                               ; preds = %63
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %70 = load i64, i64* %10, align 8
  %71 = call i64 @towupper(i64 %70)
  store i64 %71, i64* %69, align 8
  %72 = getelementptr inbounds i64, i64* %69, i64 1
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @towlower(i64 %73)
  store i64 %74, i64* %72, align 8
  %75 = getelementptr inbounds i64, i64* %72, i64 1
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %68, %111
  %77 = load i64*, i64** %7, align 8
  %78 = getelementptr inbounds [3 x i64], [3 x i64]* %16, i64 0, i64 0
  %79 = call i64 @wcsspn(i64* %77, i64* %78)
  store i64 %79, i64* %17, align 8
  %80 = load i64, i64* %17, align 8
  %81 = load i64*, i64** %7, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 %80
  store i64* %82, i64** %7, align 8
  %83 = load i64*, i64** %7, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* %8, align 8
  %90 = sub i64 %89, 1
  %91 = icmp uge i64 %88, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %76
  br label %112

93:                                               ; preds = %87
  %94 = load i64*, i64** %7, align 8
  %95 = getelementptr inbounds i64, i64* %94, i32 1
  store i64* %95, i64** %7, align 8
  %96 = load i64*, i64** %6, align 8
  %97 = load i64, i64* %14, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  %99 = load i64*, i64** %7, align 8
  %100 = load i64*, i64** %7, align 8
  %101 = call i64 @wcslen(i64* %100)
  %102 = load i32*, i32** %9, align 8
  %103 = call i32 @WCSPatternMatch(i64* %98, i64* %99, i64 %101, i32* %102)
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %18, align 8
  %105 = load i64, i64* %18, align 8
  %106 = load i64, i64* @TSDB_PATTERN_NOMATCH, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load i64, i64* %18, align 8
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %5, align 4
  br label %163

111:                                              ; preds = %93
  br label %76

112:                                              ; preds = %92
  %113 = load i32, i32* @TSDB_PATTERN_NOWILDCARDMATCH, align 4
  store i32 %113, i32* %5, align 4
  br label %163

114:                                              ; preds = %26
  %115 = load i64*, i64** %7, align 8
  %116 = load i64, i64* %15, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* %15, align 8
  %118 = getelementptr inbounds i64, i64* %115, i64 %116
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %11, align 8
  %120 = load i64, i64* %15, align 8
  %121 = load i64, i64* %8, align 8
  %122 = icmp ule i64 %120, %121
  br i1 %122, label %123, label %142

123:                                              ; preds = %114
  %124 = load i64, i64* %10, align 8
  %125 = load i64, i64* %11, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %140, label %127

127:                                              ; preds = %123
  %128 = load i64, i64* %10, align 8
  %129 = call i64 @towlower(i64 %128)
  %130 = load i64, i64* %11, align 8
  %131 = call i64 @towlower(i64 %130)
  %132 = icmp eq i64 %129, %131
  br i1 %132, label %140, label %133

133:                                              ; preds = %127
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %12, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = load i64, i64* %11, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137, %127, %123
  br label %19

141:                                              ; preds = %137, %133
  br label %142

142:                                              ; preds = %141, %114
  %143 = load i64, i64* @TSDB_PATTERN_NOMATCH, align 8
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %5, align 4
  br label %163

145:                                              ; preds = %19
  %146 = load i64*, i64** %7, align 8
  %147 = load i64, i64* %15, align 8
  %148 = getelementptr inbounds i64, i64* %146, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %145
  %152 = load i64, i64* %15, align 8
  %153 = load i64, i64* %8, align 8
  %154 = icmp uge i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %151, %145
  %156 = load i32, i32* @TSDB_PATTERN_MATCH, align 4
  %157 = sext i32 %156 to i64
  br label %160

158:                                              ; preds = %151
  %159 = load i64, i64* @TSDB_PATTERN_NOMATCH, align 8
  br label %160

160:                                              ; preds = %158, %155
  %161 = phi i64 [ %157, %155 ], [ %159, %158 ]
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %5, align 4
  br label %163

163:                                              ; preds = %160, %142, %112, %108, %66, %60
  %164 = load i32, i32* %5, align 4
  ret i32 %164
}

declare dso_local i64 @towupper(i64) #1

declare dso_local i64 @towlower(i64) #1

declare dso_local i64 @wcsspn(i64*, i64*) #1

declare dso_local i64 @wcslen(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
