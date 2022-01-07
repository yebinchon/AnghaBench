; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_parse_sps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hevc.c_hvcc_parse_sps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i8*, i64, i32 }

@HEVC_MAX_SHORT_TERM_REF_PIC_SETS = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @hvcc_parse_sps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvcc_parse_sps(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %16 = load i32, i32* @HEVC_MAX_SHORT_TERM_REF_PIC_SETS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i32 @skip_bits(i32* %20, i32 4)
  %22 = load i32*, i32** %4, align 8
  %23 = call i32 @get_bits(i32* %22, i32 3)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = add i32 %27, 1
  %29 = call i32 @FFMAX(i32 %26, i32 %28)
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i64 @get_bits1(i32* %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @hvcc_parse_ptl(i32* %36, %struct.TYPE_5__* %37, i32 %38)
  %40 = load i32*, i32** %4, align 8
  %41 = call i8* @get_ue_golomb_long(i32* %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i8* @get_ue_golomb_long(i32* %42)
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 3
  br i1 %50, label %51, label %54

51:                                               ; preds = %2
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @skip_bits1(i32* %52)
  br label %54

54:                                               ; preds = %51, %2
  %55 = load i32*, i32** %4, align 8
  %56 = call i8* @get_ue_golomb_long(i32* %55)
  %57 = load i32*, i32** %4, align 8
  %58 = call i8* @get_ue_golomb_long(i32* %57)
  %59 = load i32*, i32** %4, align 8
  %60 = call i64 @get_bits1(i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %54
  %63 = load i32*, i32** %4, align 8
  %64 = call i8* @get_ue_golomb_long(i32* %63)
  %65 = load i32*, i32** %4, align 8
  %66 = call i8* @get_ue_golomb_long(i32* %65)
  %67 = load i32*, i32** %4, align 8
  %68 = call i8* @get_ue_golomb_long(i32* %67)
  %69 = load i32*, i32** %4, align 8
  %70 = call i8* @get_ue_golomb_long(i32* %69)
  br label %71

71:                                               ; preds = %62, %54
  %72 = load i32*, i32** %4, align 8
  %73 = call i8* @get_ue_golomb_long(i32* %72)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  store i8* %73, i8** %75, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i8* @get_ue_golomb_long(i32* %76)
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  store i8* %77, i8** %79, align 8
  %80 = load i32*, i32** %4, align 8
  %81 = call i8* @get_ue_golomb_long(i32* %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %8, align 4
  %83 = load i32*, i32** %4, align 8
  %84 = call i64 @get_bits1(i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %71
  br label %89

87:                                               ; preds = %71
  %88 = load i32, i32* %7, align 4
  br label %89

89:                                               ; preds = %87, %86
  %90 = phi i32 [ 0, %86 ], [ %88, %87 ]
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %98, %89
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ule i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32*, i32** %4, align 8
  %97 = call i32 @skip_sub_layer_ordering_info(i32* %96)
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %91

101:                                              ; preds = %91
  %102 = load i32*, i32** %4, align 8
  %103 = call i8* @get_ue_golomb_long(i32* %102)
  %104 = load i32*, i32** %4, align 8
  %105 = call i8* @get_ue_golomb_long(i32* %104)
  %106 = load i32*, i32** %4, align 8
  %107 = call i8* @get_ue_golomb_long(i32* %106)
  %108 = load i32*, i32** %4, align 8
  %109 = call i8* @get_ue_golomb_long(i32* %108)
  %110 = load i32*, i32** %4, align 8
  %111 = call i8* @get_ue_golomb_long(i32* %110)
  %112 = load i32*, i32** %4, align 8
  %113 = call i8* @get_ue_golomb_long(i32* %112)
  %114 = load i32*, i32** %4, align 8
  %115 = call i64 @get_bits1(i32* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %101
  %118 = load i32*, i32** %4, align 8
  %119 = call i64 @get_bits1(i32* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load i32*, i32** %4, align 8
  %123 = call i32 @skip_scaling_list_data(i32* %122)
  br label %124

124:                                              ; preds = %121, %117, %101
  %125 = load i32*, i32** %4, align 8
  %126 = call i32 @skip_bits1(i32* %125)
  %127 = load i32*, i32** %4, align 8
  %128 = call i32 @skip_bits1(i32* %127)
  %129 = load i32*, i32** %4, align 8
  %130 = call i64 @get_bits1(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %124
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @skip_bits(i32* %133, i32 4)
  %135 = load i32*, i32** %4, align 8
  %136 = call i32 @skip_bits(i32* %135, i32 4)
  %137 = load i32*, i32** %4, align 8
  %138 = call i8* @get_ue_golomb_long(i32* %137)
  %139 = load i32*, i32** %4, align 8
  %140 = call i8* @get_ue_golomb_long(i32* %139)
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @skip_bits1(i32* %141)
  br label %143

143:                                              ; preds = %132, %124
  %144 = load i32*, i32** %4, align 8
  %145 = call i8* @get_ue_golomb_long(i32* %144)
  %146 = ptrtoint i8* %145 to i32
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @HEVC_MAX_SHORT_TERM_REF_PIC_SETS, align 4
  %149 = icmp ugt i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %143
  %151 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %151, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %214

152:                                              ; preds = %143
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %167, %152
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %170

157:                                              ; preds = %153
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* %6, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @parse_rps(i32* %158, i32 %159, i32 %160, i32* %19)
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %157
  %165 = load i32, i32* %13, align 4
  store i32 %165, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %214

166:                                              ; preds = %157
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %6, align 4
  %169 = add i32 %168, 1
  store i32 %169, i32* %6, align 4
  br label %153

170:                                              ; preds = %153
  %171 = load i32*, i32** %4, align 8
  %172 = call i64 @get_bits1(i32* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %200

174:                                              ; preds = %170
  %175 = load i32*, i32** %4, align 8
  %176 = call i8* @get_ue_golomb_long(i32* %175)
  %177 = ptrtoint i8* %176 to i32
  store i32 %177, i32* %14, align 4
  %178 = load i32, i32* %14, align 4
  %179 = icmp ugt i32 %178, 31
  br i1 %179, label %180, label %182

180:                                              ; preds = %174
  %181 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %181, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %214

182:                                              ; preds = %174
  store i32 0, i32* %6, align 4
  br label %183

183:                                              ; preds = %196, %182
  %184 = load i32, i32* %6, align 4
  %185 = load i32, i32* %14, align 4
  %186 = icmp ult i32 %184, %185
  br i1 %186, label %187, label %199

187:                                              ; preds = %183
  %188 = load i32, i32* %8, align 4
  %189 = add i32 %188, 4
  %190 = call i32 @FFMIN(i32 %189, i32 16)
  store i32 %190, i32* %15, align 4
  %191 = load i32*, i32** %4, align 8
  %192 = load i32, i32* %15, align 4
  %193 = call i32 @skip_bits(i32* %191, i32 %192)
  %194 = load i32*, i32** %4, align 8
  %195 = call i32 @skip_bits1(i32* %194)
  br label %196

196:                                              ; preds = %187
  %197 = load i32, i32* %6, align 4
  %198 = add i32 %197, 1
  store i32 %198, i32* %6, align 4
  br label %183

199:                                              ; preds = %183
  br label %200

200:                                              ; preds = %199, %170
  %201 = load i32*, i32** %4, align 8
  %202 = call i32 @skip_bits1(i32* %201)
  %203 = load i32*, i32** %4, align 8
  %204 = call i32 @skip_bits1(i32* %203)
  %205 = load i32*, i32** %4, align 8
  %206 = call i64 @get_bits1(i32* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %200
  %209 = load i32*, i32** %4, align 8
  %210 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %211 = load i32, i32* %7, align 4
  %212 = call i32 @hvcc_parse_vui(i32* %209, %struct.TYPE_5__* %210, i32 %211)
  br label %213

213:                                              ; preds = %208, %200
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %214

214:                                              ; preds = %213, %180, %164, %150
  %215 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %215)
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @skip_bits(i32*, i32) #2

declare dso_local i32 @get_bits(i32*, i32) #2

declare dso_local i32 @FFMAX(i32, i32) #2

declare dso_local i64 @get_bits1(i32*) #2

declare dso_local i32 @hvcc_parse_ptl(i32*, %struct.TYPE_5__*, i32) #2

declare dso_local i8* @get_ue_golomb_long(i32*) #2

declare dso_local i32 @skip_bits1(i32*) #2

declare dso_local i32 @skip_sub_layer_ordering_info(i32*) #2

declare dso_local i32 @skip_scaling_list_data(i32*) #2

declare dso_local i32 @parse_rps(i32*, i32, i32, i32*) #2

declare dso_local i32 @FFMIN(i32, i32) #2

declare dso_local i32 @hvcc_parse_vui(i32*, %struct.TYPE_5__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
