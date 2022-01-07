; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_c_mkgmtime.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_c_mkgmtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@ydays = common dso_local global i32* null, align 8
@TM_HOUR_MAX = common dso_local global i32 0, align 4
@TM_MDAY_MAX = common dso_local global i32 0, align 4
@TM_MIN_MAX = common dso_local global i32 0, align 4
@TM_MON_MAX = common dso_local global i64 0, align 8
@TM_SEC_MAX = common dso_local global i32 0, align 4
@TM_YEAR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @c_mkgmtime(%struct.tm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  %10 = load %struct.tm*, %struct.tm** %3, align 8
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, 1900
  store i32 %13, i32* %4, align 4
  %14 = load %struct.tm*, %struct.tm** %3, align 8
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.tm*, %struct.tm** %3, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = sub nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load %struct.tm*, %struct.tm** %3, align 8
  %22 = getelementptr inbounds %struct.tm, %struct.tm* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.tm*, %struct.tm** %3, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.tm*, %struct.tm** %3, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ADJUST_TM(i32 %30, i32 %31, i32 60)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @ADJUST_TM(i32 %33, i32 %34, i32 60)
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @ADJUST_TM(i32 %36, i32 %37, i32 24)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @ADJUST_TM(i32 %39, i32 %40, i32 12)
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %58, %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %4, align 4
  store i32 11, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %45
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @monthlen(i32 %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %58

58:                                               ; preds = %52
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %45, label %61

61:                                               ; preds = %58
  br label %83

62:                                               ; preds = %1
  br label %63

63:                                               ; preds = %81, %62
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @monthlen(i32 %65, i32 %66)
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %82

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @monthlen(i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = sub nsw i32 %73, %72
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  %77 = icmp sge i32 %76, 12
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %69
  br label %63

82:                                               ; preds = %63
  br label %83

83:                                               ; preds = %82, %61
  %84 = load i32, i32* %4, align 4
  %85 = sub nsw i32 %84, 1900
  %86 = load %struct.tm*, %struct.tm** %3, align 8
  %87 = getelementptr inbounds %struct.tm, %struct.tm* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.tm*, %struct.tm** %3, align 8
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  %93 = load %struct.tm*, %struct.tm** %3, align 8
  %94 = getelementptr inbounds %struct.tm, %struct.tm* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.tm*, %struct.tm** %3, align 8
  %97 = getelementptr inbounds %struct.tm, %struct.tm* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.tm*, %struct.tm** %3, align 8
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.tm*, %struct.tm** %3, align 8
  %103 = getelementptr inbounds %struct.tm, %struct.tm* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** @ydays, align 8
  %105 = load i32, i32* %5, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp sgt i32 %109, 1
  br i1 %110, label %111, label %115

111:                                              ; preds = %83
  %112 = load i32, i32* %4, align 4
  %113 = call i64 @leap(i32 %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %111, %83
  %116 = phi i1 [ false, %83 ], [ %114, %111 ]
  %117 = zext i1 %116 to i32
  %118 = add nsw i32 %108, %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load %struct.tm*, %struct.tm** %3, align 8
  %123 = getelementptr inbounds %struct.tm, %struct.tm* %122, i32 0, i32 6
  store i32 %121, i32* %123, align 8
  %124 = load i32, i32* %6, align 4
  %125 = load i32, i32* %4, align 4
  %126 = sub nsw i32 %125, 1970
  %127 = mul i32 365, %126
  %128 = add i32 %124, %127
  %129 = load i32, i32* %4, align 4
  %130 = call i64 @nleap(i32 %129)
  %131 = trunc i64 %130 to i32
  %132 = add i32 %128, %131
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = add i32 %133, 4
  %135 = urem i32 %134, 7
  %136 = load %struct.tm*, %struct.tm** %3, align 8
  %137 = getelementptr inbounds %struct.tm, %struct.tm* %136, i32 0, i32 7
  store i32 %135, i32* %137, align 4
  %138 = load %struct.tm*, %struct.tm** %3, align 8
  %139 = getelementptr inbounds %struct.tm, %struct.tm* %138, i32 0, i32 8
  store i64 0, i64* %139, align 8
  %140 = load i32, i32* %4, align 4
  %141 = icmp slt i32 %140, 1970
  br i1 %141, label %142, label %143

142:                                              ; preds = %115
  store i32 -1, i32* %2, align 4
  br label %158

143:                                              ; preds = %115
  %144 = load i32, i32* %6, align 4
  %145 = zext i32 %144 to i64
  %146 = mul i64 86400, %145
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 3600, %148
  %150 = add i64 %146, %149
  %151 = load i32, i32* %8, align 4
  %152 = mul nsw i32 60, %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = add i64 %150, %155
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %143, %142
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @ADJUST_TM(i32, i32, i32) #1

declare dso_local i32 @monthlen(i32, i32) #1

declare dso_local i64 @leap(i32) #1

declare dso_local i64 @nleap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
