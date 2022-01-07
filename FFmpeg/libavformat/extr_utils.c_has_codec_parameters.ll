; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_has_codec_parameters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_has_codec_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_11__*, i32, %struct.TYPE_10__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@AV_CODEC_ID_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"unknown codec\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"unspecified frame size\00", align 1
@AV_SAMPLE_FMT_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"unspecified sample format\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"unspecified sample rate\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"unspecified number of channels\00", align 1
@AV_CODEC_ID_DTS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"no decodable DTS frames\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"unspecified size\00", align 1
@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"unspecified pixel format\00", align 1
@AV_CODEC_ID_RV30 = common dso_local global i32 0, align 4
@AV_CODEC_ID_RV40 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"no frame in rv30/40 and no sar\00", align 1
@AV_CODEC_ID_HDMV_PGS_SUBTITLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8**)* @has_codec_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_codec_parameters(%struct.TYPE_15__* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8** %1, i8*** %5, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 5
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %6, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 130
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i8**, i8*** %5, align 8
  %25 = icmp ne i8** %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8** %27, align 8
  br label %28

28:                                               ; preds = %26, %23
  store i32 0, i32* %3, align 4
  br label %233

29:                                               ; No predecessors!
  br label %30

30:                                               ; preds = %29, %17, %2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %232 [
    i32 131, label %34
    i32 128, label %125
    i32 129, label %204
    i32 130, label %224
  ]

34:                                               ; preds = %30
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %41 = call i32 @determinable_frame_size(%struct.TYPE_16__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  %45 = load i8**, i8*** %5, align 8
  %46 = icmp ne i8** %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %48, align 8
  br label %49

49:                                               ; preds = %47, %44
  store i32 0, i32* %3, align 4
  br label %233

50:                                               ; No predecessors!
  br label %51

51:                                               ; preds = %50, %39, %34
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 3
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64
  %66 = load i8**, i8*** %5, align 8
  %67 = icmp ne i8** %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8** %69, align 8
  br label %70

70:                                               ; preds = %68, %65
  store i32 0, i32* %3, align 4
  br label %233

71:                                               ; No predecessors!
  br label %72

72:                                               ; preds = %71, %58, %51
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %72
  br label %78

78:                                               ; preds = %77
  %79 = load i8**, i8*** %5, align 8
  %80 = icmp ne i8** %79, null
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %82, align 8
  br label %83

83:                                               ; preds = %81, %78
  store i32 0, i32* %3, align 4
  br label %233

84:                                               ; No predecessors!
  br label %85

85:                                               ; preds = %84, %72
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90
  %92 = load i8**, i8*** %5, align 8
  %93 = icmp ne i8** %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8** %95, align 8
  br label %96

96:                                               ; preds = %94, %91
  store i32 0, i32* %3, align 4
  br label %233

97:                                               ; No predecessors!
  br label %98

98:                                               ; preds = %97, %85
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp sge i32 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %98
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %124, label %110

110:                                              ; preds = %105
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @AV_CODEC_ID_DTS, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %124

116:                                              ; preds = %110
  br label %117

117:                                              ; preds = %116
  %118 = load i8**, i8*** %5, align 8
  %119 = icmp ne i8** %118, null
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8** %121, align 8
  br label %122

122:                                              ; preds = %120, %117
  store i32 0, i32* %3, align 4
  br label %233

123:                                              ; No predecessors!
  br label %124

124:                                              ; preds = %123, %110, %105, %98
  br label %232

125:                                              ; preds = %30
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %138, label %130

130:                                              ; preds = %125
  br label %131

131:                                              ; preds = %130
  %132 = load i8**, i8*** %5, align 8
  %133 = icmp ne i8** %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %135, align 8
  br label %136

136:                                              ; preds = %134, %131
  store i32 0, i32* %3, align 4
  br label %233

137:                                              ; No predecessors!
  br label %138

138:                                              ; preds = %137, %125
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = icmp sge i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %138
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151
  %153 = load i8**, i8*** %5, align 8
  %154 = icmp ne i8** %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i8** %156, align 8
  br label %157

157:                                              ; preds = %155, %152
  store i32 0, i32* %3, align 4
  br label %233

158:                                              ; No predecessors!
  br label %159

159:                                              ; preds = %158, %145, %138
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 1
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @AV_CODEC_ID_RV30, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %175, label %167

167:                                              ; preds = %159
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @AV_CODEC_ID_RV40, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %203

175:                                              ; preds = %167, %159
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %202, label %181

181:                                              ; preds = %175
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 1
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %202, label %189

189:                                              ; preds = %181
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %202, label %194

194:                                              ; preds = %189
  br label %195

195:                                              ; preds = %194
  %196 = load i8**, i8*** %5, align 8
  %197 = icmp ne i8** %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8** %199, align 8
  br label %200

200:                                              ; preds = %198, %195
  store i32 0, i32* %3, align 4
  br label %233

201:                                              ; No predecessors!
  br label %202

202:                                              ; preds = %201, %189, %181, %175
  br label %203

203:                                              ; preds = %202, %167
  br label %232

204:                                              ; preds = %30
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @AV_CODEC_ID_HDMV_PGS_SUBTITLE, align 8
  %209 = icmp eq i64 %207, %208
  br i1 %209, label %210, label %223

210:                                              ; preds = %204
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %223, label %215

215:                                              ; preds = %210
  br label %216

216:                                              ; preds = %215
  %217 = load i8**, i8*** %5, align 8
  %218 = icmp ne i8** %217, null
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i8**, i8*** %5, align 8
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8** %220, align 8
  br label %221

221:                                              ; preds = %219, %216
  store i32 0, i32* %3, align 4
  br label %233

222:                                              ; No predecessors!
  br label %223

223:                                              ; preds = %222, %210, %204
  br label %232

224:                                              ; preds = %30
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @AV_CODEC_ID_NONE, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  store i32 1, i32* %3, align 4
  br label %233

231:                                              ; preds = %224
  br label %232

232:                                              ; preds = %231, %30, %223, %203, %124
  store i32 1, i32* %3, align 4
  br label %233

233:                                              ; preds = %232, %230, %221, %200, %157, %136, %122, %96, %83, %70, %49, %28
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @determinable_frame_size(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
