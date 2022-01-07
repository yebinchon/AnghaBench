; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_roll_up.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ccaption_dec.c_roll_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.Screen = type { i64, i32*, i32*, i32*, i32* }

@CCMODE_TEXT = common dso_local global i64 0, align 8
@SCREEN_ROWS = common dso_local global i32 0, align 4
@SCREEN_COLUMNS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @roll_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @roll_up(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.Screen*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @CCMODE_TEXT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %166

13:                                               ; preds = %1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = call %struct.Screen* @get_writing_screen(%struct.TYPE_4__* %14)
  store %struct.Screen* %15, %struct.Screen** %3, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @FFMIN(i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %49, %13
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SCREEN_ROWS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %52

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sub nsw i32 %32, %33
  %35 = icmp sgt i32 %29, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sle i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %49

43:                                               ; preds = %36, %28
  %44 = load %struct.Screen*, %struct.Screen** %3, align 8
  %45 = getelementptr inbounds %struct.Screen, %struct.Screen* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @UNSET_FLAG(i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %42
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %24

52:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %155, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load %struct.Screen*, %struct.Screen** %3, align 8
  %59 = getelementptr inbounds %struct.Screen, %struct.Screen* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br label %62

62:                                               ; preds = %57, %53
  %63 = phi i1 [ false, %53 ], [ %61, %57 ]
  br i1 %63, label %64, label %158

64:                                               ; preds = %62
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sub nsw i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %69, %70
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  %73 = load %struct.Screen*, %struct.Screen** %3, align 8
  %74 = getelementptr inbounds %struct.Screen, %struct.Screen* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.Screen*, %struct.Screen** %3, align 8
  %81 = getelementptr inbounds %struct.Screen, %struct.Screen* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @SCREEN_COLUMNS, align 4
  %89 = call i32 @memcpy(i32 %79, i32 %87, i32 %88)
  %90 = load %struct.Screen*, %struct.Screen** %3, align 8
  %91 = getelementptr inbounds %struct.Screen, %struct.Screen* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.Screen*, %struct.Screen** %3, align 8
  %98 = getelementptr inbounds %struct.Screen, %struct.Screen* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = add nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @SCREEN_COLUMNS, align 4
  %106 = call i32 @memcpy(i32 %96, i32 %104, i32 %105)
  %107 = load %struct.Screen*, %struct.Screen** %3, align 8
  %108 = getelementptr inbounds %struct.Screen, %struct.Screen* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.Screen*, %struct.Screen** %3, align 8
  %115 = getelementptr inbounds %struct.Screen, %struct.Screen* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SCREEN_COLUMNS, align 4
  %123 = call i32 @memcpy(i32 %113, i32 %121, i32 %122)
  %124 = load %struct.Screen*, %struct.Screen** %3, align 8
  %125 = getelementptr inbounds %struct.Screen, %struct.Screen* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %6, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.Screen*, %struct.Screen** %3, align 8
  %132 = getelementptr inbounds %struct.Screen, %struct.Screen* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SCREEN_COLUMNS, align 4
  %140 = call i32 @memcpy(i32 %130, i32 %138, i32 %139)
  %141 = load %struct.Screen*, %struct.Screen** %3, align 8
  %142 = getelementptr inbounds %struct.Screen, %struct.Screen* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  %146 = call i64 @CHECK_FLAG(i64 %143, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %64
  %149 = load %struct.Screen*, %struct.Screen** %3, align 8
  %150 = getelementptr inbounds %struct.Screen, %struct.Screen* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @SET_FLAG(i64 %151, i32 %152)
  br label %154

154:                                              ; preds = %148, %64
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %4, align 4
  br label %53

158:                                              ; preds = %62
  %159 = load %struct.Screen*, %struct.Screen** %3, align 8
  %160 = getelementptr inbounds %struct.Screen, %struct.Screen* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @UNSET_FLAG(i64 %161, i32 %164)
  br label %166

166:                                              ; preds = %158, %12
  ret void
}

declare dso_local %struct.Screen* @get_writing_screen(%struct.TYPE_4__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @UNSET_FLAG(i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i64 @CHECK_FLAG(i64, i32) #1

declare dso_local i32 @SET_FLAG(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
