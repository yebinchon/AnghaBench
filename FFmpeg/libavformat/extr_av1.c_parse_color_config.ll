; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1.c_parse_color_config.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_av1.c_parse_color_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@FF_PROFILE_AV1_PROFESSIONAL = common dso_local global i64 0, align 8
@FF_PROFILE_AV1_HIGH = common dso_local global i64 0, align 8
@AVCOL_PRI_UNSPECIFIED = common dso_local global i8* null, align 8
@AVCOL_TRC_UNSPECIFIED = common dso_local global i8* null, align 8
@AVCOL_SPC_UNSPECIFIED = common dso_local global i8* null, align 8
@AVCOL_PRI_BT709 = common dso_local global i8* null, align 8
@AVCOL_TRC_IEC61966_2_1 = common dso_local global i8* null, align 8
@AVCOL_SPC_RGB = common dso_local global i8* null, align 8
@FF_PROFILE_AV1_MAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @parse_color_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_color_config(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = call i8* @get_bits1(i32* %8)
  %10 = ptrtoint i8* %9 to i32
  store i32 %10, i32* %7, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FF_PROFILE_AV1_PROFESSIONAL, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = call i8* @get_bits1(i32* %20)
  %22 = ptrtoint i8* %21 to i32
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %19, %16, %2
  %24 = load i32, i32* %7, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 8, %25
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 2
  %29 = add nsw i32 %26, %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @FF_PROFILE_AV1_HIGH, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %23
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 0, i32* %39, align 4
  br label %46

40:                                               ; preds = %23
  %41 = load i32*, i32** %5, align 8
  %42 = call i8* @get_bits1(i32* %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32*, i32** %5, align 8
  %48 = call i8* @get_bits1(i32* %47)
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %46
  %57 = load i32*, i32** %5, align 8
  %58 = call i8* @get_bits(i32* %57, i32 8)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 10
  store i8* %58, i8** %60, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = call i8* @get_bits(i32* %61, i32 8)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i8* @get_bits(i32* %65, i32 8)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 8
  store i8* %66, i8** %68, align 8
  br label %79

69:                                               ; preds = %46
  %70 = load i8*, i8** @AVCOL_PRI_UNSPECIFIED, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 10
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** @AVCOL_TRC_UNSPECIFIED, align 8
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 9
  store i8* %73, i8** %75, align 8
  %76 = load i8*, i8** @AVCOL_SPC_UNSPECIFIED, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 8
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %69, %56
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load i32*, i32** %5, align 8
  %86 = call i8* @get_bits1(i32* %85)
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 7
  store i8* %86, i8** %88, align 8
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 4
  store i32 1, i32* %90, align 4
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 5
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 6
  store i8* null, i8** %94, align 8
  store i32 0, i32* %3, align 4
  br label %194

95:                                               ; preds = %79
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 10
  %98 = load i8*, i8** %97, align 8
  %99 = load i8*, i8** @AVCOL_PRI_BT709, align 8
  %100 = icmp eq i8* %98, %99
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 9
  %104 = load i8*, i8** %103, align 8
  %105 = load i8*, i8** @AVCOL_TRC_IEC61966_2_1, align 8
  %106 = icmp eq i8* %104, %105
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 8
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** @AVCOL_SPC_RGB, align 8
  %112 = icmp eq i8* %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %107
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  store i32 0, i32* %115, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 5
  store i32 0, i32* %117, align 8
  br label %190

118:                                              ; preds = %107, %101, %95
  %119 = load i32*, i32** %5, align 8
  %120 = call i8* @get_bits1(i32* %119)
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 7
  store i8* %120, i8** %122, align 8
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @FF_PROFILE_AV1_MAIN, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %118
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  store i32 1, i32* %130, align 4
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 5
  store i32 1, i32* %132, align 8
  br label %174

133:                                              ; preds = %118
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @FF_PROFILE_AV1_HIGH, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %133
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 4
  store i32 0, i32* %141, align 4
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 5
  store i32 0, i32* %143, align 8
  br label %173

144:                                              ; preds = %133
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %167

147:                                              ; preds = %144
  %148 = load i32*, i32** %5, align 8
  %149 = call i8* @get_bits1(i32* %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load i32*, i32** %5, align 8
  %159 = call i8* @get_bits1(i32* %158)
  %160 = ptrtoint i8* %159 to i32
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 8
  br label %166

163:                                              ; preds = %147
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 5
  store i32 0, i32* %165, align 8
  br label %166

166:                                              ; preds = %163, %157
  br label %172

167:                                              ; preds = %144
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 4
  store i32 1, i32* %169, align 4
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 5
  store i32 0, i32* %171, align 8
  br label %172

172:                                              ; preds = %167, %166
  br label %173

173:                                              ; preds = %172, %139
  br label %174

174:                                              ; preds = %173, %128
  %175 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %174
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i32*, i32** %5, align 8
  %186 = call i8* @get_bits(i32* %185, i32 2)
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 6
  store i8* %186, i8** %188, align 8
  br label %189

189:                                              ; preds = %184, %179, %174
  br label %190

190:                                              ; preds = %189, %113
  br label %191

191:                                              ; preds = %190
  %192 = load i32*, i32** %5, align 8
  %193 = call i32 @skip_bits1(i32* %192)
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %191, %84
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
