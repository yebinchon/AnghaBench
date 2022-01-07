; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_aggregator.c_mmal_component_create_aggregator_pipeline.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/components/extr_aggregator.c_mmal_component_create_aggregator_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_14__*, i64*, i64* }
%struct.TYPE_14__ = type { %struct.MMAL_COMPONENT_MODULE_T* }
%struct.MMAL_COMPONENT_MODULE_T = type { i32 }
%struct.TYPE_15__ = type { i32, i32 }

@MMAL_ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"mmal aggregator\00", align 1
@MMAL_SUCCESS = common dso_local global i64 0, align 8
@aggregator_parameter_get = common dso_local global i32 0, align 4
@aggregator_parameter_set = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, %struct.TYPE_16__*)* @mmal_component_create_aggregator_pipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mmal_component_create_aggregator_pipeline(i8* %0, i8* %1, %struct.TYPE_16__* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca [2 x %struct.TYPE_16__*], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  %15 = bitcast [2 x %struct.TYPE_16__*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %15, i8 0, i64 16, i1 false)
  %16 = load i64, i64* @MMAL_ENOMEM, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = add i32 %19, 1
  %21 = call i8* @vcos_calloc(i32 1, i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i8* %21, i8** %11, align 8
  store i8* %21, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %239

25:                                               ; preds = %3
  %26 = load i8*, i8** %12, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @memcpy(i8* %26, i8* %27, i32 %28)
  %30 = call i64 @mmal_graph_create(%struct.TYPE_15__** %7, i32 4)
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @MMAL_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %239

35:                                               ; preds = %25
  %36 = load i32, i32* @aggregator_parameter_get, align 4
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @aggregator_parameter_set, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %171, %129, %87, %35
  %43 = load i8*, i8** %12, align 8
  %44 = load i8, i8* %43, align 1
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %172

46:                                               ; preds = %42
  %47 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 0
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 16
  %49 = icmp ne %struct.TYPE_16__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  %51 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 0
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %51, align 16
  %53 = call i32 @mmal_component_destroy(%struct.TYPE_16__* %52)
  br label %54

54:                                               ; preds = %50, %46
  %55 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 0
  store %struct.TYPE_16__* %56, %struct.TYPE_16__** %57, align 16
  %58 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %58, align 8
  %59 = load i8*, i8** %12, align 8
  store i8* %59, i8** %14, align 8
  br label %60

60:                                               ; preds = %73, %54
  %61 = load i8*, i8** %12, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load i8*, i8** %12, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 58
  br label %70

70:                                               ; preds = %65, %60
  %71 = phi i1 [ false, %60 ], [ %69, %65 ]
  br i1 %71, label %72, label %76

72:                                               ; preds = %70
  br label %73

73:                                               ; preds = %72
  %74 = load i8*, i8** %12, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %12, align 8
  br label %60

76:                                               ; preds = %70
  %77 = load i8*, i8** %12, align 8
  %78 = load i8, i8* %77, align 1
  %79 = icmp ne i8 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8*, i8** %12, align 8
  %82 = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %82, i8** %12, align 8
  store i8 0, i8* %81, align 1
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i8*, i8** %14, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %83
  br label %42

88:                                               ; preds = %83
  %89 = load i8*, i8** %14, align 8
  %90 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %91 = call i64 @mmal_component_create(i8* %89, %struct.TYPE_16__** %90)
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* @MMAL_SUCCESS, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %239

96:                                               ; preds = %88
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %98 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = call i64 @mmal_graph_add_component(%struct.TYPE_15__* %97, %struct.TYPE_16__* %99)
  store i64 %100, i64* %9, align 8
  %101 = load i64, i64* %9, align 8
  %102 = load i64, i64* @MMAL_SUCCESS, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %239

105:                                              ; preds = %96
  %106 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 0
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 16
  %108 = icmp ne %struct.TYPE_16__* %107, null
  br i1 %108, label %130, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %109
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %117 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 4
  %120 = load i64*, i64** %119, align 8
  %121 = getelementptr inbounds i64, i64* %120, i64 0
  %122 = load i64, i64* %121, align 8
  %123 = call i64 @mmal_graph_add_port(%struct.TYPE_15__* %116, i64 %122)
  store i64 %123, i64* %9, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* @MMAL_SUCCESS, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %115
  br label %239

128:                                              ; preds = %115
  br label %129

129:                                              ; preds = %128, %109
  br label %42

130:                                              ; preds = %105
  %131 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 0
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 16
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp slt i32 %134, 1
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %140, 1
  br i1 %141, label %142, label %143

142:                                              ; preds = %136, %130
  br label %239

143:                                              ; preds = %136
  %144 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 0
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 16
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 3
  %147 = load i64*, i64** %146, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i32 0, i32 4
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  %155 = load i64, i64* %154, align 8
  %156 = call i64 @mmal_connection_create(i32** %13, i64 %149, i64 %155, i32 0)
  store i64 %156, i64* %9, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* @MMAL_SUCCESS, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %161

160:                                              ; preds = %143
  br label %239

161:                                              ; preds = %143
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %163 = load i32*, i32** %13, align 8
  %164 = call i64 @mmal_graph_add_connection(%struct.TYPE_15__* %162, i32* %163)
  store i64 %164, i64* %9, align 8
  %165 = load i32*, i32** %13, align 8
  %166 = call i32 @mmal_connection_destroy(i32* %165)
  %167 = load i64, i64* %9, align 8
  %168 = load i64, i64* @MMAL_SUCCESS, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %239

171:                                              ; preds = %161
  br label %42

172:                                              ; preds = %42
  %173 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %173, align 8
  %175 = icmp ne %struct.TYPE_16__* %174, null
  br i1 %175, label %176, label %204

176:                                              ; preds = %172
  %177 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %204

182:                                              ; preds = %176
  %183 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 3
  %186 = load i64*, i64** %185, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %204

190:                                              ; preds = %182
  %191 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %192 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 3
  %195 = load i64*, i64** %194, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = call i64 @mmal_graph_add_port(%struct.TYPE_15__* %191, i64 %197)
  store i64 %198, i64* %9, align 8
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* @MMAL_SUCCESS, align 8
  %201 = icmp ne i64 %199, %200
  br i1 %201, label %202, label %203

202:                                              ; preds = %190
  br label %239

203:                                              ; preds = %190
  br label %204

204:                                              ; preds = %203, %182, %176, %172
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %206 = bitcast %struct.TYPE_15__* %205 to %struct.MMAL_COMPONENT_MODULE_T*
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %209, i32 0, i32 0
  store %struct.MMAL_COMPONENT_MODULE_T* %206, %struct.MMAL_COMPONENT_MODULE_T** %210, align 8
  %211 = load i8*, i8** %4, align 8
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %213 = call i64 @mmal_graph_component_constructor(i8* %211, %struct.TYPE_16__* %212)
  store i64 %213, i64* %9, align 8
  %214 = load i64, i64* %9, align 8
  %215 = load i64, i64* @MMAL_SUCCESS, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %204
  br label %239

218:                                              ; preds = %204
  br label %219

219:                                              ; preds = %245, %218
  %220 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 0
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %220, align 16
  %222 = icmp ne %struct.TYPE_16__* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 0
  %225 = load %struct.TYPE_16__*, %struct.TYPE_16__** %224, align 16
  %226 = call i32 @mmal_component_destroy(%struct.TYPE_16__* %225)
  br label %227

227:                                              ; preds = %223, %219
  %228 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %228, align 8
  %230 = icmp ne %struct.TYPE_16__* %229, null
  br i1 %230, label %231, label %235

231:                                              ; preds = %227
  %232 = getelementptr inbounds [2 x %struct.TYPE_16__*], [2 x %struct.TYPE_16__*]* %8, i64 0, i64 1
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %232, align 8
  %234 = call i32 @mmal_component_destroy(%struct.TYPE_16__* %233)
  br label %235

235:                                              ; preds = %231, %227
  %236 = load i8*, i8** %11, align 8
  %237 = call i32 @vcos_free(i8* %236)
  %238 = load i64, i64* %9, align 8
  ret i64 %238

239:                                              ; preds = %217, %202, %170, %160, %142, %127, %104, %95, %34, %24
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %241 = icmp ne %struct.TYPE_15__* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %244 = call i32 @mmal_graph_destroy(%struct.TYPE_15__* %243)
  br label %245

245:                                              ; preds = %242, %239
  br label %219
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i8* @vcos_calloc(i32, i32, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i64 @mmal_graph_create(%struct.TYPE_15__**, i32) #2

declare dso_local i32 @mmal_component_destroy(%struct.TYPE_16__*) #2

declare dso_local i64 @mmal_component_create(i8*, %struct.TYPE_16__**) #2

declare dso_local i64 @mmal_graph_add_component(%struct.TYPE_15__*, %struct.TYPE_16__*) #2

declare dso_local i64 @mmal_graph_add_port(%struct.TYPE_15__*, i64) #2

declare dso_local i64 @mmal_connection_create(i32**, i64, i64, i32) #2

declare dso_local i64 @mmal_graph_add_connection(%struct.TYPE_15__*, i32*) #2

declare dso_local i32 @mmal_connection_destroy(i32*) #2

declare dso_local i64 @mmal_graph_component_constructor(i8*, %struct.TYPE_16__*) #2

declare dso_local i32 @vcos_free(i8*) #2

declare dso_local i32 @mmal_graph_destroy(%struct.TYPE_15__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
