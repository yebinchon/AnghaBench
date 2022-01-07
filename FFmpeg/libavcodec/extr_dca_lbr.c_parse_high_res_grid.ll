; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_high_res_grid.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_high_res_grid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32**, i32**, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@DCA_LBR_SUBBANDS = common dso_local global i32 0, align 4
@ff_dca_sb_reorder = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*, i32, i32)* @parse_high_res_grid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_high_res_grid(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load i32, i32* @DCA_LBR_SUBBANDS, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %10, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %223

30:                                               ; preds = %4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @init_get_bits8(i32* %32, i32 %35, i32 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %223

42:                                               ; preds = %30
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 4
  %45 = call i32 @get_bits(i32* %44, i32 8)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = ashr i32 %46, 3
  %48 = and i32 %47, 7
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %17, align 4
  %50 = ashr i32 %49, 6
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %17, align 4
  %52 = and i32 %51, 7
  store i32 %52, i32* %16, align 4
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %115, %42
  %54 = load i32, i32* %12, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %118

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sdiv i32 %64, %67
  store i32 %68, i32* %19, align 4
  %69 = load i32, i32* %19, align 4
  %70 = mul nsw i32 12, %69
  %71 = sdiv i32 %70, 1000
  %72 = add nsw i32 %71, 100
  %73 = load i32, i32* %15, align 4
  %74 = mul nsw i32 40, %73
  %75 = add nsw i32 %72, %74
  %76 = sdiv i32 18000, %75
  %77 = load i32, i32* %14, align 4
  %78 = mul nsw i32 20, %77
  %79 = add nsw i32 %76, %78
  store i32 %79, i32* %20, align 4
  %80 = load i32, i32* %20, align 4
  %81 = icmp sle i32 %80, 95
  br i1 %81, label %82, label %86

82:                                               ; preds = %59
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %24, i64 %84
  store i32 1, i32* %85, align 4
  br label %114

86:                                               ; preds = %59
  %87 = load i32, i32* %20, align 4
  %88 = icmp sle i32 %87, 140
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %24, i64 %91
  store i32 2, i32* %92, align 4
  br label %113

93:                                               ; preds = %86
  %94 = load i32, i32* %20, align 4
  %95 = icmp sle i32 %94, 180
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %24, i64 %98
  store i32 3, i32* %99, align 4
  br label %112

100:                                              ; preds = %93
  %101 = load i32, i32* %20, align 4
  %102 = icmp sle i32 %101, 230
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %24, i64 %105
  store i32 4, i32* %106, align 4
  br label %111

107:                                              ; preds = %100
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %24, i64 %109
  store i32 5, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %103
  br label %112

112:                                              ; preds = %111, %96
  br label %113

113:                                              ; preds = %112, %89
  br label %114

114:                                              ; preds = %113, %82
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %12, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %12, align 4
  br label %53

118:                                              ; preds = %53
  store i32 0, i32* %12, align 4
  br label %119

119:                                              ; preds = %145, %118
  %120 = load i32, i32* %12, align 4
  %121 = icmp slt i32 %120, 8
  br i1 %121, label %122, label %148

122:                                              ; preds = %119
  %123 = load i64**, i64*** @ff_dca_sb_reorder, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64*, i64** %123, i64 %125
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %24, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 2
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %8, align 4
  %138 = sdiv i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32*, i32** %136, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %12, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %133, i32* %144, align 4
  br label %145

145:                                              ; preds = %122
  %146 = load i32, i32* %12, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %12, align 4
  br label %119

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %171, %148
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %174

155:                                              ; preds = %149
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %24, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 2
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %8, align 4
  %164 = sdiv i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32*, i32** %162, i64 %165
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %159, i32* %170, align 4
  br label %171

171:                                              ; preds = %155
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %12, align 4
  br label %149

174:                                              ; preds = %149
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %9, align 4
  %178 = call i64 @parse_lpc(%struct.TYPE_9__* %175, i32 %176, i32 %177, i32 0, i32 2)
  %179 = icmp slt i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %223

181:                                              ; preds = %174
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = call i64 @parse_ts(%struct.TYPE_9__* %182, i32 %183, i32 %184, i32 0, i32 2, i32 0)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %223

188:                                              ; preds = %181
  store i32 0, i32* %12, align 4
  br label %189

189:                                              ; preds = %219, %188
  %190 = load i32, i32* %12, align 4
  %191 = icmp slt i32 %190, 2
  br i1 %191, label %192, label %222

192:                                              ; preds = %189
  %193 = load i32, i32* %8, align 4
  store i32 %193, i32* %13, align 4
  br label %194

194:                                              ; preds = %215, %192
  %195 = load i32, i32* %13, align 4
  %196 = load i32, i32* %9, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %218

198:                                              ; preds = %194
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 3
  %202 = load i32**, i32*** %201, align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32*, i32** %202, i64 %204
  %206 = load i32*, i32** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %206, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = call i64 @parse_scale_factors(%struct.TYPE_9__* %199, i32 %210)
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %198
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %223

214:                                              ; preds = %198
  br label %215

215:                                              ; preds = %214
  %216 = load i32, i32* %13, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %13, align 4
  br label %194

218:                                              ; preds = %194
  br label %219

219:                                              ; preds = %218
  %220 = load i32, i32* %12, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %12, align 4
  br label %189

222:                                              ; preds = %189
  store i32 0, i32* %5, align 4
  store i32 1, i32* %18, align 4
  br label %223

223:                                              ; preds = %222, %213, %187, %180, %41, %29
  %224 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @init_get_bits8(i32*, i32, i32) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i64 @parse_lpc(%struct.TYPE_9__*, i32, i32, i32, i32) #2

declare dso_local i64 @parse_ts(%struct.TYPE_9__*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @parse_scale_factors(%struct.TYPE_9__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
