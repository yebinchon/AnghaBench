; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_init_netplay.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_init_netplay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.retro_callbacks = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@netplay_is_client = common dso_local global i32 0, align 4
@netplay_enabled = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_MAP_UNDERSTOOD = common dso_local global i64 0, align 8
@NETPLAY_QUIRK_NO_SAVESTATES = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_MAP_NO_SAVESTATES = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_MAP_NO_TRANSMISSION = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_NO_TRANSMISSION = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_MAP_INITIALIZATION = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_INITIALIZATION = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_MAP_ENDIAN_DEPENDENT = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_ENDIAN_DEPENDENT = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_MAP_PLATFORM_DEPENDENT = common dso_local global i32 0, align 4
@NETPLAY_QUIRK_PLATFORM_DEPENDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"[netplay] %s\0A\00", align 1
@MSG_CONNECTING_TO_NETPLAY_HOST = common dso_local global i32 0, align 4
@MSG_WAITING_FOR_CLIENT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@netplay_client_deferred = common dso_local global i32 0, align 4
@server_address_deferred = common dso_local global i8* null, align 8
@server_port_deferred = common dso_local global i32 0, align 4
@RARCH_DEFAULT_PORT = common dso_local global i32 0, align 4
@netplay_data = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@MSG_NETPLAY_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_netplay(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.retro_callbacks, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.retro_callbacks* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 4, i1 false)
  %15 = call %struct.TYPE_12__* (...) @config_get_ptr()
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* @netplay_is_client, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @netplay_enabled, align 4
  store i32 %17, i32* %13, align 4
  %18 = load i32, i32* %13, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %207

21:                                               ; preds = %3
  %22 = call i32 @core_set_default_callbacks(%struct.retro_callbacks* %8)
  %23 = call i32 (...) @core_set_netplay_callbacks()
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %207

26:                                               ; preds = %21
  %27 = call i32 (...) @core_serialization_quirks()
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* @NETPLAY_QUIRK_MAP_UNDERSTOOD, align 8
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, -1
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @NETPLAY_QUIRK_NO_SAVESTATES, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @NETPLAY_QUIRK_MAP_NO_SAVESTATES, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @NETPLAY_QUIRK_NO_SAVESTATES, align 4
  %45 = load i32, i32* %11, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @NETPLAY_QUIRK_MAP_NO_TRANSMISSION, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @NETPLAY_QUIRK_NO_TRANSMISSION, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* @NETPLAY_QUIRK_MAP_INITIALIZATION, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @NETPLAY_QUIRK_INITIALIZATION, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @NETPLAY_QUIRK_MAP_ENDIAN_DEPENDENT, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @NETPLAY_QUIRK_ENDIAN_DEPENDENT, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @NETPLAY_QUIRK_MAP_PLATFORM_DEPENDENT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @NETPLAY_QUIRK_PLATFORM_DEPENDENT, align 4
  %81 = load i32, i32* %11, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  %87 = load i32, i32* @MSG_CONNECTING_TO_NETPLAY_HOST, align 4
  %88 = call i32 @msg_hash_to_str(i32 %87)
  %89 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %107

90:                                               ; preds = %83
  %91 = load i32, i32* @MSG_WAITING_FOR_CLIENT, align 4
  %92 = call i32 @msg_hash_to_str(i32 %91)
  %93 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @MSG_WAITING_FOR_CLIENT, align 4
  %95 = call i32 @msg_hash_to_str(i32 %94)
  %96 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %97 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %98 = call i32 @runloop_msg_queue_push(i32 %95, i32 0, i32 180, i32 0, i32* null, i32 %96, i32 %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %90
  %105 = call i32 (...) @netplay_announce()
  br label %106

106:                                              ; preds = %104, %90
  br label %107

107:                                              ; preds = %106, %86
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i8*, i8** %5, align 8
  br label %113

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i8* [ %111, %110 ], [ null, %112 ]
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %113
  %118 = load i32, i32* @netplay_client_deferred, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %117
  %121 = load i8*, i8** %6, align 8
  br label %124

122:                                              ; preds = %117
  %123 = load i8*, i8** @server_address_deferred, align 8
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i8* [ %121, %120 ], [ %123, %122 ]
  br label %127

126:                                              ; preds = %113
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i8* [ %125, %124 ], [ null, %126 ]
  %129 = load i32, i32* %12, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load i32, i32* @netplay_client_deferred, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %131
  %135 = load i32, i32* %7, align 4
  br label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @server_port_deferred, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  br label %149

140:                                              ; preds = %127
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %140
  %144 = load i32, i32* %7, align 4
  br label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @RARCH_DEFAULT_PORT, align 4
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i32 [ %144, %143 ], [ %146, %145 ]
  br label %149

149:                                              ; preds = %147, %138
  %150 = phi i32 [ %139, %138 ], [ %148, %147 ]
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %149
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  %170 = xor i1 %169, true
  br label %171

171:                                              ; preds = %164, %149
  %172 = phi i1 [ false, %149 ], [ %170, %164 ]
  %173 = zext i1 %172 to i32
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = call i64 @netplay_new(i8* %114, i8* %128, i32 %150, i32 %154, i32 %158, %struct.retro_callbacks* %8, i32 %173, i64 %177, i32 %178)
  %180 = inttoptr i64 %179 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %180, %struct.TYPE_13__** @netplay_data, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** @netplay_data, align 8
  %182 = icmp ne %struct.TYPE_13__* %181, null
  br i1 %182, label %183, label %198

183:                                              ; preds = %171
  %184 = load %struct.TYPE_13__*, %struct.TYPE_13__** @netplay_data, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %197, label %194

194:                                              ; preds = %188
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** @netplay_data, align 8
  %196 = call i32 @netplay_toggle_play_spectate(%struct.TYPE_13__* %195)
  br label %197

197:                                              ; preds = %194, %188, %183
  store i32 1, i32* %4, align 4
  br label %207

198:                                              ; preds = %171
  %199 = load i32, i32* @MSG_NETPLAY_FAILED, align 4
  %200 = call i32 @msg_hash_to_str(i32 %199)
  %201 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @MSG_NETPLAY_FAILED, align 4
  %203 = call i32 @msg_hash_to_str(i32 %202)
  %204 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %205 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %206 = call i32 @runloop_msg_queue_push(i32 %203, i32 0, i32 180, i32 0, i32* null, i32 %204, i32 %205)
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %198, %197, %25, %20
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_12__* @config_get_ptr(...) #2

declare dso_local i32 @core_set_default_callbacks(%struct.retro_callbacks*) #2

declare dso_local i32 @core_set_netplay_callbacks(...) #2

declare dso_local i32 @core_serialization_quirks(...) #2

declare dso_local i32 @RARCH_LOG(i8*, i32) #2

declare dso_local i32 @msg_hash_to_str(i32) #2

declare dso_local i32 @runloop_msg_queue_push(i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @netplay_announce(...) #2

declare dso_local i64 @netplay_new(i8*, i8*, i32, i32, i32, %struct.retro_callbacks*, i32, i64, i32) #2

declare dso_local i32 @netplay_toggle_play_spectate(%struct.TYPE_13__*) #2

declare dso_local i32 @RARCH_WARN(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
