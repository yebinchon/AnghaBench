; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv10.c_ff_rv_decode_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv10.c_ff_rv_decode_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@rv_dc_lum = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@DC_VLC_BITS = common dso_local global i32 0, align 4
@rv_dc_chrom = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"chroma dc error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_rv_decode_dc(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 4
  br i1 %8, label %9, label %69

9:                                                ; preds = %2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rv_dc_lum, i32 0, i32 0), align 4
  %13 = load i32, i32* @DC_VLC_BITS, align 4
  %14 = call i32 @get_vlc2(i32* %11, i32 %12, i32 %13, i32 2)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %9
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = call i32 @get_bits(i32* %19, i32 7)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 124
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @get_bits(i32* %25, i32 7)
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %64

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 125
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = call i32 @get_bits(i32* %33, i32 7)
  %35 = add nsw i32 -128, %34
  store i32 %35, i32* %6, align 4
  br label %63

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = icmp eq i32 %37, 126
  br i1 %38, label %39, label %54

39:                                               ; preds = %36
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = call i64 @get_bits1(i32* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = call i32 @get_bits(i32* %46, i32 8)
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = call i32 @get_bits(i32* %51, i32 8)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %44
  br label %62

54:                                               ; preds = %36
  %55 = load i32, i32* %6, align 4
  %56 = icmp eq i32 %55, 127
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = call i32 @skip_bits(i32* %59, i32 11)
  store i32 1, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %54
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62, %31
  br label %64

64:                                               ; preds = %63, %23
  br label %68

65:                                               ; preds = %9
  %66 = load i32, i32* %6, align 4
  %67 = sub nsw i32 %66, 128
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %65, %64
  br label %116

69:                                               ; preds = %2
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @rv_dc_chrom, i32 0, i32 0), align 4
  %73 = load i32, i32* @DC_VLC_BITS, align 4
  %74 = call i32 @get_vlc2(i32* %71, i32 %72, i32 %73, i32 2)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %112

77:                                               ; preds = %69
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = call i32 @get_bits(i32* %79, i32 9)
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %6, align 4
  %82 = icmp eq i32 %81, 508
  br i1 %82, label %83, label %88

83:                                               ; preds = %77
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = call i32 @get_bits(i32* %85, i32 7)
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %111

88:                                               ; preds = %77
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 509
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = call i32 @get_bits(i32* %93, i32 7)
  %95 = add nsw i32 -128, %94
  store i32 %95, i32* %6, align 4
  br label %110

96:                                               ; preds = %88
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 510
  br i1 %98, label %99, label %103

99:                                               ; preds = %96
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = call i32 @skip_bits(i32* %101, i32 9)
  store i32 1, i32* %6, align 4
  br label %109

103:                                              ; preds = %96
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @AV_LOG_ERROR, align 4
  %108 = call i32 @av_log(i32 %106, i32 %107, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 65535, i32* %3, align 4
  br label %119

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %91
  br label %111

111:                                              ; preds = %110, %83
  br label %115

112:                                              ; preds = %69
  %113 = load i32, i32* %6, align 4
  %114 = sub nsw i32 %113, 128
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %112, %111
  br label %116

116:                                              ; preds = %115, %68
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %116, %103
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @get_vlc2(i32*, i32, i32, i32) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
