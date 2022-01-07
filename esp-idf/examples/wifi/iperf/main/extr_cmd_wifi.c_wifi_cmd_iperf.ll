; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_wifi_cmd_iperf.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/wifi/iperf/main/extr_cmd_wifi.c_wifi_cmd_iperf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, i32 }
%struct.TYPE_19__ = type { i64, i64* }
%struct.TYPE_18__ = type { i64, i64* }
%struct.TYPE_17__ = type { i64, i8** }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32, i32, i64, i64, i8*, i8* }

@iperf_args = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"should specific client/server mode\00", align 1
@IPERF_FLAG_SERVER = common dso_local global i32 0, align 4
@IPERF_FLAG_CLIENT = common dso_local global i32 0, align 4
@IPERF_FLAG_TCP = common dso_local global i32 0, align 4
@IPERF_FLAG_UDP = common dso_local global i32 0, align 4
@IPERF_DEFAULT_PORT = common dso_local global i8* null, align 8
@IPERF_DEFAULT_INTERVAL = common dso_local global i8* null, align 8
@IPERF_DEFAULT_TIME = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [72 x i8] c"mode=%s-%s sip=%d.%d.%d.%d:%d, dip=%d.%d.%d.%d:%d, interval=%d, time=%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"server\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"client\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @wifi_cmd_iperf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wifi_cmd_iperf(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @arg_parse(i32 %8, i8** %9, i8** bitcast (%struct.TYPE_12__* @iperf_args to i8**))
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 7), align 8
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @arg_print_errors(i32 %14, i32 %15, i8* %18)
  store i32 0, i32* %3, align 4
  br label %235

20:                                               ; preds = %2
  %21 = call i32 @memset(%struct.TYPE_20__* %7, i32 0, i32 48)
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 6), align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 (...) @iperf_stop()
  store i32 0, i32* %3, align 4
  br label %235

28:                                               ; preds = %20
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 4), align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 5), align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %33, %28
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 4), align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 5), align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43, %33
  %49 = load i32, i32* @TAG, align 4
  %50 = call i32 @ESP_LOGE(i32 %49, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %235

51:                                               ; preds = %43, %38
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 4), align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @IPERF_FLAG_SERVER, align 4
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 8
  br label %73

61:                                               ; preds = %51
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 4), align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @esp_ip4addr_aton(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load i32, i32* @IPERF_FLAG_CLIENT, align 4
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %69
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %61, %56
  %74 = call i32 (...) @wifi_get_local_ip()
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  store i32 %74, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %235

80:                                               ; preds = %73
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 3), align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load i32, i32* @IPERF_FLAG_TCP, align 4
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %86
  store i32 %89, i32* %87, align 8
  br label %95

90:                                               ; preds = %80
  %91 = load i32, i32* @IPERF_FLAG_UDP, align 4
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 2), align 8
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i8*, i8** @IPERF_DEFAULT_PORT, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 6
  store i8* %101, i8** %102, align 8
  %103 = load i8*, i8** @IPERF_DEFAULT_PORT, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  store i8* %103, i8** %104, align 8
  br label %130

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IPERF_FLAG_SERVER, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 2), align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load i8**, i8*** %113, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 0
  %116 = load i8*, i8** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 6
  store i8* %116, i8** %117, align 8
  %118 = load i8*, i8** @IPERF_DEFAULT_PORT, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  store i8* %118, i8** %119, align 8
  br label %129

120:                                              ; preds = %105
  %121 = load i8*, i8** @IPERF_DEFAULT_PORT, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 6
  store i8* %121, i8** %122, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 2), align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  store i8* %127, i8** %128, align 8
  br label %129

129:                                              ; preds = %120, %111
  br label %130

130:                                              ; preds = %129, %100
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 1), align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = load i8*, i8** @IPERF_DEFAULT_INTERVAL, align 8
  %137 = ptrtoint i8* %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  store i64 %137, i64* %138, align 8
  br label %154

139:                                              ; preds = %130
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 1), align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 0
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  store i64 %144, i64* %145, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = icmp sle i64 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %139
  %150 = load i8*, i8** @IPERF_DEFAULT_INTERVAL, align 8
  %151 = ptrtoint i8* %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %149, %139
  br label %154

154:                                              ; preds = %153, %135
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 0), align 8
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load i64, i64* @IPERF_DEFAULT_TIME, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  store i64 %160, i64* %161, align 8
  br label %179

162:                                              ; preds = %154
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iperf_args, i32 0, i32 0), align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 1
  %165 = load i64*, i64** %164, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  store i64 %167, i64* %168, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp sle i64 %170, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %162
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  store i64 %176, i64* %177, align 8
  br label %178

178:                                              ; preds = %174, %162
  br label %179

179:                                              ; preds = %178, %159
  %180 = load i32, i32* @TAG, align 4
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @IPERF_FLAG_TCP, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %188 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @IPERF_FLAG_SERVER, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  %193 = zext i1 %192 to i64
  %194 = select i1 %192, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = and i32 %196, 255
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = ashr i32 %199, 8
  %201 = and i32 %200, 255
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = ashr i32 %203, 16
  %205 = and i32 %204, 255
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = ashr i32 %207, 24
  %209 = and i32 %208, 255
  %210 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 6
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 255
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = ashr i32 %216, 8
  %218 = and i32 %217, 255
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = ashr i32 %220, 16
  %222 = and i32 %221, 255
  %223 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = ashr i32 %224, 24
  %226 = and i32 %225, 255
  %227 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 5
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 3
  %230 = load i64, i64* %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %7, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @ESP_LOGI(i32 %180, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i8* %187, i8* %194, i32 %197, i32 %201, i32 %205, i32 %209, i8* %211, i32 %214, i32 %218, i32 %222, i32 %226, i8* %228, i64 %230, i64 %232)
  %234 = call i32 @iperf_start(%struct.TYPE_20__* %7)
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %179, %79, %48, %26, %13
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local i32 @arg_parse(i32, i8**, i8**) #1

declare dso_local i32 @arg_print_errors(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @iperf_stop(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @esp_ip4addr_aton(i32) #1

declare dso_local i32 @wifi_get_local_ip(...) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i8*, i64, i64) #1

declare dso_local i32 @iperf_start(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
