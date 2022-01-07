; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_CL_ConsolePrint.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_cl_console.c_CL_ConsolePrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { float*, i32, i32, i32, i32, i32*, i64*, i8* }
%struct.TYPE_5__ = type { i64 }

@qfalse = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"[skipnotify]\00", align 1
@qtrue = common dso_local global i8* null, align 8
@cl_noprint = common dso_local global %struct.TYPE_6__* null, align 8
@con = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@COLOR_WHITE = common dso_local global i8 0, align 1
@NUM_CON_TIMES = common dso_local global i32 0, align 4
@cls = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CL_ConsolePrint(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** @qfalse, align 8
  store i8* %9, i8** %7, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @Q_strncmp(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 12)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = load i8*, i8** @qtrue, align 8
  store i8* %14, i8** %7, align 8
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 12
  store i8* %16, i8** %2, align 8
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cl_noprint, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @cl_noprint, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %154

26:                                               ; preds = %20, %17
  %27 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 7), align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %40, label %29

29:                                               ; preds = %26
  %30 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 0), align 8
  %31 = getelementptr inbounds float, float* %30, i64 3
  store float 1.000000e+00, float* %31, align 4
  %32 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 0), align 8
  %33 = getelementptr inbounds float, float* %32, i64 2
  store float 1.000000e+00, float* %33, align 4
  %34 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 0), align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  store float 1.000000e+00, float* %35, align 4
  %36 = load float*, float** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 0), align 8
  %37 = getelementptr inbounds float, float* %36, i64 0
  store float 1.000000e+00, float* %37, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %38 = call i32 (...) @Con_CheckResize()
  %39 = load i8*, i8** @qtrue, align 8
  store i8* %39, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 7), align 8
  br label %40

40:                                               ; preds = %29, %26
  %41 = load i8, i8* @COLOR_WHITE, align 1
  %42 = call i32 @ColorIndex(i8 signext %41)
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %123, %52, %40
  %44 = load i8*, i8** %2, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  store i32 %46, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %124

48:                                               ; preds = %43
  %49 = load i8*, i8** %2, align 8
  %50 = call i64 @Q_IsColorString(i8* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = load i8*, i8** %2, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 1
  %55 = load i8, i8* %54, align 1
  %56 = call i32 @ColorIndex(i8 signext %55)
  store i32 %56, i32* %6, align 4
  %57 = load i8*, i8** %2, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 2
  store i8* %58, i8** %2, align 8
  br label %43

59:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %74, %59
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load i8*, i8** %2, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp sle i32 %70, 32
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %77

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %60

77:                                               ; preds = %72, %60
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %86 = icmp sge i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @Con_Linefeed(i8* %88)
  br label %90

90:                                               ; preds = %87, %81, %77
  %91 = load i8*, i8** %2, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %2, align 8
  %93 = load i32, i32* %4, align 4
  switch i32 %93, label %98 [
    i32 10, label %94
    i32 13, label %97
  ]

94:                                               ; preds = %90
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @Con_Linefeed(i8* %95)
  br label %123

97:                                               ; preds = %90
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  br label %123

98:                                               ; preds = %90
  %99 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 3), align 8
  %100 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 4), align 4
  %101 = srem i32 %99, %100
  store i32 %101, i32* %3, align 4
  %102 = load i32, i32* %6, align 4
  %103 = shl i32 %102, 8
  %104 = load i32, i32* %4, align 4
  %105 = or i32 %103, %104
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 5), align 8
  %107 = load i32, i32* %3, align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %111 = add nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %106, i64 %112
  store i32 %105, i32* %113, align 4
  %114 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  %117 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 1), align 8
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %98
  %120 = load i8*, i8** %7, align 8
  %121 = call i32 @Con_Linefeed(i8* %120)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 2), align 4
  br label %122

122:                                              ; preds = %119, %98
  br label %123

123:                                              ; preds = %122, %97, %94
  br label %43

124:                                              ; preds = %43
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 3), align 8
  %126 = icmp sge i32 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %124
  %128 = load i8*, i8** %7, align 8
  %129 = icmp ne i8* %128, null
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 3), align 8
  %132 = load i32, i32* @NUM_CON_TIMES, align 4
  %133 = srem i32 %131, %132
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %130
  %138 = load i32, i32* @NUM_CON_TIMES, align 4
  %139 = sub nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %137, %130
  %141 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 6), align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  store i64 0, i64* %144, align 8
  br label %153

145:                                              ; preds = %127
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @cls, i32 0, i32 0), align 8
  %147 = load i64*, i64** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 6), align 8
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @con, i32 0, i32 3), align 8
  %149 = load i32, i32* @NUM_CON_TIMES, align 4
  %150 = srem i32 %148, %149
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %147, i64 %151
  store i64 %146, i64* %152, align 8
  br label %153

153:                                              ; preds = %145, %140
  br label %154

154:                                              ; preds = %25, %153, %124
  ret void
}

declare dso_local i32 @Q_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @Con_CheckResize(...) #1

declare dso_local i32 @ColorIndex(i8 signext) #1

declare dso_local i64 @Q_IsColorString(i8*) #1

declare dso_local i32 @Con_Linefeed(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
