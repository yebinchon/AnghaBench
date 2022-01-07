; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspSlotDebugStats.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp.c_ScspSlotDebugStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [16 x i8] c"Sound Source = \00", align 1
@scsp = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"External DRAM data\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Internal(Noise)\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Internal(0's)\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Invalid setting\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Source bit = \00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"No bit reversal\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Reverse other bits\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Reverse sign bit\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"Reverse sign and other bits\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Loop Mode = \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"Off\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"Normal\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Reverse\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"Alternating\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"8-bit samples\0D\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"16-bit samples\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Start Address = %05lX\0D\0A\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Loop Start Address = %04lX\0D\0A\00", align 1
@SCSP_FREQ_LB = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [27 x i8] c"Loop End Address = %04lX\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"Decay 1 Rate = %ld\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"Decay 2 Rate = %ld\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"EG Hold Enabled\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"Attack Rate = %ld\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Loop Start Link Enabled\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"Key rate scaling = %ld\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Decay Level = %d\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Release Rate = %ld\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Stack Write Inhibited\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Sound Direct Enabled\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Total Level = %ld\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"Modulation Level = %d\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Modulation Input X = %d\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Modulation Input Y = %d\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Octave = %d\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Frequency Number Switch = %d\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"LFO Reset = %s\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"LFO Frequency = %d\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"LFO Frequency modulation waveform = \00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"LFO Frequency modulation level = %d\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [37 x i8] c"LFO Amplitude modulation waveform = \00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"LFO Amplitude modulation level = %d\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Input mix level = \00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"Input Select = %d\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"Direct data send level = \00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Direct data panpot = \00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Effect data send level = \00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"Effect data panpot = \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScspSlotDebugStats(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = mul nsw i32 %6, 32
  store i32 %7, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, i8*, ...) @AddString(i8* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %25 [
    i32 0, label %16
    i32 1, label %19
    i32 2, label %22
  ]

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i8*, i8*, ...) @AddString(i8* %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %28

19:                                               ; preds = %2
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 (i8*, i8*, ...) @AddString(i8* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %28

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 (i8*, i8*, ...) @AddString(i8* %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %28

25:                                               ; preds = %2
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 (i8*, i8*, ...) @AddString(i8* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %22, %19, %16
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i8*, i8*, ...) @AddString(i8* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %49 [
    i32 0, label %37
    i32 1, label %40
    i32 2, label %43
    i32 3, label %46
  ]

37:                                               ; preds = %28
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 (i8*, i8*, ...) @AddString(i8* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %49

40:                                               ; preds = %28
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 (i8*, i8*, ...) @AddString(i8* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %49

43:                                               ; preds = %28
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 (i8*, i8*, ...) @AddString(i8* %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %49

46:                                               ; preds = %28
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 (i8*, i8*, ...) @AddString(i8* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %49

49:                                               ; preds = %28, %46, %43, %40, %37
  %50 = load i8*, i8** %4, align 8
  %51 = call i32 (i8*, i8*, ...) @AddString(i8* %50, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %70 [
    i32 0, label %58
    i32 1, label %61
    i32 2, label %64
    i32 3, label %67
  ]

58:                                               ; preds = %49
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 (i8*, i8*, ...) @AddString(i8* %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %70

61:                                               ; preds = %49
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i8*, i8*, ...) @AddString(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %70

64:                                               ; preds = %49
  %65 = load i8*, i8** %4, align 8
  %66 = call i32 (i8*, i8*, ...) @AddString(i8* %65, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %70

67:                                               ; preds = %49
  %68 = load i8*, i8** %4, align 8
  %69 = call i32 (i8*, i8*, ...) @AddString(i8* %68, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %70

70:                                               ; preds = %49, %67, %64, %61, %58
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 19
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i8*, i8** %4, align 8
  %80 = call i32 (i8*, i8*, ...) @AddString(i8* %79, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %84

81:                                               ; preds = %70
  %82 = load i8*, i8** %4, align 8
  %83 = call i32 (i8*, i8*, ...) @AddString(i8* %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i8*, i8** %4, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 18
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (i8*, i8*, ...) @AddString(i8* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i64 %91)
  %93 = load i8*, i8** %4, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 17
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SCSP_FREQ_LB, align 8
  %101 = lshr i64 %99, %100
  %102 = call i32 (i8*, i8*, ...) @AddString(i8* %93, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i64 %101)
  %103 = load i8*, i8** %4, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 16
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @SCSP_FREQ_LB, align 8
  %111 = lshr i64 %109, %110
  %112 = call i32 (i8*, i8*, ...) @AddString(i8* %103, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0), i64 %111)
  %113 = load i8*, i8** %4, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 15
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (i8*, i8*, ...) @AddString(i8* %113, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0), i64 %119)
  %121 = load i8*, i8** %4, align 8
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 14
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (i8*, i8*, ...) @AddString(i8* %121, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i64 %127)
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %130 = load i32, i32* %3, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 13
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %84
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 (i8*, i8*, ...) @AddString(i8* %137, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %84
  %140 = load i8*, i8** %4, align 8
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %142 = load i32, i32* %3, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 12
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i8*, i8*, ...) @AddString(i8* %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0), i64 %146)
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %149 = load i32, i32* %3, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 11
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %139
  %156 = load i8*, i8** %4, align 8
  %157 = call i32 (i8*, i8*, ...) @AddString(i8* %156, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  br label %158

158:                                              ; preds = %155, %139
  %159 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %160 = load i32, i32* %3, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %175

166:                                              ; preds = %158
  %167 = load i8*, i8** %4, align 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 3
  %173 = load i64, i64* %172, align 8
  %174 = call i32 (i8*, i8*, ...) @AddString(i8* %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i64 0, i64 0), i64 %173)
  br label %175

175:                                              ; preds = %166, %158
  %176 = load i8*, i8** %4, align 8
  %177 = load i32, i32* %5, align 4
  %178 = add nsw i32 %177, 10
  %179 = call i32 @scsp_r_w(i32 %178)
  %180 = ashr i32 %179, 5
  %181 = and i32 %180, 31
  %182 = call i32 (i8*, i8*, ...) @AddString(i8* %176, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %181)
  %183 = load i8*, i8** %4, align 8
  %184 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %185 = load i32, i32* %3, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 10
  %189 = load i64, i64* %188, align 8
  %190 = call i32 (i8*, i8*, ...) @AddString(i8* %183, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.27, i64 0, i64 0), i64 %189)
  %191 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %192 = load i32, i32* %3, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 9
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %175
  %199 = load i8*, i8** %4, align 8
  %200 = call i32 (i8*, i8*, ...) @AddString(i8* %199, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %175
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %203 = load i32, i32* %3, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 8
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %201
  %210 = load i8*, i8** %4, align 8
  %211 = call i32 (i8*, i8*, ...) @AddString(i8* %210, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %201
  %213 = load i8*, i8** %4, align 8
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %215 = load i32, i32* %3, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 7
  %219 = load i64, i64* %218, align 8
  %220 = call i32 (i8*, i8*, ...) @AddString(i8* %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0), i64 %219)
  %221 = load i8*, i8** %4, align 8
  %222 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %223 = load i32, i32* %3, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = call i32 (i8*, i8*, ...) @AddString(i8* %221, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32 %227)
  %229 = load i8*, i8** %4, align 8
  %230 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  %236 = call i32 (i8*, i8*, ...) @AddString(i8* %229, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 %235)
  %237 = load i8*, i8** %4, align 8
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 8
  %244 = call i32 (i8*, i8*, ...) @AddString(i8* %237, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), i32 %243)
  %245 = load i8*, i8** %4, align 8
  %246 = load i32, i32* %5, align 4
  %247 = add nsw i32 %246, 16
  %248 = call i32 @scsp_r_w(i32 %247)
  %249 = ashr i32 %248, 11
  %250 = and i32 %249, 15
  %251 = call i32 (i8*, i8*, ...) @AddString(i8* %245, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i32 %250)
  %252 = load i8*, i8** %4, align 8
  %253 = load i32, i32* %5, align 4
  %254 = add nsw i32 %253, 16
  %255 = call i32 @scsp_r_w(i32 %254)
  %256 = and i32 %255, 1023
  %257 = call i32 (i8*, i8*, ...) @AddString(i8* %252, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 %256)
  %258 = load i8*, i8** %4, align 8
  %259 = load i32, i32* %5, align 4
  %260 = add nsw i32 %259, 18
  %261 = call i32 @scsp_r_w(i32 %260)
  %262 = ashr i32 %261, 15
  %263 = and i32 %262, 1
  %264 = icmp ne i32 %263, 0
  %265 = zext i1 %264 to i64
  %266 = select i1 %264, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)
  %267 = call i32 (i8*, i8*, ...) @AddString(i8* %258, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* %266)
  %268 = load i8*, i8** %4, align 8
  %269 = load i32, i32* %5, align 4
  %270 = add nsw i32 %269, 18
  %271 = call i32 @scsp_r_w(i32 %270)
  %272 = ashr i32 %271, 10
  %273 = and i32 %272, 31
  %274 = call i32 (i8*, i8*, ...) @AddString(i8* %268, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i32 %273)
  %275 = load i8*, i8** %4, align 8
  %276 = load i32, i32* %5, align 4
  %277 = add nsw i32 %276, 18
  %278 = call i32 @scsp_r_w(i32 %277)
  %279 = ashr i32 %278, 5
  %280 = and i32 %279, 7
  %281 = load i32, i32* %5, align 4
  %282 = add nsw i32 %281, 18
  %283 = call i32 @scsp_r_w(i32 %282)
  %284 = ashr i32 %283, 8
  %285 = and i32 %284, 3
  %286 = call i8* @AddSoundLFO(i8* %275, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i64 0, i64 0), i32 %280, i32 %285)
  store i8* %286, i8** %4, align 8
  %287 = load i8*, i8** %4, align 8
  %288 = load i32, i32* %5, align 4
  %289 = add nsw i32 %288, 18
  %290 = call i32 @scsp_r_w(i32 %289)
  %291 = ashr i32 %290, 5
  %292 = and i32 %291, 7
  %293 = call i32 (i8*, i8*, ...) @AddString(i8* %287, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i64 0, i64 0), i32 %292)
  %294 = load i8*, i8** %4, align 8
  %295 = load i32, i32* %5, align 4
  %296 = add nsw i32 %295, 18
  %297 = call i32 @scsp_r_w(i32 %296)
  %298 = and i32 %297, 7
  %299 = load i32, i32* %5, align 4
  %300 = add nsw i32 %299, 18
  %301 = call i32 @scsp_r_w(i32 %300)
  %302 = ashr i32 %301, 3
  %303 = and i32 %302, 3
  %304 = call i8* @AddSoundLFO(i8* %294, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.42, i64 0, i64 0), i32 %298, i32 %303)
  store i8* %304, i8** %4, align 8
  %305 = load i8*, i8** %4, align 8
  %306 = load i32, i32* %5, align 4
  %307 = add nsw i32 %306, 18
  %308 = call i32 @scsp_r_w(i32 %307)
  %309 = and i32 %308, 7
  %310 = call i32 (i8*, i8*, ...) @AddString(i8* %305, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i64 0, i64 0), i32 %309)
  %311 = load i8*, i8** %4, align 8
  %312 = call i32 (i8*, i8*, ...) @AddString(i8* %311, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0))
  %313 = load i8*, i8** %4, align 8
  %314 = load i32, i32* %5, align 4
  %315 = add nsw i32 %314, 20
  %316 = call i32 @scsp_r_w(i32 %315)
  %317 = and i32 %316, 7
  %318 = call i8* @AddSoundLevel(i8* %313, i32 %317)
  store i8* %318, i8** %4, align 8
  %319 = load i8*, i8** %4, align 8
  %320 = load i32, i32* %5, align 4
  %321 = add nsw i32 %320, 20
  %322 = call i32 @scsp_r_w(i32 %321)
  %323 = ashr i32 %322, 3
  %324 = and i32 %323, 31
  %325 = call i32 (i8*, i8*, ...) @AddString(i8* %319, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i32 %324)
  %326 = load i8*, i8** %4, align 8
  %327 = call i32 (i8*, i8*, ...) @AddString(i8* %326, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0))
  %328 = load i8*, i8** %4, align 8
  %329 = load i32, i32* %5, align 4
  %330 = add nsw i32 %329, 22
  %331 = call i32 @scsp_r_w(i32 %330)
  %332 = ashr i32 %331, 13
  %333 = and i32 %332, 7
  %334 = call i8* @AddSoundLevel(i8* %328, i32 %333)
  store i8* %334, i8** %4, align 8
  %335 = load i8*, i8** %4, align 8
  %336 = call i32 (i8*, i8*, ...) @AddString(i8* %335, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0))
  %337 = load i8*, i8** %4, align 8
  %338 = load i32, i32* %5, align 4
  %339 = add nsw i32 %338, 22
  %340 = call i32 @scsp_r_w(i32 %339)
  %341 = ashr i32 %340, 8
  %342 = and i32 %341, 31
  %343 = call i8* @AddSoundPan(i8* %337, i32 %342)
  store i8* %343, i8** %4, align 8
  %344 = load i8*, i8** %4, align 8
  %345 = call i32 (i8*, i8*, ...) @AddString(i8* %344, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0))
  %346 = load i8*, i8** %4, align 8
  %347 = load i32, i32* %5, align 4
  %348 = add nsw i32 %347, 22
  %349 = call i32 @scsp_r_w(i32 %348)
  %350 = ashr i32 %349, 5
  %351 = and i32 %350, 7
  %352 = call i8* @AddSoundLevel(i8* %346, i32 %351)
  store i8* %352, i8** %4, align 8
  %353 = load i8*, i8** %4, align 8
  %354 = call i32 (i8*, i8*, ...) @AddString(i8* %353, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0))
  %355 = load i8*, i8** %4, align 8
  %356 = load i32, i32* %5, align 4
  %357 = add nsw i32 %356, 22
  %358 = call i32 @scsp_r_w(i32 %357)
  %359 = and i32 %358, 31
  %360 = call i8* @AddSoundPan(i8* %355, i32 %359)
  store i8* %360, i8** %4, align 8
  ret void
}

declare dso_local i32 @AddString(i8*, i8*, ...) #1

declare dso_local i32 @scsp_r_w(i32) #1

declare dso_local i8* @AddSoundLFO(i8*, i8*, i32, i32) #1

declare dso_local i8* @AddSoundLevel(i8*, i32) #1

declare dso_local i8* @AddSoundPan(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
