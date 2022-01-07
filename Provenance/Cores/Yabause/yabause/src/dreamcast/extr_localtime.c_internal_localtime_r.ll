; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_localtime.c_internal_localtime_r.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/dreamcast/extr_localtime.c_internal_localtime_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i64, i64, i64, i64, i32, i64 }

@SECSPERDAY = common dso_local global i64 0, align 8
@SECSPERHOUR = common dso_local global i64 0, align 8
@SECSPERMIN = common dso_local global i64 0, align 8
@EPOCH_WDAY = common dso_local global i64 0, align 8
@DAYSPERWEEK = common dso_local global i64 0, align 8
@EPOCH_YEAR = common dso_local global i32 0, align 4
@year_lengths = common dso_local global i64* null, align 8
@YEAR_BASE = common dso_local global i64 0, align 8
@mon_lengths = common dso_local global i32** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tm* @internal_localtime_r(i64* %0, %struct.tm* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64* %0, i64** %3, align 8
  store %struct.tm* %1, %struct.tm** %4, align 8
  %10 = load i64*, i64** %3, align 8
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SECSPERDAY, align 8
  %13 = sdiv i64 %11, %12
  store i64 %13, i64* %5, align 8
  %14 = load i64*, i64** %3, align 8
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SECSPERDAY, align 8
  %17 = srem i64 %15, %16
  store i64 %17, i64* %6, align 8
  br label %18

18:                                               ; preds = %21, %2
  %19 = load i64, i64* %6, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load i64, i64* @SECSPERDAY, align 8
  %23 = load i64, i64* %6, align 8
  %24 = add nsw i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %5, align 8
  br label %18

27:                                               ; preds = %18
  br label %28

28:                                               ; preds = %32, %27
  %29 = load i64, i64* %6, align 8
  %30 = load i64, i64* @SECSPERDAY, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i64, i64* @SECSPERDAY, align 8
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %28

38:                                               ; preds = %28
  %39 = load i64, i64* %6, align 8
  %40 = load i64, i64* @SECSPERHOUR, align 8
  %41 = sdiv i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = load %struct.tm*, %struct.tm** %4, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* @SECSPERHOUR, align 8
  %46 = load i64, i64* %6, align 8
  %47 = srem i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  %49 = load i64, i64* @SECSPERMIN, align 8
  %50 = sdiv i64 %48, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.tm*, %struct.tm** %4, align 8
  %53 = getelementptr inbounds %struct.tm, %struct.tm* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @SECSPERMIN, align 8
  %56 = srem i64 %54, %55
  %57 = trunc i64 %56 to i32
  %58 = load %struct.tm*, %struct.tm** %4, align 8
  %59 = getelementptr inbounds %struct.tm, %struct.tm* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* @EPOCH_WDAY, align 8
  %61 = load i64, i64* %5, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i64, i64* @DAYSPERWEEK, align 8
  %64 = srem i64 %62, %63
  %65 = load %struct.tm*, %struct.tm** %4, align 8
  %66 = getelementptr inbounds %struct.tm, %struct.tm* %65, i32 0, i32 3
  store i64 %64, i64* %66, align 8
  %67 = icmp slt i64 %64, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %38
  %69 = load i64, i64* @DAYSPERWEEK, align 8
  %70 = load %struct.tm*, %struct.tm** %4, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  br label %74

74:                                               ; preds = %68, %38
  %75 = load i32, i32* @EPOCH_YEAR, align 4
  store i32 %75, i32* %7, align 4
  %76 = load i64, i64* %5, align 8
  %77 = icmp sge i64 %76, 0
  br i1 %77, label %78, label %101

78:                                               ; preds = %74
  br label %79

79:                                               ; preds = %90, %78
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @isleap(i32 %80)
  store i32 %81, i32* %8, align 4
  %82 = load i64, i64* %5, align 8
  %83 = load i64*, i64** @year_lengths, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %82, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  br label %100

90:                                               ; preds = %79
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  %93 = load i64*, i64** @year_lengths, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = sub nsw i64 %98, %97
  store i64 %99, i64* %5, align 8
  br label %79

100:                                              ; preds = %89
  br label %118

101:                                              ; preds = %74
  br label %102

102:                                              ; preds = %114, %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @isleap(i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i64*, i64** @year_lengths, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %107, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %5, align 8
  %113 = add nsw i64 %112, %111
  store i64 %113, i64* %5, align 8
  br label %114

114:                                              ; preds = %102
  %115 = load i64, i64* %5, align 8
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %102, label %117

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117, %100
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @YEAR_BASE, align 8
  %122 = sub nsw i64 %120, %121
  %123 = load %struct.tm*, %struct.tm** %4, align 8
  %124 = getelementptr inbounds %struct.tm, %struct.tm* %123, i32 0, i32 8
  store i64 %122, i64* %124, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load %struct.tm*, %struct.tm** %4, align 8
  %127 = getelementptr inbounds %struct.tm, %struct.tm* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load i32**, i32*** @mon_lengths, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %9, align 8
  %133 = load %struct.tm*, %struct.tm** %4, align 8
  %134 = getelementptr inbounds %struct.tm, %struct.tm* %133, i32 0, i32 5
  store i64 0, i64* %134, align 8
  br label %135

135:                                              ; preds = %155, %118
  %136 = load i64, i64* %5, align 8
  %137 = load i32*, i32** %9, align 8
  %138 = load %struct.tm*, %struct.tm** %4, align 8
  %139 = getelementptr inbounds %struct.tm, %struct.tm* %138, i32 0, i32 5
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp sge i64 %136, %143
  br i1 %144, label %145, label %160

145:                                              ; preds = %135
  %146 = load i32*, i32** %9, align 8
  %147 = load %struct.tm*, %struct.tm** %4, align 8
  %148 = getelementptr inbounds %struct.tm, %struct.tm* %147, i32 0, i32 5
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* %5, align 8
  %154 = sub nsw i64 %153, %152
  store i64 %154, i64* %5, align 8
  br label %155

155:                                              ; preds = %145
  %156 = load %struct.tm*, %struct.tm** %4, align 8
  %157 = getelementptr inbounds %struct.tm, %struct.tm* %156, i32 0, i32 5
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 1
  store i64 %159, i64* %157, align 8
  br label %135

160:                                              ; preds = %135
  %161 = load i64, i64* %5, align 8
  %162 = add nsw i64 %161, 1
  %163 = load %struct.tm*, %struct.tm** %4, align 8
  %164 = getelementptr inbounds %struct.tm, %struct.tm* %163, i32 0, i32 6
  store i64 %162, i64* %164, align 8
  %165 = load %struct.tm*, %struct.tm** %4, align 8
  %166 = getelementptr inbounds %struct.tm, %struct.tm* %165, i32 0, i32 7
  store i32 -1, i32* %166, align 8
  %167 = load %struct.tm*, %struct.tm** %4, align 8
  ret %struct.tm* %167
}

declare dso_local i32 @isleap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
