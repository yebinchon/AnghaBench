; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_release_lcb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_utils.c_l2cu_release_lcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i64, i64, i32, i32, i8*, i32 }
%struct.TYPE_14__ = type { i64, i64, i64, i64, i32*, i32, i32 (i32)*, i32*, %struct.TYPE_13__, %struct.TYPE_15__*, i32, i32, i32, i8*, i8* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32 (i32, i64, i32, i32)* }

@FALSE = common dso_local global i8* null, align 8
@BT_TRANSPORT_BR_EDR = common dso_local global i64 0, align 8
@BT_TRANSPORT_LE = common dso_local global i64 0, align 8
@l2cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@BD_ADDR_LEN = common dso_local global i32 0, align 4
@LST_CONNECTED = common dso_local global i64 0, align 8
@LST_DISCONNECTING = common dso_local global i64 0, align 8
@L2CAP_PING_RESULT_NO_LINK = common dso_local global i32 0, align 4
@FIXED_QUEUE_MAX_TIMEOUT = common dso_local global i32 0, align 4
@BTM_DEV_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cu_release_lcb(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32 (i32)**, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  %7 = load i8*, i8** @FALSE, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 14
  store i8* %7, i8** %9, align 8
  %10 = load i8*, i8** @FALSE, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 13
  store i8* %10, i8** %12, align 8
  %13 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %13, i32 0, i32 12
  %15 = call i32 @btu_free_timer(i32* %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 12
  %18 = call i32 @memset(i32* %17, i32 0, i32 4)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 11
  %21 = call i32 @btu_free_timer(i32* %20)
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 11
  %24 = call i32 @memset(i32* %23, i32 0, i32 4)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 10
  %27 = call i32 @btu_free_timer(i32* %26)
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 10
  %30 = call i32 @memset(i32* %29, i32 0, i32 4)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 9
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = icmp ne %struct.TYPE_15__* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %1
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 9
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %37, align 8
  %39 = call i32 @osi_free(%struct.TYPE_15__* %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 9
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %41, align 8
  br label %42

42:                                               ; preds = %35, %1
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BT_TRANSPORT_BR_EDR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @btm_remove_sco_links(i32 %51)
  br label %53

53:                                               ; preds = %48, %42
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %89

58:                                               ; preds = %53
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %76

64:                                               ; preds = %58
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 0), align 8
  %69 = add nsw i64 %68, %67
  store i64 %69, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 0), align 8
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 0), align 8
  %71 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 1), align 8
  %72 = icmp sgt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %64
  %74 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 1), align 8
  store i64 %74, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 0), align 8
  br label %75

75:                                               ; preds = %73, %64
  br label %88

76:                                               ; preds = %58
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 2), align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 2), align 8
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 2), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 3), align 8
  %84 = icmp sgt i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %76
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 3), align 8
  store i64 %86, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 2), align 8
  br label %87

87:                                               ; preds = %85, %76
  br label %88

88:                                               ; preds = %87, %75
  br label %89

89:                                               ; preds = %88, %53
  %90 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 7), align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BD_ADDR_LEN, align 4
  %95 = call i32 @memcmp(i32 %90, i32 %93, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %89
  %98 = load i8*, i8** @FALSE, align 8
  store i8* %98, i8** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 6), align 8
  br label %99

99:                                               ; preds = %97, %89
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  store i32* %103, i32** %3, align 8
  br label %104

104:                                              ; preds = %110, %99
  %105 = load i32*, i32** %3, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i32*, i32** %3, align 8
  %109 = call i32 @l2cu_release_ccb(i32* %108)
  br label %110

110:                                              ; preds = %107
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %3, align 8
  br label %104

115:                                              ; preds = %104
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @LST_CONNECTED, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %127, label %121

121:                                              ; preds = %115
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @LST_DISCONNECTING, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %121, %115
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @btm_acl_removed(i32 %130, i64 %133)
  br label %135

135:                                              ; preds = %127, %121
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %136, i32 0, i32 7
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %167

140:                                              ; preds = %135
  br label %141

141:                                              ; preds = %148, %140
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @list_is_empty(i32* %144)
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br i1 %147, label %148, label %160

148:                                              ; preds = %141
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 7
  %151 = load i32*, i32** %150, align 8
  %152 = call %struct.TYPE_15__* @list_front(i32* %151)
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %4, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 7
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %157 = call i32 @list_remove(i32* %155, %struct.TYPE_15__* %156)
  %158 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %159 = call i32 @osi_free(%struct.TYPE_15__* %158)
  br label %141

