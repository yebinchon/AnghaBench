; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_state.c_state_load_gfx.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/extr_state.c_state_load_gfx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_6__ }

@PicoAHW = common dso_local global i32 0, align 4
@PAHW_32X = common dso_local global i32 0, align 4
@g_read_offs = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"PicoSMCD\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"PicoSEXT\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bad header\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"bad length\00", align 1
@CHUNK_FM = common dso_local global i8 0, align 1
@CHUNK_MISC_CD = common dso_local global i8 0, align 1
@PAHW_MCD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"cd chunk in non CD state?\00", align 1
@Pico = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@Pico32xMem = common dso_local global %struct.TYPE_5__* null, align 8
@Pico32x = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @state_load_gfx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_load_gfx(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i8], align 1
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %8 = load i32, i32* @PicoAHW, align 4
  %9 = load i32, i32* @PAHW_32X, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* %6, align 4
  %14 = add nsw i32 %13, 2
  store i32 %14, i32* %6, align 4
  br label %15

15:                                               ; preds = %12, %1
  store i64 0, i64* @g_read_offs, align 8
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %17 = call i32 (i32, ...) @CHECKED_READ(i32 8, i8* %16)
  %18 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %19 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %23 = call i64 @strncmp(i8* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 @R_ERROR_RETURN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %21, %15
  %28 = call i32 (i32, ...) @CHECKED_READ(i32 4, i32* %3)
  br label %29

29:                                               ; preds = %123, %27
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @areaEof(i8* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %34, %35
  br label %37

37:                                               ; preds = %33, %29
  %38 = phi i1 [ false, %29 ], [ %36, %33 ]
  br i1 %38, label %39, label %124

39:                                               ; preds = %37
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %41 = call i32 (i32, ...) @CHECKED_READ(i32 1, i8* %40)
  %42 = call i32 (i32, ...) @CHECKED_READ(i32 4, i32* %4)
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = icmp sgt i32 %46, 524288
  br i1 %47, label %48, label %50

48:                                               ; preds = %45, %39
  %49 = call i32 @R_ERROR_RETURN(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8, i8* @CHUNK_FM, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sgt i32 %53, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %50
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = load i8, i8* @CHUNK_MISC_CD, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %60, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %57
  %65 = load i32, i32* @PicoAHW, align 4
  %66 = load i32, i32* @PAHW_MCD, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %71, label %69

69:                                               ; preds = %64
  %70 = call i32 @R_ERROR_RETURN(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %64, %57, %50
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  switch i32 %74, label %118 [
    i32 129, label %75
    i32 132, label %80
    i32 128, label %85
    i32 130, label %90
    i32 131, label %95
    i32 134, label %105
    i32 133, label %115
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Pico, i32 0, i32 3, i32 0), align 4
  %77 = call i32 @CHECKED_READ_BUFF(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %123

80:                                               ; preds = %71
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Pico, i32 0, i32 2, i32 0), align 4
  %82 = call i32 @CHECKED_READ_BUFF(i32 %81)
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %123

85:                                               ; preds = %71
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Pico, i32 0, i32 1, i32 0), align 4
  %87 = call i32 @CHECKED_READ_BUFF(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %123

90:                                               ; preds = %71
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @Pico, i32 0, i32 0, i32 0), align 4
  %92 = call i32 @CHECKED_READ_BUFF(i32 %91)
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %123

95:                                               ; preds = %71
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Pico32xMem, align 8
  %97 = icmp ne %struct.TYPE_5__* %96, null
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Pico32xMem, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @CHECKED_READ_BUFF(i32 %102)
  br label %104

104:                                              ; preds = %98, %95
  br label %123

105:                                              ; preds = %71
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Pico32xMem, align 8
  %107 = icmp ne %struct.TYPE_5__* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** @Pico32xMem, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @CHECKED_READ_BUFF(i32 %112)
  br label %114

114:                                              ; preds = %108, %105
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico32x, i32 0, i32 0), align 4
  br label %123

115:                                              ; preds = %71
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Pico32x, i32 0, i32 0), align 4
  %117 = call i32 @CHECKED_READ_BUFF(i32 %116)
  br label %123

118:                                              ; preds = %71
  %119 = load i8*, i8** %2, align 8
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @SEEK_CUR, align 4
  %122 = call i32 @areaSeek(i8* %119, i32 %120, i32 %121)
  br label %123

123:                                              ; preds = %118, %115, %114, %104, %90, %85, %80, %75
  br label %29

124:                                              ; preds = %37
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  ret i32 0
}

declare dso_local i32 @CHECKED_READ(i32, ...) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @R_ERROR_RETURN(i8*) #1

declare dso_local i32 @areaEof(i8*) #1

declare dso_local i32 @CHECKED_READ_BUFF(i32) #1

declare dso_local i32 @areaSeek(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
