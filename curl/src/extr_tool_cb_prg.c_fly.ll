; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_cb_prg.c_fly.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_cb_prg.c_fly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ProgressData = type { i32, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%*s\0D\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"-=O=-\00", align 1
@sinus = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ProgressData*, i32)* @fly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fly(%struct.ProgressData* %0, i32 %1) #0 {
  %3 = alloca %struct.ProgressData*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ProgressData* %0, %struct.ProgressData** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %9 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 2
  store i32 %11, i32* %7, align 4
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %13 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %14 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 1
  %17 = call i32 @msnprintf(i8* %12, i32 256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %19 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %20
  %22 = call i32 @memcpy(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %23 = load i32*, i32** @sinus, align 8
  %24 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %25 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = srem i32 %26, 200
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %23, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sdiv i32 10000, %31
  %33 = sdiv i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %35
  store i8 35, i8* %36, align 1
  %37 = load i32*, i32** @sinus, align 8
  %38 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %39 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 5
  %42 = srem i32 %41, 200
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 10000, %46
  %48 = sdiv i32 %45, %47
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %50
  store i8 35, i8* %51, align 1
  %52 = load i32*, i32** @sinus, align 8
  %53 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %54 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 10
  %57 = srem i32 %56, 200
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %52, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %7, align 4
  %62 = sdiv i32 10000, %61
  %63 = sdiv i32 %60, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %65
  store i8 35, i8* %66, align 1
  %67 = load i32*, i32** @sinus, align 8
  %68 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %69 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 15
  %72 = srem i32 %71, 200
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %67, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = sdiv i32 10000, %76
  %78 = sdiv i32 %75, %77
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 %80
  store i8 35, i8* %81, align 1
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %83 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %84 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @fputs(i8* %82, i32 %85)
  %87 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %88 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %88, align 8
  %91 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %92 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp sge i32 %93, 200
  br i1 %94, label %95, label %100

95:                                               ; preds = %2
  %96 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %97 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sub nsw i32 %98, 200
  store i32 %99, i32* %97, align 8
  br label %100

100:                                              ; preds = %95, %2
  %101 = load i32, i32* %4, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %105 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  br label %108

107:                                              ; preds = %100
  br label %108

108:                                              ; preds = %107, %103
  %109 = phi i64 [ %106, %103 ], [ 0, %107 ]
  %110 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %111 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = add i64 %112, %109
  store i64 %113, i64* %111, align 8
  %114 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %115 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %118 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sub nsw i32 %119, 6
  %121 = sext i32 %120 to i64
  %122 = icmp uge i64 %116, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %108
  %124 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %125 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %124, i32 0, i32 3
  store i64 -1, i64* %125, align 8
  %126 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %127 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sub nsw i32 %128, 6
  %130 = sext i32 %129 to i64
  %131 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %132 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %131, i32 0, i32 1
  store i64 %130, i64* %132, align 8
  br label %144

133:                                              ; preds = %108
  %134 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %135 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ult i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %140 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %139, i32 0, i32 3
  store i64 1, i64* %140, align 8
  %141 = load %struct.ProgressData*, %struct.ProgressData** %3, align 8
  %142 = getelementptr inbounds %struct.ProgressData, %struct.ProgressData* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %123
  ret void
}

declare dso_local i32 @msnprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
