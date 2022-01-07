; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_scale_factors.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_lbr.c_parse_scale_factors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@ff_dca_vlc_fst_rsd_amp = common dso_local global i32 0, align 4
@ff_dca_vlc_rsd_apprx = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid scale factor distance\0A\00", align 1
@ff_dca_vlc_rsd_amp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @parse_scale_factors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_scale_factors(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = call i64 @ensure_bits(i32* %12, i32 20)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %216

16:                                               ; preds = %2
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @parse_vlc(i32* %18, i32* @ff_dca_vlc_fst_rsd_amp, i32 2)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %206, %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 7
  br i1 %22, label %23, label %210

23:                                               ; preds = %20
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  store i32 %24, i32* %28, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i64 @ensure_bits(i32* %30, i32 20)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %216

34:                                               ; preds = %23
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = call i32 @parse_vlc(i32* %36, i32* @ff_dca_vlc_rsd_apprx, i32 1)
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %7, align 4
  %41 = sub nsw i32 7, %40
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = call i32 @av_log(i32 %46, i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %216

49:                                               ; preds = %34
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i64 @ensure_bits(i32* %51, i32 20)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %216

55:                                               ; preds = %49
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = call i32 @parse_vlc(i32* %57, i32* @ff_dca_vlc_rsd_amp, i32 2)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  %66 = ashr i32 %65, 1
  %67 = add nsw i32 %63, %66
  store i32 %67, i32* %9, align 4
  br label %73

68:                                               ; preds = %55
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 1
  %72 = sub nsw i32 %69, %71
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %68, %62
  %74 = load i32, i32* %10, align 4
  switch i32 %74, label %179 [
    i32 2, label %75
    i32 4, label %104
  ]

75:                                               ; preds = %73
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %76, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %75
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub nsw i32 %81, %82
  %84 = ashr i32 %83, 1
  %85 = add nsw i32 %80, %84
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %86, i64 %89
  store i32 %85, i32* %90, align 4
  br label %103

91:                                               ; preds = %75
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = sub nsw i32 %93, %94
  %96 = ashr i32 %95, 1
  %97 = sub nsw i32 %92, %96
  %98 = load i32*, i32** %5, align 8
  %99 = load i32, i32* %7, align 4
  %100 = add nsw i32 %99, 1
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  store i32 %97, i32* %102, align 4
  br label %103

103:                                              ; preds = %91, %79
  br label %204

104:                                              ; preds = %73
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %104
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %8, align 4
  %112 = sub nsw i32 %110, %111
  %113 = ashr i32 %112, 2
  %114 = add nsw i32 %109, %113
  %115 = load i32*, i32** %5, align 8
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* %8, align 4
  %123 = sub nsw i32 %121, %122
  %124 = ashr i32 %123, 1
  %125 = add nsw i32 %120, %124
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = add nsw i32 %127, 2
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  store i32 %125, i32* %130, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %132, %133
  %135 = mul nsw i32 %134, 3
  %136 = ashr i32 %135, 2
  %137 = add nsw i32 %131, %136
  %138 = load i32*, i32** %5, align 8
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 3
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32 %137, i32* %142, align 4
  br label %178

143:                                              ; preds = %104
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* %9, align 4
  %147 = sub nsw i32 %145, %146
  %148 = ashr i32 %147, 2
  %149 = sub nsw i32 %144, %148
  %150 = load i32*, i32** %5, align 8
  %151 = load i32, i32* %7, align 4
  %152 = add nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %150, i64 %153
  store i32 %149, i32* %154, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %9, align 4
  %158 = sub nsw i32 %156, %157
  %159 = ashr i32 %158, 1
  %160 = sub nsw i32 %155, %159
  %161 = load i32*, i32** %5, align 8
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 2
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %160, i32* %165, align 4
  %166 = load i32, i32* %8, align 4
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %9, align 4
  %169 = sub nsw i32 %167, %168
  %170 = mul nsw i32 %169, 3
  %171 = ashr i32 %170, 2
  %172 = sub nsw i32 %166, %171
  %173 = load i32*, i32** %5, align 8
  %174 = load i32, i32* %7, align 4
  %175 = add nsw i32 %174, 3
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %173, i64 %176
  store i32 %172, i32* %177, align 4
  br label %178

178:                                              ; preds = %143, %108
  br label %204

179:                                              ; preds = %73
  store i32 1, i32* %6, align 4
  br label %180

180:                                              ; preds = %200, %179
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* %10, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %180
  %185 = load i32, i32* %8, align 4
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* %8, align 4
  %188 = sub nsw i32 %186, %187
  %189 = load i32, i32* %6, align 4
  %190 = mul nsw i32 %188, %189
  %191 = load i32, i32* %10, align 4
  %192 = sdiv i32 %190, %191
  %193 = add nsw i32 %185, %192
  %194 = load i32*, i32** %5, align 8
  %195 = load i32, i32* %7, align 4
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %195, %196
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %194, i64 %198
  store i32 %193, i32* %199, align 4
  br label %200

200:                                              ; preds = %184
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %6, align 4
  br label %180

203:                                              ; preds = %180
  br label %204

204:                                              ; preds = %203, %178, %103
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %204
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %7, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %7, align 4
  br label %20

210:                                              ; preds = %20
  %211 = load i32, i32* %9, align 4
  %212 = load i32*, i32** %5, align 8
  %213 = load i32, i32* %7, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %211, i32* %215, align 4
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %210, %54, %43, %33, %15
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i64 @ensure_bits(i32*, i32) #1

declare dso_local i32 @parse_vlc(i32*, i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
