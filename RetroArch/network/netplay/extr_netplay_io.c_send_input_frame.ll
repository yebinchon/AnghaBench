; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_send_input_frame.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_send_input_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64*, i64, %struct.netplay_connection* }
%struct.delta_frame = type { i64, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64, i64, i64*, %struct.TYPE_7__*, i32 }
%struct.netplay_connection = type { i64, i32, i32, i64 }

@NETPLAY_CMD_INPUT = common dso_local global i64 0, align 8
@MAX_INPUT_DEVICES = common dso_local global i64 0, align 8
@MAX_CLIENTS = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_PLAYING = common dso_local global i64 0, align 8
@BUFSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.delta_frame*, %struct.netplay_connection*, %struct.netplay_connection*, i64, i32)* @send_input_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_input_frame(%struct.TYPE_6__* %0, %struct.delta_frame* %1, %struct.netplay_connection* %2, %struct.netplay_connection* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.delta_frame*, align 8
  %10 = alloca %struct.netplay_connection*, align 8
  %11 = alloca %struct.netplay_connection*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca [16 x i64], align 16
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %9, align 8
  store %struct.netplay_connection* %2, %struct.netplay_connection** %10, align 8
  store %struct.netplay_connection* %3, %struct.netplay_connection** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store i64 4, i64* %17, align 8
  %21 = load i64, i64* @NETPLAY_CMD_INPUT, align 8
  %22 = call i64 @htonl(i64 %21)
  %23 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  store i64 %22, i64* %23, align 16
  %24 = load %struct.delta_frame*, %struct.delta_frame** %9, align 8
  %25 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i64 @htonl(i64 %26)
  %28 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 2
  store i64 %27, i64* %28, align 16
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @htonl(i64 %29)
  %31 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 3
  store i64 %30, i64* %31, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %12, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %38

38:                                               ; preds = %127, %6
  %39 = load i64, i64* %16, align 8
  %40 = load i64, i64* @MAX_INPUT_DEVICES, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %130

42:                                               ; preds = %38
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* %16, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 1, %45
  %47 = sext i32 %46 to i64
  %48 = and i64 %43, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %127

51:                                               ; preds = %42
  %52 = load %struct.delta_frame*, %struct.delta_frame** %9, align 8
  %53 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %53, align 8
  %55 = load i64, i64* %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %54, i64 %55
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  store %struct.TYPE_7__* %57, %struct.TYPE_7__** %19, align 8
  br label %58

58:                                               ; preds = %83, %51
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %60 = icmp ne %struct.TYPE_7__* %59, null
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %66
  %73 = load i64, i64* @MAX_CLIENTS, align 8
  br label %76

74:                                               ; preds = %66
  %75 = load i64, i64* %12, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i64 [ %73, %72 ], [ %75, %74 ]
  %78 = icmp ne i64 %69, %77
  br label %79

79:                                               ; preds = %76, %61
  %80 = phi i1 [ true, %61 ], [ %78, %76 ]
  br label %81

81:                                               ; preds = %79, %58
  %82 = phi i1 [ false, %58 ], [ %80, %79 ]
  br i1 %82, label %83, label %87

83:                                               ; preds = %81
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %85, align 8
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %19, align 8
  br label %58

87:                                               ; preds = %81
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %89 = icmp ne %struct.TYPE_7__* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  br label %127

91:                                               ; preds = %87
  %92 = load i64, i64* %17, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %92, %95
  %97 = icmp uge i64 %96, 16
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %127

99:                                               ; preds = %91
  store i64 0, i64* %18, align 8
  br label %100

100:                                              ; preds = %118, %99
  %101 = load i64, i64* %18, align 8
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ult i64 %101, %104
  br i1 %105, label %106, label %121

106:                                              ; preds = %100
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* %18, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i64 @htonl(i64 %112)
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %18, align 8
  %116 = add i64 %114, %115
  %117 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %116
  store i64 %113, i64* %117, align 8
  br label %118

118:                                              ; preds = %106
  %119 = load i64, i64* %18, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %18, align 8
  br label %100

121:                                              ; preds = %100
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %17, align 8
  %126 = add i64 %125, %124
  store i64 %126, i64* %17, align 8
  br label %127

127:                                              ; preds = %121, %98, %90, %50
  %128 = load i64, i64* %16, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %16, align 8
  br label %38

130:                                              ; preds = %38
  %131 = load i64, i64* %17, align 8
  %132 = sub i64 %131, 2
  %133 = mul i64 %132, 8
  %134 = call i64 @htonl(i64 %133)
  %135 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 1
  store i64 %134, i64* %135, align 8
  %136 = load %struct.netplay_connection*, %struct.netplay_connection** %10, align 8
  %137 = icmp ne %struct.netplay_connection* %136, null
  br i1 %137, label %138, label %154

138:                                              ; preds = %130
  %139 = load %struct.netplay_connection*, %struct.netplay_connection** %10, align 8
  %140 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %139, i32 0, i32 2
  %141 = load %struct.netplay_connection*, %struct.netplay_connection** %10, align 8
  %142 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %145 = load i64, i64* %17, align 8
  %146 = mul i64 %145, 8
  %147 = call i32 @netplay_send(i32* %140, i32 %143, i64* %144, i64 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %153, label %149

149:                                              ; preds = %138
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %151 = load %struct.netplay_connection*, %struct.netplay_connection** %10, align 8
  %152 = call i32 @netplay_hangup(%struct.TYPE_6__* %150, %struct.netplay_connection* %151)
  store i32 0, i32* %7, align 4
  br label %215

153:                                              ; preds = %138
  br label %214

154:                                              ; preds = %130
  store i64 0, i64* %18, align 8
  br label %155

155:                                              ; preds = %210, %154
  %156 = load i64, i64* %18, align 8
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ult i64 %156, %159
  br i1 %160, label %161, label %213

161:                                              ; preds = %155
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 2
  %164 = load %struct.netplay_connection*, %struct.netplay_connection** %163, align 8
  %165 = load i64, i64* %18, align 8
  %166 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %164, i64 %165
  store %struct.netplay_connection* %166, %struct.netplay_connection** %20, align 8
  %167 = load %struct.netplay_connection*, %struct.netplay_connection** %20, align 8
  %168 = load %struct.netplay_connection*, %struct.netplay_connection** %11, align 8
  %169 = icmp eq %struct.netplay_connection* %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %161
  br label %210

171:                                              ; preds = %161
  %172 = load %struct.netplay_connection*, %struct.netplay_connection** %20, align 8
  %173 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %172, i32 0, i32 3
  %174 = load i64, i64* %173, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %209

176:                                              ; preds = %171
  %177 = load %struct.netplay_connection*, %struct.netplay_connection** %20, align 8
  %178 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %181 = icmp sge i64 %179, %180
  br i1 %181, label %182, label %209

182:                                              ; preds = %176
  %183 = load %struct.netplay_connection*, %struct.netplay_connection** %20, align 8
  %184 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %193, label %188

188:                                              ; preds = %182
  %189 = load i64, i64* %18, align 8
  %190 = add i64 %189, 1
  %191 = load i64, i64* %12, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %209

193:                                              ; preds = %188, %182
  %194 = load %struct.netplay_connection*, %struct.netplay_connection** %20, align 8
  %195 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %194, i32 0, i32 2
  %196 = load %struct.netplay_connection*, %struct.netplay_connection** %20, align 8
  %197 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 0
  %200 = load i64, i64* %17, align 8
  %201 = mul i64 %200, 8
  %202 = call i32 @netplay_send(i32* %195, i32 %198, i64* %199, i64 %201)
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %208, label %204

204:                                              ; preds = %193
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %206 = load %struct.netplay_connection*, %struct.netplay_connection** %20, align 8
  %207 = call i32 @netplay_hangup(%struct.TYPE_6__* %205, %struct.netplay_connection* %206)
  br label %208

208:                                              ; preds = %204, %193
  br label %209

209:                                              ; preds = %208, %188, %176, %171
  br label %210

210:                                              ; preds = %209, %170
  %211 = load i64, i64* %18, align 8
  %212 = add i64 %211, 1
  store i64 %212, i64* %18, align 8
  br label %155

213:                                              ; preds = %155
  br label %214

214:                                              ; preds = %213, %153
  store i32 1, i32* %7, align 4
  br label %215

215:                                              ; preds = %214, %149
  %216 = load i32, i32* %7, align 4
  ret i32 %216
}

declare dso_local i64 @htonl(i64) #1

declare dso_local i32 @netplay_send(i32*, i32, i64*, i64) #1

declare dso_local i32 @netplay_hangup(%struct.TYPE_6__*, %struct.netplay_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
