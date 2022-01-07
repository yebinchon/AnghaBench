; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspSlotDebugStats.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scsp2.c_ScspSlotDebugStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32, i64, i64 }

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
@.str.18 = private unnamed_addr constant [28 x i8] c"Loop Start Address = %04X\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Loop End Address = %04X\0D\0A\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"Decay 1 Rate = %d\0D\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"Decay 2 Rate = %d\0D\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"EG Hold Enabled\0D\0A\00", align 1
@.str.23 = private unnamed_addr constant [19 x i8] c"Attack Rate = %d\0D\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Loop Start Link Enabled\0D\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Key rate scaling = %d\0D\0A\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Decay Level = %d\0D\0A\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"Release Rate = %d\0D\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Stack Write Inhibited\0D\0A\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"Sound Direct Enabled\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Total Level = %d\0D\0A\00", align 1
@.str.31 = private unnamed_addr constant [24 x i8] c"Modulation Level = %d\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Modulation Input X = %d\0D\0A\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Modulation Input Y = %d\0D\0A\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"Octave = %d\0D\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"Frequency Number Switch = %d\0D\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"LFO Reset = %s\0D\0A\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"LFO Frequency = %d\0D\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"LFO Frequency modulation waveform =\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"LFO Frequency modulation level = %d\0D\0A\00", align 1
@.str.42 = private unnamed_addr constant [36 x i8] c"LFO Amplitude modulation waveform =\00", align 1
@.str.43 = private unnamed_addr constant [38 x i8] c"LFO Amplitude modulation level = %d\0D\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Input mix level = \00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"Input Select = %d\0D\0A\00", align 1
@.str.46 = private unnamed_addr constant [26 x i8] c"Direct data send level = \00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"Direct data panpot = \00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"Effect data send level = \00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"Effect data panpot = \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScspSlotDebugStats(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i32 (i8*, i8*, ...) @AddString(i8* %5, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %21 [
    i32 0, label %12
    i32 1, label %15
    i32 2, label %18
  ]

12:                                               ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, i8*, ...) @AddString(i8* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %24

15:                                               ; preds = %2
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 (i8*, i8*, ...) @AddString(i8* %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %24

18:                                               ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 (i8*, i8*, ...) @AddString(i8* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 (i8*, i8*, ...) @AddString(i8* %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %18, %15, %12
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i8*, i8*, ...) @AddString(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %28 = load i64, i64* %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %44 [
    i32 0, label %32
    i32 1, label %35
    i32 2, label %38
    i32 3, label %41
  ]

32:                                               ; preds = %24
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 (i8*, i8*, ...) @AddString(i8* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  br label %44

35:                                               ; preds = %24
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 (i8*, i8*, ...) @AddString(i8* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  br label %44

38:                                               ; preds = %24
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 (i8*, i8*, ...) @AddString(i8* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %44

41:                                               ; preds = %24
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 (i8*, i8*, ...) @AddString(i8* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0))
  br label %44

44:                                               ; preds = %24, %41, %38, %35, %32
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 (i8*, i8*, ...) @AddString(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %64 [
    i32 0, label %52
    i32 1, label %55
    i32 2, label %58
    i32 3, label %61
  ]

52:                                               ; preds = %44
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i8*, i8*, ...) @AddString(i8* %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  br label %64

55:                                               ; preds = %44
  %56 = load i8*, i8** %4, align 8
  %57 = call i32 (i8*, i8*, ...) @AddString(i8* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %64

58:                                               ; preds = %44
  %59 = load i8*, i8** %4, align 8
  %60 = call i32 (i8*, i8*, ...) @AddString(i8* %59, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0))
  br label %64

61:                                               ; preds = %44
  %62 = load i8*, i8** %4, align 8
  %63 = call i32 (i8*, i8*, ...) @AddString(i8* %62, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0))
  br label %64

64:                                               ; preds = %44, %61, %58, %55, %52
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %66 = load i64, i64* %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 34
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load i8*, i8** %4, align 8
  %73 = call i32 (i8*, i8*, ...) @AddString(i8* %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  br label %77

74:                                               ; preds = %64
  %75 = load i8*, i8** %4, align 8
  %76 = call i32 (i8*, i8*, ...) @AddString(i8* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i8*, i8** %4, align 8
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %80 = load i64, i64* %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 33
  %83 = load i64, i64* %82, align 8
  %84 = call i32 (i8*, i8*, ...) @AddString(i8* %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0), i64 %83)
  %85 = load i8*, i8** %4, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %87 = load i64, i64* %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 32
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i8*, i8*, ...) @AddString(i8* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i32 %90)
  %92 = load i8*, i8** %4, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %94 = load i64, i64* %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 31
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, i8*, ...) @AddString(i8* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i64 0, i64 0), i32 %97)
  %99 = load i8*, i8** %4, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %101 = load i64, i64* %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 30
  %104 = load i32, i32* %103, align 4
  %105 = call i32 (i8*, i8*, ...) @AddString(i8* %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), i32 %104)
  %106 = load i8*, i8** %4, align 8
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %108 = load i64, i64* %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 29
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (i8*, i8*, ...) @AddString(i8* %106, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i64 0, i64 0), i32 %111)
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %114 = load i64, i64* %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 28
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %77
  %120 = load i8*, i8** %4, align 8
  %121 = call i32 (i8*, i8*, ...) @AddString(i8* %120, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  br label %122

122:                                              ; preds = %119, %77
  %123 = load i8*, i8** %4, align 8
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %125 = load i64, i64* %3, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 27
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i8*, i8*, ...) @AddString(i8* %123, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.23, i64 0, i64 0), i32 %128)
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %131 = load i64, i64* %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 26
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %122
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 (i8*, i8*, ...) @AddString(i8* %137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.24, i64 0, i64 0))
  br label %139

139:                                              ; preds = %136, %122
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %141 = load i64, i64* %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 25
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %139
  %147 = load i8*, i8** %4, align 8
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %149 = load i64, i64* %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 25
  %152 = load i32, i32* %151, align 8
  %153 = call i32 (i8*, i8*, ...) @AddString(i8* %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 %152)
  br label %154

154:                                              ; preds = %146, %139
  %155 = load i8*, i8** %4, align 8
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %157 = load i64, i64* %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 24
  %160 = load i32, i32* %159, align 4
  %161 = call i32 (i8*, i8*, ...) @AddString(i8* %155, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i32 %160)
  %162 = load i8*, i8** %4, align 8
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %164 = load i64, i64* %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %165, i32 0, i32 23
  %167 = load i32, i32* %166, align 8
  %168 = call i32 (i8*, i8*, ...) @AddString(i8* %162, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i32 %167)
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %170 = load i64, i64* %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 22
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %154
  %176 = load i8*, i8** %4, align 8
  %177 = call i32 (i8*, i8*, ...) @AddString(i8* %176, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.28, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %154
  %179 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %180 = load i64, i64* %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 21
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = load i8*, i8** %4, align 8
  %187 = call i32 (i8*, i8*, ...) @AddString(i8* %186, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %178
  %189 = load i8*, i8** %4, align 8
  %190 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %191 = load i64, i64* %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 20
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (i8*, i8*, ...) @AddString(i8* %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i32 %194)
  %196 = load i8*, i8** %4, align 8
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %198 = load i64, i64* %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 19
  %201 = load i32, i32* %200, align 8
  %202 = call i32 (i8*, i8*, ...) @AddString(i8* %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.31, i64 0, i64 0), i32 %201)
  %203 = load i8*, i8** %4, align 8
  %204 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %205 = load i64, i64* %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %204, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 18
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, i8*, ...) @AddString(i8* %203, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0), i32 %208)
  %210 = load i8*, i8** %4, align 8
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %212 = load i64, i64* %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 17
  %215 = load i32, i32* %214, align 8
  %216 = call i32 (i8*, i8*, ...) @AddString(i8* %210, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), i32 %215)
  %217 = load i8*, i8** %4, align 8
  %218 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %219 = load i64, i64* %3, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %218, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 16
  %222 = load i32, i32* %221, align 4
  %223 = call i32 (i8*, i8*, ...) @AddString(i8* %217, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0), i32 %222)
  %224 = load i8*, i8** %4, align 8
  %225 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %226 = load i64, i64* %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 15
  %229 = load i32, i32* %228, align 8
  %230 = call i32 (i8*, i8*, ...) @AddString(i8* %224, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0), i32 %229)
  %231 = load i8*, i8** %4, align 8
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %233 = load i64, i64* %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 14
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  %238 = zext i1 %237 to i64
  %239 = select i1 %237, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i64 0, i64 0)
  %240 = call i32 (i8*, i8*, ...) @AddString(i8* %231, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* %239)
  %241 = load i8*, i8** %4, align 8
  %242 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %243 = load i64, i64* %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %242, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %244, i32 0, i32 13
  %246 = load i32, i32* %245, align 4
  %247 = call i32 (i8*, i8*, ...) @AddString(i8* %241, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.39, i64 0, i64 0), i32 %246)
  %248 = load i8*, i8** %4, align 8
  %249 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %250 = load i64, i64* %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %249, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %251, i32 0, i32 11
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %255 = load i64, i64* %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %254, i64 %255
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 12
  %258 = load i32, i32* %257, align 8
  %259 = call i8* @AddSoundLFO(i8* %248, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.40, i64 0, i64 0), i32 %253, i32 %258)
  store i8* %259, i8** %4, align 8
  %260 = load i8*, i8** %4, align 8
  %261 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %262 = load i64, i64* %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %261, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %263, i32 0, i32 11
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (i8*, i8*, ...) @AddString(i8* %260, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.41, i64 0, i64 0), i32 %265)
  %267 = load i8*, i8** %4, align 8
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %269 = load i64, i64* %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %270, i32 0, i32 9
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %274 = load i64, i64* %3, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %275, i32 0, i32 10
  %277 = load i32, i32* %276, align 8
  %278 = call i8* @AddSoundLFO(i8* %267, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.42, i64 0, i64 0), i32 %272, i32 %277)
  store i8* %278, i8** %4, align 8
  %279 = load i8*, i8** %4, align 8
  %280 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %281 = load i64, i64* %3, align 8
  %282 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %282, i32 0, i32 9
  %284 = load i32, i32* %283, align 4
  %285 = call i32 (i8*, i8*, ...) @AddString(i8* %279, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.43, i64 0, i64 0), i32 %284)
  %286 = load i8*, i8** %4, align 8
  %287 = call i32 (i8*, i8*, ...) @AddString(i8* %286, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0))
  %288 = load i8*, i8** %4, align 8
  %289 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %290 = load i64, i64* %3, align 8
  %291 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %289, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 8
  %293 = load i32, i32* %292, align 8
  %294 = call i8* @AddSoundLevel(i8* %288, i32 %293)
  store i8* %294, i8** %4, align 8
  %295 = load i8*, i8** %4, align 8
  %296 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %297 = load i64, i64* %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %296, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 4
  %301 = call i32 (i8*, i8*, ...) @AddString(i8* %295, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.45, i64 0, i64 0), i32 %300)
  %302 = load i8*, i8** %4, align 8
  %303 = call i32 (i8*, i8*, ...) @AddString(i8* %302, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.46, i64 0, i64 0))
  %304 = load i8*, i8** %4, align 8
  %305 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %306 = load i64, i64* %3, align 8
  %307 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %305, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 6
  %309 = load i32, i32* %308, align 8
  %310 = call i8* @AddSoundLevel(i8* %304, i32 %309)
  store i8* %310, i8** %4, align 8
  %311 = load i8*, i8** %4, align 8
  %312 = call i32 (i8*, i8*, ...) @AddString(i8* %311, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i64 0, i64 0))
  %313 = load i8*, i8** %4, align 8
  %314 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %315 = load i64, i64* %3, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 4
  %319 = call i8* @AddSoundPan(i8* %313, i32 %318)
  store i8* %319, i8** %4, align 8
  %320 = load i8*, i8** %4, align 8
  %321 = call i32 (i8*, i8*, ...) @AddString(i8* %320, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.48, i64 0, i64 0))
  %322 = load i8*, i8** %4, align 8
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %324 = load i64, i64* %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 8
  %328 = call i8* @AddSoundLevel(i8* %322, i32 %327)
  store i8* %328, i8** %4, align 8
  %329 = load i8*, i8** %4, align 8
  %330 = call i32 (i8*, i8*, ...) @AddString(i8* %329, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i64 0, i64 0))
  %331 = load i8*, i8** %4, align 8
  %332 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scsp, i32 0, i32 0), align 8
  %333 = load i64, i64* %3, align 8
  %334 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %332, i64 %333
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 3
  %336 = load i32, i32* %335, align 4
  %337 = call i8* @AddSoundPan(i8* %331, i32 %336)
  store i8* %337, i8** %4, align 8
  ret void
}

declare dso_local i32 @AddString(i8*, i8*, ...) #1

declare dso_local i8* @AddSoundLFO(i8*, i8*, i32, i32) #1

declare dso_local i8* @AddSoundLevel(i8*, i32) #1

declare dso_local i8* @AddSoundPan(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
