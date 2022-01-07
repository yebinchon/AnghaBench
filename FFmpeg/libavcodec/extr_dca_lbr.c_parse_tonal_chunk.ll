; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_tonal_chunk.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_tonal_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }

@LBR_CHUNK_SCF = common dso_local global i64 0, align 8
@LBR_CHUNK_TONAL_SCF = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Tonal scale factor chunk too short\0A\00", align 1
@LBR_CHUNK_TONAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @parse_tonal_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_tonal_chunk(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %94

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @init_get_bits8(i32* %15, i32 %18, i32 %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %94

25:                                               ; preds = %13
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @LBR_CHUNK_SCF, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %37, label %31

31:                                               ; preds = %25
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @LBR_CHUNK_TONAL_SCF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %66

37:                                               ; preds = %31, %25
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = call i32 @get_bits_left(i32* %39)
  %41 = icmp slt i32 %40, 36
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @AV_LOG_ERROR, align 4
  %47 = call i32 @av_log(i32 %45, i32 %46, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %94

48:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %62, %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 6
  br i1 %51, label %52, label %65

52:                                               ; preds = %49
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = call i32 @get_bits(i32* %54, i32 6)
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %49

65:                                               ; preds = %49
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @LBR_CHUNK_TONAL, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @LBR_CHUNK_TONAL_SCF, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %72, %66
  store i32 0, i32* %7, align 4
  br label %79

79:                                               ; preds = %89, %78
  %80 = load i32, i32* %7, align 4
  %81 = icmp slt i32 %80, 5
  br i1 %81, label %82, label %92

82:                                               ; preds = %79
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = call i64 @parse_tonal(%struct.TYPE_7__* %83, i32 %84)
  %86 = icmp slt i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 -1, i32* %3, align 4
  br label %94

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %79

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %72
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %93, %87, %42, %24, %12
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @init_get_bits8(i32*, i32, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @parse_tonal(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