160:                                              ; preds = %141
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 7
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @list_free(i32* %163)
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 7
  store i32* null, i32** %166, align 8
  br label %167

167:                                              ; preds = %160, %135
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %169 = call i32 @l2c_ucd_delete_sec_pending_q(%struct.TYPE_14__* %168)
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @BT_TRANSPORT_LE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %183

175:                                              ; preds = %167
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 4), align 8
  %177 = icmp sge i32 %176, 1
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 4), align 8
  %180 = add nsw i32 %179, -1
  store i32 %180, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 4), align 8
  br label %181

181:                                              ; preds = %178, %175
  %182 = call i32 (...) @l2c_ble_link_adjust_allocation()
  br label %191

183:                                              ; preds = %167
  %184 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 5), align 4
  %185 = icmp sge i32 %184, 1
  br i1 %185, label %186, label %189

186:                                              ; preds = %183
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 5), align 4
  %188 = add nsw i32 %187, -1
  store i32 %188, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @l2cb, i32 0, i32 5), align 4
  br label %189

189:                                              ; preds = %186, %183
  %190 = call i32 (...) @l2c_link_adjust_allocation()
  br label %191

191:                                              ; preds = %189, %181
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 6
  %194 = load i32 (i32)*, i32 (i32)** %193, align 8
  %195 = icmp ne i32 (i32)* %194, null
  br i1 %195, label %196, label %207

196:                                              ; preds = %191
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 6
  %199 = load i32 (i32)*, i32 (i32)** %198, align 8
  %200 = bitcast i32 (i32)* %199 to i32 (i32)**
  store i32 (i32)** %200, i32 (i32)*** %5, align 8
  %201 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 6
  store i32 (i32)* null, i32 (i32)** %202, align 8
  %203 = load i32 (i32)**, i32 (i32)*** %5, align 8
  %204 = load i32 (i32)*, i32 (i32)** %203, align 8
  %205 = load i32, i32* @L2CAP_PING_RESULT_NO_LINK, align 4
  %206 = call i32 %204(i32 %205)
  br label %207

207:                                              ; preds = %196, %191
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 4
  %210 = load i32*, i32** %209, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %256

212:                                              ; preds = %207
  br label %213

213:                                              ; preds = %246, %212
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @fixed_queue_is_empty(i32* %216)
  %218 = icmp ne i32 %217, 0
  %219 = xor i1 %218, true
  br i1 %219, label %220, label %249

220:                                              ; preds = %213
  %221 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 4
  %223 = load i32*, i32** %222, align 8
  %224 = load i32, i32* @FIXED_QUEUE_MAX_TIMEOUT, align 4
  %225 = call i64 @fixed_queue_dequeue(i32* %223, i32 %224)
  %226 = inttoptr i64 %225 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %226, %struct.TYPE_15__** %6, align 8
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 1
  %229 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %228, align 8
  %230 = icmp ne i32 (i32, i64, i32, i32)* %229, null
  br i1 %230, label %231, label %246

231:                                              ; preds = %220
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 1
  %234 = load i32 (i32, i64, i32, i32)*, i32 (i32, i64, i32, i32)** %233, align 8
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* @BTM_DEV_RESET, align 4
  %245 = call i32 %234(i32 %237, i64 %240, i32 %243, i32 %244)
  br label %246

246:                                              ; preds = %231, %220
  %247 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %248 = call i32 @osi_free(%struct.TYPE_15__* %247)
  br label %213

249:                                              ; preds = %213
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @fixed_queue_free(i32* %252, i32* null)
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %255 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %254, i32 0, i32 4
  store i32* null, i32** %255, align 8
  br label %256

256:                                              ; preds = %249, %207
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 3
  store i64 0, i64* %258, align 8
  ret void
}

declare dso_local i32 @btu_free_timer(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_15__*) #1

declare dso_local i32 @btm_remove_sco_links(i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @l2cu_release_ccb(i32*) #1

declare dso_local i32 @btm_acl_removed(i32, i64) #1

declare dso_local i32 @list_is_empty(i32*) #1

declare dso_local %struct.TYPE_15__* @list_front(i32*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @list_free(i32*) #1

declare dso_local i32 @l2c_ucd_delete_sec_pending_q(%struct.TYPE_14__*) #1

declare dso_local i32 @l2c_ble_link_adjust_allocation(...) #1

declare dso_local i32 @l2c_link_adjust_allocation(...) #1

declare dso_local i32 @fixed_queue_is_empty(i32*) #1

declare dso_local i64 @fixed_queue_dequeue(i32*, i32) #1

declare dso_local i32 @fixed_queue_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
