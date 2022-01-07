; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_register_service_change_notify.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_register_service_change_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32* }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_20__ = type { i32*, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_15__ = type { i32, i32* }

@FALSE = common dso_local global i64 0, align 8
@LEN_UUID_16 = common dso_local global i32 0, align 4
@UUID_SERVCLASS_GATT_SERVER = common dso_local global i32 0, align 4
@GATT_UUID_GATT_SRV_CHGD = common dso_local global i32 0, align 4
@GATT_UUID_CHAR_CLIENT_CONFIG = common dso_local global i32 0, align 4
@SERVICE_CHANGE_CCC_WRITTEN_SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SERVICE_CHANGE_CACHE_NOT_FOUND = common dso_local global i32 0, align 4
@SERVICE_CHANGE_SERVICE_NOT_FOUND = common dso_local global i32 0, align 4
@SERVICE_CHANGE_CHAR_NOT_FOUND = common dso_local global i32 0, align 4
@GATT_CLT_CONFIG_INDICATION = common dso_local global i32 0, align 4
@BTA_GATTC_TYPE_WRITE = common dso_local global i32 0, align 4
@BTA_GATT_AUTH_REQ_NONE = common dso_local global i32 0, align 4
@SERVICE_CHANGE_CCC_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bta_gattc_register_service_change_notify(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__, align 4
  %17 = alloca %struct.TYPE_14__, align 4
  %18 = alloca %struct.TYPE_14__, align 4
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_15__, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %6, align 8
  store i32* null, i32** %7, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %9, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %10, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %12, align 8
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %14, align 8
  %28 = load i64, i64* @FALSE, align 8
  store i64 %28, i64* %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* @LEN_UUID_16, align 4
  store i32 %31, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  %33 = load i32, i32* @UUID_SERVCLASS_GATT_SERVER, align 4
  store i32 %33, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* @LEN_UUID_16, align 4
  store i32 %36, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 1
  %38 = load i32, i32* @GATT_UUID_GATT_SRV_CHGD, align 4
  store i32 %38, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* @LEN_UUID_16, align 4
  store i32 %41, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  %43 = load i32, i32* @GATT_UUID_CHAR_CLIENT_CONFIG, align 4
  store i32 %43, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call %struct.TYPE_19__* @bta_gattc_conn_find_alloc(i32 %44)
  store %struct.TYPE_19__* %45, %struct.TYPE_19__** %19, align 8
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %47 = icmp ne %struct.TYPE_19__* %46, null
  br i1 %47, label %48, label %55

48:                                               ; preds = %2
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @SERVICE_CHANGE_CCC_WRITTEN_SUCCESS, align 4
  store i32 %54, i32* %3, align 4
  br label %229

55:                                               ; preds = %48, %2
  %56 = load i32, i32* %5, align 4
  %57 = call %struct.TYPE_17__* @bta_gattc_find_srcb(i32 %56)
  store %struct.TYPE_17__* %57, %struct.TYPE_17__** %6, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = icmp ne %struct.TYPE_17__* %58, null
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %7, align 8
  %69 = load i64, i64* @TRUE, align 8
  store i64 %69, i64* %12, align 8
  br label %72

70:                                               ; preds = %60, %55
  %71 = load i32, i32* @SERVICE_CHANGE_CACHE_NOT_FOUND, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %65
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @TRUE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %72
  %77 = load i32*, i32** %7, align 8
  %78 = call i32* @list_begin(i32* %77)
  store i32* %78, i32** %20, align 8
  br label %79

79:                                               ; preds = %96, %76
  %80 = load i32*, i32** %20, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = call i32* @list_end(i32* %81)
  %83 = icmp ne i32* %80, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load i32*, i32** %20, align 8
  %86 = call i8* @list_node(i32* %85)
  %87 = bitcast i8* %86 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %87, %struct.TYPE_16__** %8, align 8
  %88 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %88, i32 0, i32 1
  %90 = load i64, i64* @TRUE, align 8
  %91 = call i64 @bta_gattc_uuid_compare(%struct.TYPE_14__* %16, i32* %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %84
  %94 = load i64, i64* @TRUE, align 8
  store i64 %94, i64* %13, align 8
  br label %99

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95
  %97 = load i32*, i32** %20, align 8
  %98 = call i32* @list_next(i32* %97)
  store i32* %98, i32** %20, align 8
  br label %79

99:                                               ; preds = %93, %79
  br label %102

100:                                              ; preds = %72
  %101 = load i32, i32* @SERVICE_CHANGE_CACHE_NOT_FOUND, align 4
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @TRUE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %140

106:                                              ; preds = %102
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %139

111:                                              ; preds = %106
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i32* @list_begin(i32* %114)
  store i32* %115, i32** %21, align 8
  br label %116

116:                                              ; preds = %135, %111
  %117 = load i32*, i32** %21, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = call i32* @list_end(i32* %120)
  %122 = icmp ne i32* %117, %121
  br i1 %122, label %123, label %138

123:                                              ; preds = %116
  %124 = load i32*, i32** %21, align 8
  %125 = call i8* @list_node(i32* %124)
  %126 = bitcast i8* %125 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %126, %struct.TYPE_20__** %9, align 8
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %127, i32 0, i32 1
  %129 = load i64, i64* @TRUE, align 8
  %130 = call i64 @bta_gattc_uuid_compare(%struct.TYPE_14__* %17, i32* %128, i64 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %123
  %133 = load i64, i64* @TRUE, align 8
  store i64 %133, i64* %14, align 8
  br label %138

134:                                              ; preds = %123
  br label %135

135:                                              ; preds = %134
  %136 = load i32*, i32** %21, align 8
  %137 = call i32* @list_next(i32* %136)
  store i32* %137, i32** %21, align 8
  br label %116

138:                                              ; preds = %132, %116
  br label %139

139:                                              ; preds = %138, %106
  br label %147

140:                                              ; preds = %102
  %141 = load i64, i64* %12, align 8
  %142 = load i64, i64* @TRUE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @SERVICE_CHANGE_SERVICE_NOT_FOUND, align 4
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %144, %140
  br label %147

147:                                              ; preds = %146, %139
  %148 = load i64, i64* %14, align 8
  %149 = load i64, i64* @TRUE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %185

151:                                              ; preds = %147
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %184

156:                                              ; preds = %151
  %157 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = call i32* @list_begin(i32* %159)
  store i32* %160, i32** %22, align 8
  br label %161

161:                                              ; preds = %180, %156
  %162 = load i32*, i32** %22, align 8
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = call i32* @list_end(i32* %165)
  %167 = icmp ne i32* %162, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %161
  %169 = load i32*, i32** %22, align 8
  %170 = call i8* @list_node(i32* %169)
  %171 = bitcast i8* %170 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %171, %struct.TYPE_18__** %10, align 8
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 1
  %174 = load i64, i64* @TRUE, align 8
  %175 = call i64 @bta_gattc_uuid_compare(%struct.TYPE_14__* %18, i32* %173, i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i64, i64* @TRUE, align 8
  store i64 %178, i64* %15, align 8
  br label %183

179:                                              ; preds = %168
  br label %180

180:                                              ; preds = %179
  %181 = load i32*, i32** %22, align 8
  %182 = call i32* @list_next(i32* %181)
  store i32* %182, i32** %22, align 8
  br label %161

183:                                              ; preds = %177, %161
  br label %184

184:                                              ; preds = %183, %151
  br label %192

185:                                              ; preds = %147
  %186 = load i64, i64* %13, align 8
  %187 = load i64, i64* @TRUE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %185
  %190 = load i32, i32* @SERVICE_CHANGE_CHAR_NOT_FOUND, align 4
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %189, %185
  br label %192

192:                                              ; preds = %191, %184
  %193 = load i64, i64* %15, align 8
  %194 = load i64, i64* @TRUE, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %220

196:                                              ; preds = %192
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %198 = icmp ne %struct.TYPE_19__* %197, null
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 8
  %205 = load i64, i64* @TRUE, align 8
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %199, %196
  %209 = load i32, i32* @SERVICE_CHANGE_CCC_WRITTEN_SUCCESS, align 4
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* @GATT_CLT_CONFIG_INDICATION, align 4
  store i32 %210, i32* %23, align 4
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  store i32 2, i32* %211, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  store i32* %23, i32** %212, align 8
  %213 = load i32, i32* %4, align 4
  %214 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @BTA_GATTC_TYPE_WRITE, align 4
  %218 = load i32, i32* @BTA_GATT_AUTH_REQ_NONE, align 4
  %219 = call i32 @BTA_GATTC_WriteCharDescr(i32 %213, i32 %216, i32 %217, %struct.TYPE_15__* %24, i32 %218)
  br label %227

220:                                              ; preds = %192
  %221 = load i64, i64* %14, align 8
  %222 = load i64, i64* @TRUE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = load i32, i32* @SERVICE_CHANGE_CCC_NOT_FOUND, align 4
  store i32 %225, i32* %11, align 4
  br label %226

226:                                              ; preds = %224, %220
  br label %227

227:                                              ; preds = %226, %208
  %228 = load i32, i32* %11, align 4
  store i32 %228, i32* %3, align 4
  br label %229

229:                                              ; preds = %227, %53
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local %struct.TYPE_19__* @bta_gattc_conn_find_alloc(i32) #1

declare dso_local %struct.TYPE_17__* @bta_gattc_find_srcb(i32) #1

declare dso_local i32* @list_begin(i32*) #1

declare dso_local i32* @list_end(i32*) #1

declare dso_local i8* @list_node(i32*) #1

declare dso_local i64 @bta_gattc_uuid_compare(%struct.TYPE_14__*, i32*, i64) #1

declare dso_local i32* @list_next(i32*) #1

declare dso_local i32 @BTA_GATTC_WriteCharDescr(i32, i32, i32, %struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
