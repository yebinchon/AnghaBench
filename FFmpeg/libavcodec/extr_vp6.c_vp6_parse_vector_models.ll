; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_vector_models.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp6.c_vp6_parse_vector_models.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i8***, i8***, i8**, i8** }

@vp6_sig_dct_pct = common dso_local global i32** null, align 8
@vp6_pdv_pct = common dso_local global i32** null, align 8
@vp6_fdv_pct = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @vp6_parse_vector_models to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vp6_parse_vector_models(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32* %8, i32** %3, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %56, %1
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 2
  br i1 %14, label %15, label %59

15:                                               ; preds = %12
  %16 = load i32*, i32** %3, align 8
  %17 = load i32**, i32*** @vp6_sig_dct_pct, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @vp56_rac_get_prob_branchy(i32* %16, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %15
  %27 = load i32*, i32** %3, align 8
  %28 = call i8* @vp56_rac_gets_nn(i32* %27, i32 7)
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = load i8**, i8*** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  store i8* %28, i8** %34, align 8
  br label %35

35:                                               ; preds = %26, %15
  %36 = load i32*, i32** %3, align 8
  %37 = load i32**, i32*** @vp6_sig_dct_pct, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @vp56_rac_get_prob_branchy(i32* %36, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %35
  %47 = load i32*, i32** %3, align 8
  %48 = call i8* @vp56_rac_gets_nn(i32* %47, i32 7)
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %51, i64 %53
  store i8* %48, i8** %54, align 8
  br label %55

55:                                               ; preds = %46, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %5, align 4
  br label %12

59:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %98, %59
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %101

63:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %94, %63
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 7
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = load i32*, i32** %3, align 8
  %69 = load i32**, i32*** @vp6_pdv_pct, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @vp56_rac_get_prob_branchy(i32* %68, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %67
  %81 = load i32*, i32** %3, align 8
  %82 = call i8* @vp56_rac_gets_nn(i32* %81, i32 7)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i8***, i8**** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8**, i8*** %85, i64 %87
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8* %82, i8** %92, align 8
  br label %93

93:                                               ; preds = %80, %67
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %64

97:                                               ; preds = %64
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %60

101:                                              ; preds = %60
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %140, %101
  %103 = load i32, i32* %5, align 4
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %143

105:                                              ; preds = %102
  store i32 0, i32* %6, align 4
  br label %106

106:                                              ; preds = %136, %105
  %107 = load i32, i32* %6, align 4
  %108 = icmp slt i32 %107, 8
  br i1 %108, label %109, label %139

109:                                              ; preds = %106
  %110 = load i32*, i32** %3, align 8
  %111 = load i32**, i32*** @vp6_fdv_pct, align 8
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32*, i32** %111, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @vp56_rac_get_prob_branchy(i32* %110, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %109
  %123 = load i32*, i32** %3, align 8
  %124 = call i8* @vp56_rac_gets_nn(i32* %123, i32 7)
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i8***, i8**** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8**, i8*** %127, i64 %129
  %131 = load i8**, i8*** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %131, i64 %133
  store i8* %124, i8** %134, align 8
  br label %135

135:                                              ; preds = %122, %109
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %6, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %6, align 4
  br label %106

139:                                              ; preds = %106
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %102

143:                                              ; preds = %102
  ret void
}

declare dso_local i64 @vp56_rac_get_prob_branchy(i32*, i32) #1

declare dso_local i8* @vp56_rac_gets_nn(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
