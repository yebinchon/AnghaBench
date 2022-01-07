; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_compfile.c_CompFile_DCMtoATR.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_compfile.c_CompFile_DCMtoATR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [24 x i8] c"This is not a DCM image\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Expected pass one first\00", align 1
@.str.2 = private unnamed_addr constant [77 x i8] c"It seems that DCMs of a multi-file archive have been combined in wrong order\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Unrecognized density\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Multi-part archive error.\00", align 1
@.str.5 = private unnamed_addr constant [77 x i8] c"To process these files, you must first combine the files into a single file.\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"cat file1.dcm file2.dcm file3.dcm >newfile.dcm from the shell\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Density changed inside DCM archive?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CompFile_DCMtoATR(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_5__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @fgetc(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 249
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 250
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = call i32 @Log_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %123

22:                                               ; preds = %16, %2
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @fgetc(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 31
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = call i32 @Log_print(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 249
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = call i32 @Log_print(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.2, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, i32* @FALSE, align 4
  store i32 %35, i32* %3, align 4
  br label %123

36:                                               ; preds = %22
  %37 = load i32*, i32** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i32* %37, i32** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 5
  %42 = and i32 %41, 3
  switch i32 %42, label %52 [
    i32 0, label %43
    i32 1, label %46
    i32 2, label %49
  ]

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 720, i32* %44, align 4
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 128, i32* %45, align 8
  br label %55

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 720, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 256, i32* %48, align 8
  br label %55

49:                                               ; preds = %36
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 1040, i32* %50, align 4
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  store i32 128, i32* %51, align 8
  br label %55

52:                                               ; preds = %36
  %53 = call i32 @Log_print(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %3, align 4
  br label %123

55:                                               ; preds = %49, %46, %43
  %56 = call i32 @write_atr_header(%struct.TYPE_5__* %8)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %3, align 4
  br label %123

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %103, %60
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @dcm_pass(i32* %63, %struct.TYPE_5__* %8)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* @FALSE, align 4
  store i32 %67, i32* %3, align 4
  br label %123

68:                                               ; preds = %62
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 128
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  br label %104

73:                                               ; preds = %68
  %74 = load i32*, i32** %4, align 8
  %75 = call i32 @fgetc(i32* %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @EOF, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %84, 249
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = call i32 @Log_print(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %88 = call i32 @Log_print(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.5, i64 0, i64 0))
  %89 = call i32 @Log_print(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0))
  br label %90

90:                                               ; preds = %86, %83, %79
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %3, align 4
  br label %123

92:                                               ; preds = %73
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @fgetc(i32* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %7, align 4
  %97 = xor i32 %95, %96
  %98 = and i32 %97, 96
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = call i32 @Log_print(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %3, align 4
  br label %123

103:                                              ; preds = %92
  br label %62

104:                                              ; preds = %72
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = icmp sle i32 %108, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %104
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  %116 = call i32 @pad_till_sector(%struct.TYPE_5__* %8, i32 %115)
  store i32 %116, i32* %3, align 4
  br label %123

117:                                              ; preds = %104
  %118 = load i32, i32* %10, align 4
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  store i32 %118, i32* %119, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = call i32 @Util_rewind(i32* %120)
  %122 = call i32 @write_atr_header(%struct.TYPE_5__* %8)
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %117, %112, %100, %90, %66, %58, %52, %34, %19
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @Log_print(i8*) #1

declare dso_local i32 @write_atr_header(%struct.TYPE_5__*) #1

declare dso_local i32 @dcm_pass(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @pad_till_sector(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @Util_rewind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
