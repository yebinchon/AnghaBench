; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_ga_specific_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_ga_specific_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }

@MAX_ELEM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"SBR with 960 frame length\00", align 1
@AOT_AAC_SCALABLE = common dso_local global i32 0, align 4
@OC_GLOBAL_HDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"AAC data resilience (flags %x)\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"epConfig %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32*, i32*, i32, %struct.TYPE_7__*, i32)* @decode_ga_specific_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_ga_specific_config(%struct.TYPE_8__* %0, i32* %1, i32* %2, i32 %3, %struct.TYPE_7__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_7__* %4, %struct.TYPE_7__** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* @MAX_ELEM_ID, align 4
  %23 = mul nsw i32 %22, 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %18, align 8
  %26 = alloca [3 x i32], i64 %24, align 16
  store i64 %24, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @get_bits1(i32* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %6
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 (i32*, i8*, ...) @avpriv_report_missing_feature(i32* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = icmp ne %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32 0, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %35, %6
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @get_bits1(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @skip_bits(i32* %58, i32 14)
  br label %60

60:                                               ; preds = %57, %53
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @get_bits1(i32* %61)
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AOT_AAC_SCALABLE, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 129
  br i1 %72, label %73, label %76

73:                                               ; preds = %68, %60
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @skip_bits(i32* %74, i32 3)
  br label %76

76:                                               ; preds = %73, %68
  %77 = load i32, i32* %13, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load i32*, i32** %10, align 8
  %81 = call i32 @skip_bits(i32* %80, i32 4)
  %82 = load i32*, i32** %9, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %84 = bitcast [3 x i32]* %26 to i32**
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @decode_pce(i32* %82, %struct.TYPE_7__* %83, i32** %84, i32* %85, i32 %86)
  store i32 %87, i32* %20, align 4
  %88 = load i32, i32* %20, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %20, align 4
  store i32 %91, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %178

92:                                               ; preds = %79
  br label %102

93:                                               ; preds = %76
  %94 = load i32*, i32** %9, align 8
  %95 = bitcast [3 x i32]* %26 to i32**
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @set_default_channel_config(i32* %94, i32** %95, i32* %20, i32 %96)
  store i32 %97, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %15, align 4
  store i32 %100, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %178

101:                                              ; preds = %93
  br label %102

102:                                              ; preds = %101, %92
  %103 = bitcast [3 x i32]* %26 to i32**
  %104 = load i32, i32* %20, align 4
  %105 = call i32 @count_channels(i32** %103, i32 %104)
  %106 = icmp sgt i32 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  store i32 0, i32* %109, align 4
  br label %124

110:                                              ; preds = %102
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  store i32 1, i32* %122, align 4
  br label %123

123:                                              ; preds = %120, %115, %110
  br label %124

124:                                              ; preds = %123, %107
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %126 = icmp ne %struct.TYPE_8__* %125, null
  br i1 %126, label %127, label %136

127:                                              ; preds = %124
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %129 = bitcast [3 x i32]* %26 to i32**
  %130 = load i32, i32* %20, align 4
  %131 = load i32, i32* @OC_GLOBAL_HDR, align 4
  %132 = call i32 @output_configure(%struct.TYPE_8__* %128, i32** %129, i32 %130, i32 %131, i32 0)
  store i32 %132, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %127
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %178

136:                                              ; preds = %127, %124
  %137 = load i32, i32* %14, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %136
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  switch i32 %142, label %159 [
    i32 128, label %143
    i32 132, label %148
    i32 130, label %148
    i32 129, label %148
    i32 131, label %148
  ]

143:                                              ; preds = %139
  %144 = load i32*, i32** %10, align 8
  %145 = call i32 @skip_bits(i32* %144, i32 5)
  %146 = load i32*, i32** %10, align 8
  %147 = call i32 @skip_bits(i32* %146, i32 11)
  br label %159

148:                                              ; preds = %139, %139, %139, %139
  %149 = load i32*, i32** %10, align 8
  %150 = call i32 @get_bits(i32* %149, i32 3)
  store i32 %150, i32* %17, align 4
  %151 = load i32, i32* %17, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load i32*, i32** %9, align 8
  %155 = load i32, i32* %17, align 4
  %156 = call i32 (i32*, i8*, ...) @avpriv_report_missing_feature(i32* %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %157, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %178

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %139, %158, %143
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @skip_bits1(i32* %160)
  br label %162

162:                                              ; preds = %159, %136
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  switch i32 %165, label %177 [
    i32 132, label %166
    i32 130, label %166
    i32 129, label %166
    i32 131, label %166
  ]

166:                                              ; preds = %162, %162, %162, %162
  %167 = load i32*, i32** %10, align 8
  %168 = call i32 @get_bits(i32* %167, i32 2)
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %166
  %172 = load i32*, i32** %9, align 8
  %173 = load i32, i32* %16, align 4
  %174 = call i32 (i32*, i8*, ...) @avpriv_report_missing_feature(i32* %172, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %173)
  %175 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %175, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %178

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176, %162
  store i32 0, i32* %7, align 4
  store i32 1, i32* %21, align 4
  br label %178

178:                                              ; preds = %177, %171, %153, %134, %99, %90
  %179 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %179)
  %180 = load i32, i32* %7, align 4
  ret i32 %180
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @get_bits1(i32*) #2

declare dso_local i32 @avpriv_report_missing_feature(i32*, i8*, ...) #2

declare dso_local i32 @skip_bits(i32*, i32) #2

declare dso_local i32 @decode_pce(i32*, %struct.TYPE_7__*, i32**, i32*, i32) #2

declare dso_local i32 @set_default_channel_config(i32*, i32**, i32*, i32) #2

declare dso_local i32 @count_channels(i32**, i32) #2

declare dso_local i32 @output_configure(%struct.TYPE_8__*, i32**, i32, i32, i32) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @skip_bits1(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
