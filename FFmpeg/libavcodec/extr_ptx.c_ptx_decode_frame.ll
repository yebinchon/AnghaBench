; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ptx.c_ptx_decode_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ptx.c_ptx_decode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32*, i32**, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Image format not RGB15\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@AV_PIX_FMT_BGR555LE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"offset != 0x2c\00", align 1
@AV_PICTURE_TYPE_I = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"incomplete packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i32*, %struct.TYPE_11__*)* @ptx_decode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ptx_decode_frame(%struct.TYPE_13__* %0, i8* %1, i32* %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %10, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  store i32* %31, i32** %11, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %12, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = ptrtoint i32* %34 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = icmp slt i64 %39, 14
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %5, align 4
  br label %188

43:                                               ; preds = %4
  %44 = load i32*, i32** %10, align 8
  %45 = call i32 @AV_RL16(i32* %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  %48 = call i32 @AV_RL16(i32* %47)
  store i32 %48, i32* %14, align 4
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 10
  %51 = call i32 @AV_RL16(i32* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 12
  %54 = call i32 @AV_RL16(i32* %53)
  %55 = ashr i32 %54, 3
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 2
  br i1 %57, label %58, label %62

58:                                               ; preds = %43
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = call i32 @avpriv_request_sample(%struct.TYPE_13__* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %61, i32* %5, align 4
  br label %188

62:                                               ; preds = %43
  %63 = load i32, i32* @AV_PIX_FMT_BGR555LE, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = ptrtoint i32* %66 to i64
  %69 = ptrtoint i32* %67 to i64
  %70 = sub i64 %68, %69
  %71 = sdiv exact i64 %70, 4
  %72 = load i32, i32* %13, align 4
  %73 = zext i32 %72 to i64
  %74 = icmp slt i64 %71, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %62
  %76 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %76, i32* %5, align 4
  br label %188

77:                                               ; preds = %62
  %78 = load i32, i32* %13, align 4
  %79 = icmp ne i32 %78, 44
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %82 = call i32 @avpriv_request_sample(%struct.TYPE_13__* %81, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %13, align 4
  %85 = load i32*, i32** %10, align 8
  %86 = zext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load i32*, i32** %10, align 8
  %90 = ptrtoint i32* %88 to i64
  %91 = ptrtoint i32* %89 to i64
  %92 = sub i64 %90, %91
  %93 = sdiv exact i64 %92, 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %18, align 4
  %96 = mul i32 %94, %95
  %97 = zext i32 %96 to i64
  %98 = icmp slt i64 %93, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %83
  %100 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %100, i32* %5, align 4
  br label %188

101:                                              ; preds = %83
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @ff_set_dimensions(%struct.TYPE_13__* %102, i32 %103, i32 %104)
  store i32 %105, i32* %19, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %19, align 4
  store i32 %108, i32* %5, align 4
  br label %188

109:                                              ; preds = %101
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %112 = call i32 @ff_get_buffer(%struct.TYPE_13__* %110, %struct.TYPE_12__* %111, i32 0)
  store i32 %112, i32* %19, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i32, i32* %19, align 4
  store i32 %115, i32* %5, align 4
  br label %188

116:                                              ; preds = %109
  %117 = load i32, i32* @AV_PICTURE_TYPE_I, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = getelementptr inbounds i32*, i32** %122, i64 0
  %124 = load i32*, i32** %123, align 8
  store i32* %124, i32** %20, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %165, %116
  %131 = load i32, i32* %16, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %10, align 8
  %137 = ptrtoint i32* %135 to i64
  %138 = ptrtoint i32* %136 to i64
  %139 = sub i64 %137, %138
  %140 = sdiv exact i64 %139, 4
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %18, align 4
  %143 = mul i32 %141, %142
  %144 = zext i32 %143 to i64
  %145 = icmp sge i64 %140, %144
  br label %146

146:                                              ; preds = %134, %130
  %147 = phi i1 [ false, %130 ], [ %145, %134 ]
  br i1 %147, label %148, label %168

148:                                              ; preds = %146
  %149 = load i32*, i32** %20, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = load i32, i32* %14, align 4
  %152 = load i32, i32* %18, align 4
  %153 = mul i32 %151, %152
  %154 = call i32 @memcpy(i32* %149, i32* %150, i32 %153)
  %155 = load i32, i32* %17, align 4
  %156 = load i32*, i32** %20, align 8
  %157 = zext i32 %155 to i64
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32* %158, i32** %20, align 8
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* %18, align 4
  %161 = mul i32 %159, %160
  %162 = load i32*, i32** %10, align 8
  %163 = zext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32* %164, i32** %10, align 8
  br label %165

165:                                              ; preds = %148
  %166 = load i32, i32* %16, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %130

168:                                              ; preds = %146
  %169 = load i32*, i32** %8, align 8
  store i32 1, i32* %169, align 4
  %170 = load i32, i32* %16, align 4
  %171 = load i32, i32* %15, align 4
  %172 = icmp ult i32 %170, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %175 = load i32, i32* @AV_LOG_WARNING, align 4
  %176 = call i32 @av_log(%struct.TYPE_13__* %174, i32 %175, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %5, align 4
  br label %188

180:                                              ; preds = %168
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %15, align 4
  %184 = mul i32 %182, %183
  %185 = load i32, i32* %18, align 4
  %186 = mul i32 %184, %185
  %187 = add i32 %181, %186
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %180, %173, %114, %107, %99, %75, %58, %41
  %189 = load i32, i32* %5, align 4
  ret i32 %189
}

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @avpriv_request_sample(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @ff_set_dimensions(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @ff_get_buffer(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_13__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
