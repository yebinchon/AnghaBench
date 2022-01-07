; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_minf_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_minf_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"minf\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@MODE_MOV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, %struct.TYPE_8__*)* @mov_write_minf_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_minf_tag(i32* %0, i32* %1, i32* %2, %struct.TYPE_8__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %9, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @avio_tell(i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = call i32 @avio_wb32(i32* %14, i32 0)
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @ffio_wfourcc(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = call i32 @mov_write_vmhd_tag(i32* %26)
  br label %109

28:                                               ; preds = %4
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32*, i32** %7, align 8
  %38 = call i32 @mov_write_smhd_tag(i32* %37)
  br label %108

39:                                               ; preds = %28
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %65

47:                                               ; preds = %39
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @MKTAG(i8 signext 116, i8 signext 101, i8 signext 120, i8 signext 116)
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %55 = call i64 @is_clcp_track(%struct.TYPE_8__* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53, %47
  %58 = load i32*, i32** %7, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %60 = call i32 @mov_write_gmhd_tag(i32* %58, %struct.TYPE_8__* %59)
  br label %64

61:                                               ; preds = %53
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @mov_write_nmhd_tag(i32* %62)
  br label %64

64:                                               ; preds = %61, %57
  br label %107

65:                                               ; preds = %39
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i64 @MKTAG(i8 signext 114, i8 signext 116, i8 signext 112, i8 signext 32)
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @mov_write_hmhd_tag(i32* %72)
  br label %106

74:                                               ; preds = %65
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @MKTAG(i8 signext 116, i8 signext 109, i8 signext 99, i8 signext 100)
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MODE_MOV, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @mov_write_nmhd_tag(i32* %87)
  br label %93

89:                                               ; preds = %80
  %90 = load i32*, i32** %7, align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %92 = call i32 @mov_write_gmhd_tag(i32* %90, %struct.TYPE_8__* %91)
  br label %93

93:                                               ; preds = %89, %86
  br label %105

94:                                               ; preds = %74
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = call i64 @MKTAG(i8 signext 103, i8 signext 112, i8 signext 109, i8 signext 100)
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load i32*, i32** %7, align 8
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %103 = call i32 @mov_write_gmhd_tag(i32* %101, %struct.TYPE_8__* %102)
  br label %104

104:                                              ; preds = %100, %94
  br label %105

105:                                              ; preds = %104, %93
  br label %106

106:                                              ; preds = %105, %71
  br label %107

107:                                              ; preds = %106, %64
  br label %108

108:                                              ; preds = %107, %36
  br label %109

109:                                              ; preds = %108, %25
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @MODE_MOV, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i32*, i32** %6, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @mov_write_hdlr_tag(i32* %116, i32* %117, i32* null)
  br label %119

119:                                              ; preds = %115, %109
  %120 = load i32*, i32** %7, align 8
  %121 = call i32 @mov_write_dinf_tag(i32* %120)
  %122 = load i32*, i32** %6, align 8
  %123 = load i32*, i32** %7, align 8
  %124 = load i32*, i32** %8, align 8
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %126 = call i32 @mov_write_stbl_tag(i32* %122, i32* %123, i32* %124, %struct.TYPE_8__* %125)
  store i32 %126, i32* %11, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %119
  %129 = load i32, i32* %11, align 4
  store i32 %129, i32* %5, align 4
  br label %134

130:                                              ; preds = %119
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @update_size(i32* %131, i32 %132)
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %130, %128
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @mov_write_vmhd_tag(i32*) #1

declare dso_local i32 @mov_write_smhd_tag(i32*) #1

declare dso_local i64 @MKTAG(i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i64 @is_clcp_track(%struct.TYPE_8__*) #1

declare dso_local i32 @mov_write_gmhd_tag(i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @mov_write_nmhd_tag(i32*) #1

declare dso_local i32 @mov_write_hmhd_tag(i32*) #1

declare dso_local i32 @mov_write_hdlr_tag(i32*, i32*, i32*) #1

declare dso_local i32 @mov_write_dinf_tag(i32*) #1

declare dso_local i32 @mov_write_stbl_tag(i32*, i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
