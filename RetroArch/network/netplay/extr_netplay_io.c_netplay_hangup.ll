; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_hangup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_hangup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, i64, i64*, i64, i64*, i32*, %struct.netplay_connection*, i32, i32, i64 }
%struct.netplay_connection = type { i32, i64, i64, i32, i32, i32, i32, i64* }

@MSG_NETPLAY_SERVER_NAMED_HANGUP = common dso_local global i32 0, align 4
@MSG_NETPLAY_SERVER_HANGUP = common dso_local global i32 0, align 4
@MSG_NETPLAY_CLIENT_HANGUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"[netplay] %s\0A\00", align 1
@MESSAGE_QUEUE_ICON_DEFAULT = common dso_local global i32 0, align 4
@MESSAGE_QUEUE_CATEGORY_INFO = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_NONE = common dso_local global i32 0, align 4
@MAX_CLIENTS = common dso_local global i64 0, align 8
@MAX_INPUT_DEVICES = common dso_local global i64 0, align 8
@NETPLAY_STALL_NONE = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_PLAYING = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_SLAVE = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_DELAYED_DISCONNECT = common dso_local global i64 0, align 8
@CMD_EVENT_DISCORD_UPDATE = common dso_local global i32 0, align 4
@DISCORD_PRESENCE_NETPLAY_NETPLAY_STOPPED = common dso_local global i32 0, align 4
@discord_is_inited = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netplay_hangup(%struct.TYPE_6__* %0, %struct.netplay_connection* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.netplay_connection*, align 8
  %5 = alloca [512 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %4, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = icmp ne %struct.TYPE_6__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %210

12:                                               ; preds = %2
  %13 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %14 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %210

18:                                               ; preds = %12
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 511
  store i8 0, i8* %19, align 1
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %20, align 16
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  store i8* %21, i8** %6, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 10
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %18
  %27 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %28 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %27, i32 0, i32 7
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %35 = load i32, i32* @MSG_NETPLAY_SERVER_NAMED_HANGUP, align 4
  %36 = call i8* @msg_hash_to_str(i32 %35)
  %37 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %38 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %37, i32 0, i32 7
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @snprintf(i8* %34, i32 511, i8* %36, i64* %39)
  br label %44

41:                                               ; preds = %26
  %42 = load i32, i32* @MSG_NETPLAY_SERVER_HANGUP, align 4
  %43 = call i8* @msg_hash_to_str(i32 %42)
  store i8* %43, i8** %6, align 8
  br label %44

44:                                               ; preds = %41, %33
  br label %50

45:                                               ; preds = %18
  %46 = load i32, i32* @MSG_NETPLAY_CLIENT_HANGUP, align 4
  %47 = call i8* @msg_hash_to_str(i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %45, %44
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %51)
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* @MESSAGE_QUEUE_ICON_DEFAULT, align 4
  %55 = load i32, i32* @MESSAGE_QUEUE_CATEGORY_INFO, align 4
  %56 = call i32 @runloop_msg_queue_push(i8* %53, i32 1, i32 180, i32 0, i32* null, i32 %54, i32 %55)
  %57 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %58 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @socket_close(i32 %59)
  %61 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %62 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  %63 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %64 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %63, i32 0, i32 5
  %65 = call i32 @netplay_deinit_socket_buffer(i32* %64)
  %66 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %67 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %66, i32 0, i32 4
  %68 = call i32 @netplay_deinit_socket_buffer(i32* %67)
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 10
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %129, label %73

73:                                               ; preds = %50
  %74 = load i32, i32* @NETPLAY_CONNECTION_NONE, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = shl i64 1, %79
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = and i64 %83, %80
  store i64 %84, i64* %82, align 8
  store i64 0, i64* %7, align 8
  br label %85

85:                                               ; preds = %102, %73
  %86 = load i64, i64* %7, align 8
  %87 = load i64, i64* @MAX_CLIENTS, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %102

96:                                               ; preds = %89
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 5
  %99 = load i64*, i64** %98, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds i64, i64* %99, i64 %100
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %95
  %103 = load i64, i64* %7, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %7, align 8
  br label %85

105:                                              ; preds = %85
  store i64 0, i64* %7, align 8
  br label %106

106:                                              ; preds = %122, %105
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @MAX_INPUT_DEVICES, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %106
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = shl i64 1, %113
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  %120 = load i64, i64* %119, align 8
  %121 = and i64 %120, %114
  store i64 %121, i64* %119, align 8
  br label %122

122:                                              ; preds = %110
  %123 = load i64, i64* %7, align 8
  %124 = add i64 %123, 1
  store i64 %124, i64* %7, align 8
  br label %106

125:                                              ; preds = %106
  %126 = load i32, i32* @NETPLAY_STALL_NONE, align 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  br label %201

129:                                              ; preds = %50
  %130 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 7
  %133 = load %struct.netplay_connection*, %struct.netplay_connection** %132, align 8
  %134 = ptrtoint %struct.netplay_connection* %130 to i64
  %135 = ptrtoint %struct.netplay_connection* %133 to i64
  %136 = sub i64 %134, %135
  %137 = sdiv exact i64 %136, 48
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %8, align 8
  %139 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %140 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %129
  %145 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %146 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @NETPLAY_CONNECTION_SLAVE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %200

150:                                              ; preds = %144, %129
  %151 = load i64, i64* @NETPLAY_CONNECTION_DELAYED_DISCONNECT, align 8
  %152 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %153 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 6
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %8, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %161 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 8
  %162 = load i64, i64* %8, align 8
  %163 = shl i64 1, %162
  %164 = xor i64 %163, -1
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 1
  %167 = load i64, i64* %166, align 8
  %168 = and i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load i64, i64* %8, align 8
  %170 = shl i64 1, %169
  %171 = xor i64 %170, -1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = and i64 %174, %171
  store i64 %175, i64* %173, align 8
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 5
  %178 = load i64*, i64** %177, align 8
  %179 = load i64, i64* %8, align 8
  %180 = getelementptr inbounds i64, i64* %178, i64 %179
  store i64 0, i64* %180, align 8
  store i64 0, i64* %7, align 8
  br label %181

181:                                              ; preds = %196, %150
  %182 = load i64, i64* %7, align 8
  %183 = load i64, i64* @MAX_INPUT_DEVICES, align 8
  %184 = icmp ult i64 %182, %183
  br i1 %184, label %185, label %199

185:                                              ; preds = %181
  %186 = load i64, i64* %8, align 8
  %187 = shl i64 1, %186
  %188 = xor i64 %187, -1
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  %191 = load i64*, i64** %190, align 8
  %192 = load i64, i64* %7, align 8
  %193 = getelementptr inbounds i64, i64* %191, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = and i64 %194, %188
  store i64 %195, i64* %193, align 8
  br label %196

196:                                              ; preds = %185
  %197 = load i64, i64* %7, align 8
  %198 = add i64 %197, 1
  store i64 %198, i64* %7, align 8
  br label %181

199:                                              ; preds = %181
  br label %200

200:                                              ; preds = %199, %144
  br label %201

201:                                              ; preds = %200, %125
  %202 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %203 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %202, i32 0, i32 2
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %208 = load %struct.netplay_connection*, %struct.netplay_connection** %4, align 8
  %209 = call i32 @remote_unpaused(%struct.TYPE_6__* %207, %struct.netplay_connection* %208)
  br label %210

210:                                              ; preds = %11, %17, %206, %201
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i64*) #1

declare dso_local i8* @msg_hash_to_str(i32) #1

declare dso_local i32 @RARCH_LOG(i8*, i8*) #1

declare dso_local i32 @runloop_msg_queue_push(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @socket_close(i32) #1

declare dso_local i32 @netplay_deinit_socket_buffer(i32*) #1

declare dso_local i32 @remote_unpaused(%struct.TYPE_6__*, %struct.netplay_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
