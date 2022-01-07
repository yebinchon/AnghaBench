; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_tedcaptionsdec.c_parse_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_tedcaptionsdec.c_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i64 }
%struct.TYPE_7__ = type { i64, i64, i64 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"captions\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"startOfParagraph\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"startTime\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__, align 8
  %10 = alloca %struct.TYPE_8__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @next_byte(i32* %15, i32* %7)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @expect_byte(i32* %17, i32* %7, i8 signext 123)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %22, i32* %3, align 4
  br label %205

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @parse_label(i32* %24, i32* %7, %struct.TYPE_8__* %9)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strcmp(i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28, %23
  %34 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %34, i32* %3, align 4
  br label %205

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @expect_byte(i32* %36, i32* %7, i8 signext 91)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %41, i32* %3, align 4
  br label %205

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42, %178
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* @AV_NOPTS_VALUE, align 8
  store i64 %45, i64* %13, align 8
  store i64 %45, i64* %12, align 8
  %46 = load i32*, i32** %4, align 8
  %47 = call i32 @expect_byte(i32* %46, i32* %7, i8 signext 123)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %205

52:                                               ; preds = %43
  %53 = load i32*, i32** %4, align 8
  %54 = call i64 @avio_tell(i32* %53)
  %55 = sub nsw i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %56

56:                                               ; preds = %52, %126
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @parse_label(i32* %57, i32* %7, %struct.TYPE_8__* %9)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %205

63:                                               ; preds = %56
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @strcmp(i32 %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @parse_boolean(i32* %69, i32* %7, i32* %8)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %205

75:                                               ; preds = %68
  br label %120

76:                                               ; preds = %63
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @strcmp(i32 %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %76
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @parse_string(i32* %82, i32* %7, %struct.TYPE_8__* %10, i32 1)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %205

88:                                               ; preds = %81
  br label %119

89:                                               ; preds = %76
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @strcmp(i32 %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %89
  %95 = load i32*, i32** %4, align 8
  %96 = call i32 @parse_int(i32* %95, i32* %7, i64* %12)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %94
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %205

101:                                              ; preds = %94
  br label %118

102:                                              ; preds = %89
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i64 @strcmp(i32 %104, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %102
  %108 = load i32*, i32** %4, align 8
  %109 = call i32 @parse_int(i32* %108, i32* %7, i64* %13)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %3, align 4
  br label %205

114:                                              ; preds = %107
  br label %117

115:                                              ; preds = %102
  %116 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %116, i32* %3, align 4
  br label %205

117:                                              ; preds = %114
  br label %118

118:                                              ; preds = %117, %101
  br label %119

119:                                              ; preds = %118, %88
  br label %120

120:                                              ; preds = %119, %75
  %121 = load i32*, i32** %4, align 8
  %122 = call i32 @skip_spaces(i32* %121, i32* %7)
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 44
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %129

126:                                              ; preds = %120
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @next_byte(i32* %127, i32* %7)
  br label %56

129:                                              ; preds = %125
  %130 = load i32*, i32** %4, align 8
  %131 = call i32 @expect_byte(i32* %130, i32* %7, i8 signext 125)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %6, align 4
  store i32 %135, i32* %3, align 4
  br label %205

136:                                              ; preds = %129
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = load i64, i64* %13, align 8
  %146 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144, %140, %136
  %149 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %149, i32* %3, align 4
  br label %205

150:                                              ; preds = %144
  %151 = load i32*, i32** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call %struct.TYPE_7__* @ff_subtitles_queue_insert(i32* %151, i32 %153, i32 %155, i32 0)
  store %struct.TYPE_7__* %156, %struct.TYPE_7__** %14, align 8
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %158 = icmp ne %struct.TYPE_7__* %157, null
  br i1 %158, label %162, label %159

159:                                              ; preds = %150
  %160 = load i32, i32* @ENOMEM, align 4
  %161 = call i32 @AVERROR(i32 %160)
  store i32 %161, i32* %3, align 4
  br label %205

162:                                              ; preds = %150
  %163 = load i64, i64* %11, align 8
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 2
  store i64 %163, i64* %165, align 8
  %166 = load i64, i64* %12, align 8
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i64 %166, i64* %168, align 8
  %169 = load i64, i64* %13, align 8
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = call i32 @av_bprint_finalize(%struct.TYPE_8__* %10, i32* null)
  %173 = load i32*, i32** %4, align 8
  %174 = call i32 @skip_spaces(i32* %173, i32* %7)
  %175 = load i32, i32* %7, align 4
  %176 = icmp ne i32 %175, 44
  br i1 %176, label %177, label %178

177:                                              ; preds = %162
  br label %181

178:                                              ; preds = %162
  %179 = load i32*, i32** %4, align 8
  %180 = call i32 @next_byte(i32* %179, i32* %7)
  br label %43

181:                                              ; preds = %177
  %182 = load i32*, i32** %4, align 8
  %183 = call i32 @expect_byte(i32* %182, i32* %7, i8 signext 93)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %181
  %187 = load i32, i32* %6, align 4
  store i32 %187, i32* %3, align 4
  br label %205

188:                                              ; preds = %181
  %189 = load i32*, i32** %4, align 8
  %190 = call i32 @expect_byte(i32* %189, i32* %7, i8 signext 125)
  store i32 %190, i32* %6, align 4
  %191 = load i32, i32* %6, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* %6, align 4
  store i32 %194, i32* %3, align 4
  br label %205

195:                                              ; preds = %188
  %196 = load i32*, i32** %4, align 8
  %197 = call i32 @skip_spaces(i32* %196, i32* %7)
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @AVERROR_EOF, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load i32, i32* %7, align 4
  %203 = call i32 @ERR_CODE(i32 %202)
  store i32 %203, i32* %3, align 4
  br label %205

204:                                              ; preds = %195
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %201, %193, %186, %159, %148, %134, %115, %112, %99, %86, %73, %61, %50, %40, %33, %21
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @next_byte(i32*, i32*) #1

declare dso_local i32 @expect_byte(i32*, i32*, i8 signext) #1

declare dso_local i32 @parse_label(i32*, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @parse_boolean(i32*, i32*, i32*) #1

declare dso_local i32 @parse_string(i32*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @parse_int(i32*, i32*, i64*) #1

declare dso_local i32 @skip_spaces(i32*, i32*) #1

declare dso_local %struct.TYPE_7__* @ff_subtitles_queue_insert(i32*, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @ERR_CODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
