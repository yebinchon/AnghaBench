; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_ttime.c_parseTimeWithTz.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_ttime.c_parseTimeWithTz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

@TSDB_TIME_PRECISION_MILLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%Y-%m-%dT%H:%M:%S\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parseTimeWithTz(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.tm, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @TSDB_TIME_PRECISION_MILLI, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1000, i32 1000000
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = bitcast %struct.tm* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 4, i1 false)
  %21 = load i8*, i8** %5, align 8
  %22 = call i8* @strptime(i8* %21, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.tm* %10)
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %142

26:                                               ; preds = %3
  %27 = call i32 @timegm(%struct.tm* %10)
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i8* @forwardToTimeStringEnd(i8* %28)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 0
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 90
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 122
  br i1 %40, label %41, label %46

41:                                               ; preds = %35, %26
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32*, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  br label %141

46:                                               ; preds = %35
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 0
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 46
  br i1 %51, label %52, label %108

52:                                               ; preds = %46
  %53 = load i8*, i8** %11, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  store i8* %54, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @parseFraction(i8* %55, i8** %11, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 -1, i32* %4, align 4
  br label %142

60:                                               ; preds = %52
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %8, align 4
  %63 = mul nsw i32 %61, %62
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32*, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  store i8 %69, i8* %14, align 1
  %70 = load i8, i8* %14, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp ne i32 %71, 90
  br i1 %72, label %73, label %86

73:                                               ; preds = %60
  %74 = load i8, i8* %14, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp ne i32 %75, 122
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load i8, i8* %14, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 43
  br i1 %80, label %81, label %86

81:                                               ; preds = %77
  %82 = load i8, i8* %14, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 45
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -1, i32* %4, align 4
  br label %142

86:                                               ; preds = %81, %77, %73, %60
  %87 = load i8, i8* %14, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %88, 43
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = load i8, i8* %14, align 1
  %92 = sext i8 %91 to i32
  %93 = icmp eq i32 %92, 45
  br i1 %93, label %94, label %106

94:                                               ; preds = %90, %86
  %95 = load i8*, i8** %11, align 8
  %96 = call i32 @parseTimezone(i8* %95, i32* %9)
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 -1, i32* %4, align 4
  br label %142

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %8, align 4
  %102 = mul nsw i32 %100, %101
  %103 = load i32*, i32** %6, align 8
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, %102
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %90
  br label %107

107:                                              ; preds = %106
  br label %140

108:                                              ; preds = %46
  %109 = load i8*, i8** %11, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 43
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 45
  br i1 %119, label %120, label %138

120:                                              ; preds = %114, %108
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %8, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %123, %124
  %126 = load i32*, i32** %6, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i8*, i8** %11, align 8
  %128 = call i32 @parseTimezone(i8* %127, i32* %9)
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  store i32 -1, i32* %4, align 4
  br label %142

131:                                              ; preds = %120
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = mul nsw i32 %132, %133
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, %134
  store i32 %137, i32* %135, align 4
  br label %139

138:                                              ; preds = %114
  store i32 -1, i32* %4, align 4
  br label %142

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %107
  br label %141

141:                                              ; preds = %140, %41
  store i32 0, i32* %4, align 4
  br label %142

142:                                              ; preds = %141, %138, %130, %98, %85, %59, %25
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strptime(i8*, i8*, %struct.tm*) #2

declare dso_local i32 @timegm(%struct.tm*) #2

declare dso_local i8* @forwardToTimeStringEnd(i8*) #2

declare dso_local i32 @parseFraction(i8*, i8**, i32) #2

declare dso_local i32 @parseTimezone(i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
