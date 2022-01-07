; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindServiceInDb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/sdp/extr_sdp_api.c_SDP_FindServiceInDb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_12__* }

@ATTR_ID_SERVICE_CLASS_ID_LIST = common dso_local global i64 0, align 8
@DATA_ELE_SEQ_DESC_TYPE = common dso_local global i64 0, align 8
@UUID_DESC_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"SDP_FindServiceInDb - p_sattr value = 0x%x serviceuuid = 0x%x\0D\0A\00", align 1
@UUID_SERVCLASS_HDP_PROFILE = common dso_local global i64 0, align 8
@UUID_SERVCLASS_HDP_SOURCE = common dso_local global i64 0, align 8
@UUID_SERVCLASS_HDP_SINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"SDP_FindServiceInDb found HDP source or sink\0A\00", align 1
@ATTR_ID_SERVICE_ID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @SDP_FindServiceInDb(%struct.TYPE_13__* %0, i64 %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = icmp eq %struct.TYPE_13__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %228

15:                                               ; preds = %3
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  store %struct.TYPE_11__* %21, %struct.TYPE_11__** %8, align 8
  br label %26

22:                                               ; preds = %15
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %8, align 8
  br label %26

26:                                               ; preds = %22, %18
  br label %27

27:                                               ; preds = %223, %26
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = icmp ne %struct.TYPE_11__* %28, null
  br i1 %29, label %30, label %227

30:                                               ; preds = %27
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  store %struct.TYPE_12__* %33, %struct.TYPE_12__** %9, align 8
  br label %34

34:                                               ; preds = %219, %30
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %36 = icmp ne %struct.TYPE_12__* %35, null
  br i1 %36, label %37, label %223

37:                                               ; preds = %34
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ATTR_ID_SERVICE_CLASS_ID_LIST, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %185

43:                                               ; preds = %37
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @SDP_DISC_ATTR_TYPE(i32 %46)
  %48 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %185

50:                                               ; preds = %43
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  store %struct.TYPE_12__* %55, %struct.TYPE_12__** %10, align 8
  br label %56

56:                                               ; preds = %180, %50
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %184

59:                                               ; preds = %56
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @SDP_DISC_ATTR_TYPE(i32 %62)
  %64 = load i64, i64* @UUID_DESC_TYPE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %104

66:                                               ; preds = %59
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @SDP_DISC_ATTR_LEN(i32 %69)
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %104

72:                                               ; preds = %66
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i32 (i8*, ...) @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %77, i64 %78)
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* @UUID_SERVCLASS_HDP_PROFILE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %72
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UUID_SERVCLASS_HDP_SOURCE, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %83
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @UUID_SERVCLASS_HDP_SINK, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %91, %83
  %100 = call i32 (i8*, ...) @SDP_TRACE_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %101, %struct.TYPE_11__** %4, align 8
  br label %228

102:                                              ; preds = %91
  br label %103

103:                                              ; preds = %102, %72
  br label %104

104:                                              ; preds = %103, %66, %59
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @SDP_DISC_ATTR_TYPE(i32 %107)
  %109 = load i64, i64* @UUID_DESC_TYPE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %104
  %112 = load i64, i64* %6, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %111
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @SDP_DISC_ATTR_LEN(i32 %117)
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %130

120:                                              ; preds = %114
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* %6, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120, %111
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %4, align 8
  br label %228

130:                                              ; preds = %120, %114, %104
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @SDP_DISC_ATTR_TYPE(i32 %133)
  %135 = load i64, i64* @DATA_ELE_SEQ_DESC_TYPE, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %178

137:                                              ; preds = %130
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  store %struct.TYPE_12__* %142, %struct.TYPE_12__** %11, align 8
  br label %143

143:                                              ; preds = %173, %137
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %145 = icmp ne %struct.TYPE_12__* %144, null
  br i1 %145, label %146, label %177

146:                                              ; preds = %143
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = call i64 @SDP_DISC_ATTR_TYPE(i32 %149)
  %151 = load i64, i64* @UUID_DESC_TYPE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %172

153:                                              ; preds = %146
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @SDP_DISC_ATTR_LEN(i32 %156)
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %172

159:                                              ; preds = %153
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* %6, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %159
  %168 = load i64, i64* %6, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167, %159
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %171, %struct.TYPE_11__** %4, align 8
  br label %228

172:                                              ; preds = %167, %153, %146
  br label %173

173:                                              ; preds = %172
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %175, align 8
  store %struct.TYPE_12__* %176, %struct.TYPE_12__** %11, align 8
  br label %143

177:                                              ; preds = %143
  br label %178

178:                                              ; preds = %177, %130
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  store %struct.TYPE_12__* %183, %struct.TYPE_12__** %10, align 8
  br label %56

184:                                              ; preds = %56
  br label %223

185:                                              ; preds = %43, %37
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @ATTR_ID_SERVICE_ID, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %218

191:                                              ; preds = %185
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @SDP_DISC_ATTR_TYPE(i32 %194)
  %196 = load i64, i64* @UUID_DESC_TYPE, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %217

198:                                              ; preds = %191
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @SDP_DISC_ATTR_LEN(i32 %201)
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %204, label %217

204:                                              ; preds = %198
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %6, align 8
  %211 = icmp eq i64 %209, %210
  br i1 %211, label %215, label %212

212:                                              ; preds = %204
  %213 = load i64, i64* %6, align 8
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212, %204
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %216, %struct.TYPE_11__** %4, align 8
  br label %228

217:                                              ; preds = %212, %198, %191
  br label %218

218:                                              ; preds = %217, %185
  br label %219

219:                                              ; preds = %218
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_12__*, %struct.TYPE_12__** %221, align 8
  store %struct.TYPE_12__* %222, %struct.TYPE_12__** %9, align 8
  br label %34

223:                                              ; preds = %184, %34
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %225, align 8
  store %struct.TYPE_11__* %226, %struct.TYPE_11__** %8, align 8
  br label %27

227:                                              ; preds = %27
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  br label %228

228:                                              ; preds = %227, %215, %170, %128, %99, %14
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  ret %struct.TYPE_11__* %229
}

declare dso_local i64 @SDP_DISC_ATTR_TYPE(i32) #1

declare dso_local i32 @SDP_DISC_ATTR_LEN(i32) #1

declare dso_local i32 @SDP_TRACE_DEBUG(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
