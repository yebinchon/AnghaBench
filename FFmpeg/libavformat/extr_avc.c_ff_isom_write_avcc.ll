; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avc.c_ff_isom_write_avcc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avc.c_ff_isom_write_avcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@UINT16_MAX = common dso_local global i32 0, align 4
@H264_MAX_SPS_COUNT = common dso_local global i32 0, align 4
@H264_MAX_PPS_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_isom_write_avcc(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp sle i32 %22, 6
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %4, align 4
  br label %206

26:                                               ; preds = %3
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @AV_RB32(i32* %27)
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %39

30:                                               ; preds = %26
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @AV_RB24(i32* %31)
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @avio_write(i32* %35, i32* %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %206

39:                                               ; preds = %30, %26
  %40 = load i32*, i32** %6, align 8
  %41 = call i32 @ff_avc_parse_nal_units_buf(i32* %40, i32** %10, i32* %7)
  store i32 %41, i32* %17, align 4
  %42 = load i32, i32* %17, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %17, align 4
  store i32 %45, i32* %4, align 4
  br label %206

46:                                               ; preds = %39
  %47 = load i32*, i32** %10, align 8
  store i32* %47, i32** %12, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %11, align 8
  %52 = call i32 @avio_open_dyn_buf(i32** %8)
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  br label %186

56:                                               ; preds = %46
  %57 = call i32 @avio_open_dyn_buf(i32** %9)
  store i32 %57, i32* %17, align 4
  %58 = load i32, i32* %17, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  br label %186

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %134, %61
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = ptrtoint i32* %63 to i64
  %66 = ptrtoint i32* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 4
  %69 = icmp sgt i64 %68, 4
  br i1 %69, label %70, label %139

70:                                               ; preds = %62
  %71 = load i32*, i32** %10, align 8
  %72 = call i32 @AV_RB32(i32* %71)
  %73 = load i32*, i32** %11, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = ptrtoint i32* %73 to i64
  %76 = ptrtoint i32* %74 to i64
  %77 = sub i64 %75, %76
  %78 = sdiv exact i64 %77, 4
  %79 = sub nsw i64 %78, 4
  %80 = trunc i64 %79 to i32
  %81 = call i32 @FFMIN(i32 %72, i32 %80)
  store i32 %81, i32* %20, align 4
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  store i32* %83, i32** %10, align 8
  %84 = load i32*, i32** %10, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 31
  store i32 %87, i32* %21, align 4
  %88 = load i32, i32* %21, align 4
  %89 = icmp eq i32 %88, 7
  br i1 %89, label %90, label %110

90:                                               ; preds = %70
  %91 = load i32, i32* %18, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %18, align 4
  %93 = load i32, i32* %20, align 4
  %94 = load i32, i32* @UINT16_MAX, align 4
  %95 = icmp sgt i32 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %18, align 4
  %98 = load i32, i32* @H264_MAX_SPS_COUNT, align 4
  %99 = icmp sge i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %90
  %101 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %101, i32* %17, align 4
  br label %186

102:                                              ; preds = %96
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %20, align 4
  %105 = call i32 @avio_wb16(i32* %103, i32 %104)
  %106 = load i32*, i32** %8, align 8
  %107 = load i32*, i32** %10, align 8
  %108 = load i32, i32* %20, align 4
  %109 = call i32 @avio_write(i32* %106, i32* %107, i32 %108)
  br label %134

110:                                              ; preds = %70
  %111 = load i32, i32* %21, align 4
  %112 = icmp eq i32 %111, 8
  br i1 %112, label %113, label %133

113:                                              ; preds = %110
  %114 = load i32, i32* %19, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %19, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* @UINT16_MAX, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %123, label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %19, align 4
  %121 = load i32, i32* @H264_MAX_PPS_COUNT, align 4
  %122 = icmp sge i32 %120, %121
  br i1 %122, label %123, label %125

123:                                              ; preds = %119, %113
  %124 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %124, i32* %17, align 4
  br label %186

125:                                              ; preds = %119
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %20, align 4
  %128 = call i32 @avio_wb16(i32* %126, i32 %127)
  %129 = load i32*, i32** %9, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %20, align 4
  %132 = call i32 @avio_write(i32* %129, i32* %130, i32 %131)
  br label %133

133:                                              ; preds = %125, %110
  br label %134

134:                                              ; preds = %133, %102
  %135 = load i32, i32* %20, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = sext i32 %135 to i64
  %138 = getelementptr inbounds i32, i32* %136, i64 %137
  store i32* %138, i32** %10, align 8
  br label %62

139:                                              ; preds = %62
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @avio_close_dyn_buf(i32* %140, i32** %13)
  store i32 %141, i32* %15, align 4
  %142 = load i32*, i32** %9, align 8
  %143 = call i32 @avio_close_dyn_buf(i32* %142, i32** %14)
  store i32 %143, i32* %16, align 4
  %144 = load i32, i32* %15, align 4
  %145 = icmp slt i32 %144, 6
  br i1 %145, label %149, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %146, %139
  %150 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %150, i32* %17, align 4
  br label %186

151:                                              ; preds = %146
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @avio_w8(i32* %152, i32 1)
  %154 = load i32*, i32** %5, align 8
  %155 = load i32*, i32** %13, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 3
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @avio_w8(i32* %154, i32 %157)
  %159 = load i32*, i32** %5, align 8
  %160 = load i32*, i32** %13, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 4
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @avio_w8(i32* %159, i32 %162)
  %164 = load i32*, i32** %5, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 5
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @avio_w8(i32* %164, i32 %167)
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @avio_w8(i32* %169, i32 255)
  %171 = load i32*, i32** %5, align 8
  %172 = load i32, i32* %18, align 4
  %173 = or i32 224, %172
  %174 = call i32 @avio_w8(i32* %171, i32 %173)
  %175 = load i32*, i32** %5, align 8
  %176 = load i32*, i32** %13, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 @avio_write(i32* %175, i32* %176, i32 %177)
  %179 = load i32*, i32** %5, align 8
  %180 = load i32, i32* %19, align 4
  %181 = call i32 @avio_w8(i32* %179, i32 %180)
  %182 = load i32*, i32** %5, align 8
  %183 = load i32*, i32** %14, align 8
  %184 = load i32, i32* %16, align 4
  %185 = call i32 @avio_write(i32* %182, i32* %183, i32 %184)
  br label %186

186:                                              ; preds = %151, %149, %123, %100, %60, %55
  %187 = load i32*, i32** %13, align 8
  %188 = icmp ne i32* %187, null
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32*, i32** %8, align 8
  %191 = call i32 @avio_close_dyn_buf(i32* %190, i32** %13)
  br label %192

192:                                              ; preds = %189, %186
  %193 = load i32*, i32** %14, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32*, i32** %9, align 8
  %197 = call i32 @avio_close_dyn_buf(i32* %196, i32** %14)
  br label %198

198:                                              ; preds = %195, %192
  %199 = load i32*, i32** %13, align 8
  %200 = call i32 @av_free(i32* %199)
  %201 = load i32*, i32** %14, align 8
  %202 = call i32 @av_free(i32* %201)
  %203 = load i32*, i32** %12, align 8
  %204 = call i32 @av_free(i32* %203)
  %205 = load i32, i32* %17, align 4
  store i32 %205, i32* %4, align 4
  br label %206

206:                                              ; preds = %198, %44, %34, %24
  %207 = load i32, i32* %4, align 4
  ret i32 %207
}

declare dso_local i32 @AV_RB32(i32*) #1

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @avio_write(i32*, i32*, i32) #1

declare dso_local i32 @ff_avc_parse_nal_units_buf(i32*, i32**, i32*) #1

declare dso_local i32 @avio_open_dyn_buf(i32**) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @avio_close_dyn_buf(i32*, i32**) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
