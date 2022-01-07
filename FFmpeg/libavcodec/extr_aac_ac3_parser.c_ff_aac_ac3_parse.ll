; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aac_ac3_parser.c_ff_aac_ac3_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aac_ac3_parser.c_ff_aac_ac3_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32 (i32, %struct.TYPE_12__*, i32*, i32*)*, i32, i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@AV_CODEC_ID_AAC = common dso_local global i64 0, align 8
@AV_CODEC_ID_EAC3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_aac_ac3_parse(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  store %struct.TYPE_12__* %22, %struct.TYPE_12__** %14, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 12
  store %struct.TYPE_9__* %24, %struct.TYPE_9__** %15, align 8
  store i32 0, i32* %19, align 4
  br label %25

25:                                               ; preds = %112, %6
  %26 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %26, i32* %17, align 4
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %13, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %131

32:                                               ; preds = %25
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %37
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %17, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 0, i32* %47, align 8
  br label %130

48:                                               ; preds = %37, %32
  store i32 0, i32* %16, align 4
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %82, %48
  %53 = load i32, i32* %17, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %52
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 8
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %60, %65
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = load i32 (i32, %struct.TYPE_12__*, i32*, i32*)*, i32 (i32, %struct.TYPE_12__*, i32*, i32*)** %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 11
  %78 = call i32 %71(i32 %74, %struct.TYPE_12__* %75, i32* %77, i32* %18)
  store i32 %78, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %56
  br label %85

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %52

85:                                               ; preds = %80, %52
  %86 = load i32, i32* %16, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %89, i32* %17, align 4
  br label %129

90:                                               ; preds = %85
  store i32 1, i32* %19, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  store i32 0, i32* %92, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = load i32, i32* %17, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %17, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %90
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %107, %109
  %111 = icmp sle i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %104, %90
  %113 = load i32, i32* %17, align 4
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 8
  br label %25

118:                                              ; preds = %104
  %119 = load i32, i32* %17, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %17, align 4
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 8
  br label %127

127:                                              ; preds = %121, %118
  br label %128

128:                                              ; preds = %127
  br label %129

129:                                              ; preds = %128, %88
  br label %130

130:                                              ; preds = %129, %42
  br label %131

131:                                              ; preds = %130, %25
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %133 = load i32, i32* %17, align 4
  %134 = call i64 @ff_combine_frame(%struct.TYPE_9__* %132, i32 %133, i32** %12, i32* %13)
  %135 = icmp slt i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %13, align 4
  %141 = call i64 @FFMIN(i32 %139, i32 %140)
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = sub nsw i64 %145, %141
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %143, align 8
  %148 = load i32**, i32*** %10, align 8
  store i32* null, i32** %148, align 8
  %149 = load i32*, i32** %11, align 8
  store i32 0, i32* %149, align 4
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %7, align 4
  br label %223

151:                                              ; preds = %131
  %152 = load i32*, i32** %12, align 8
  %153 = load i32**, i32*** %10, align 8
  store i32* %152, i32** %153, align 8
  %154 = load i32, i32* %13, align 4
  %155 = load i32*, i32** %11, align 8
  store i32 %154, i32* %155, align 4
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %151
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 4
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store i64 %163, i64* %165, align 8
  br label %166

166:                                              ; preds = %160, %151
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %221

169:                                              ; preds = %166
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @AV_CODEC_ID_AAC, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %208

175:                                              ; preds = %169
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 10
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AV_CODEC_ID_EAC3, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %197

186:                                              ; preds = %175
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 9
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 4
  store i32 %189, i32* %191, align 4
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 8
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 3
  store i32 %194, i32* %196, align 8
  br label %197

197:                                              ; preds = %186, %175
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 7
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  store i32 %200, i32* %202, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 2
  store i32 %205, i32* %207, align 4
  br label %208

208:                                              ; preds = %197, %169
  %209 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @AV_CODEC_ID_EAC3, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %220

214:                                              ; preds = %208
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 8
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 8
  br label %220

220:                                              ; preds = %214, %208
  br label %221

221:                                              ; preds = %220, %166
  %222 = load i32, i32* %17, align 4
  store i32 %222, i32* %7, align 4
  br label %223

223:                                              ; preds = %221, %136
  %224 = load i32, i32* %7, align 4
  ret i32 %224
}

declare dso_local i64 @ff_combine_frame(%struct.TYPE_9__*, i32, i32**, i32*) #1

declare dso_local i64 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
