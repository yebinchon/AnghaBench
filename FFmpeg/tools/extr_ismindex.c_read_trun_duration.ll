; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_read_trun_duration.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_ismindex.c_read_trun_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MOV_TRUN_SAMPLE_DURATION = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"No sample duration in trun flags\0A\00", align 1
@MOV_TRUN_DATA_OFFSET = common dso_local global i32 0, align 4
@MOV_TRUN_FIRST_SAMPLE_FLAGS = common dso_local global i32 0, align 4
@MOV_TRUN_SAMPLE_SIZE = common dso_local global i32 0, align 4
@MOV_TRUN_SAMPLE_FLAGS = common dso_local global i32 0, align 4
@MOV_TRUN_SAMPLE_CTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Negative sample duration %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @read_trun_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_trun_duration(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @avio_r8(i32* %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @avio_rb24(i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @MOV_TRUN_SAMPLE_DURATION, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %29, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %128

31:                                               ; preds = %23, %3
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @avio_rb32(i32* %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @MOV_TRUN_DATA_OFFSET, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @avio_rb32(i32* %39)
  br label %41

41:                                               ; preds = %38, %31
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MOV_TRUN_FIRST_SAMPLE_FLAGS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @avio_rb32(i32* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @avio_tell(i32* %50)
  store i32 %51, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %121, %49
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ false, %52 ], [ %59, %56 ]
  br i1 %61, label %62, label %124

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %15, align 4
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %16, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @MOV_TRUN_SAMPLE_DURATION, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @avio_rb32(i32* %70)
  store i32 %71, i32* %15, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @MOV_TRUN_SAMPLE_SIZE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32*, i32** %5, align 8
  %79 = call i32 @avio_rb32(i32* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @MOV_TRUN_SAMPLE_FLAGS, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @avio_rb32(i32* %86)
  br label %88

88:                                               ; preds = %85, %80
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @MOV_TRUN_SAMPLE_CTS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @avio_rb32(i32* %94)
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = load i32, i32* %15, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %98
  %102 = load i32, i32* @stderr, align 4
  %103 = load i32, i32* %15, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  store i32 -1, i32* %4, align 4
  br label %128

105:                                              ; preds = %98
  %106 = load i32, i32* %11, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = load i32, i32* %16, align 4
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %108, %105
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %112, %113
  %115 = call i32 @FFMAX(i32 %111, i32 %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %8, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = call i32 @avio_tell(i32* %119)
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %110
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %52

124:                                              ; preds = %60
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sub nsw i32 %125, %126
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %124, %101, %28
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @avio_rb24(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @avio_rb32(i32*) #1

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
