; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_check_tcp_heuristics.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp_client.c_necp_client_check_tcp_heuristics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.necp_client = type { %struct.TYPE_10__*, i64, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.necp_client_flow = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.necp_client_parsed_parameters = type { i32 }
%union.sockaddr_in_4_6 = type { i32 }

@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"necp_client_parse_parameters error (%d)\00", align 1
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NECP_CLIENT_PARAMETER_FLAG_ECN_ENABLE = common dso_local global i32 0, align 4
@NECP_CLIENT_PARAMETER_FLAG_ECN_DISABLE = common dso_local global i32 0, align 4
@IFEF_ECN_ENABLE = common dso_local global i32 0, align 4
@IFEF_ECN_DISABLE = common dso_local global i32 0, align 4
@NECP_CLIENT_PARAMETER_FLAG_LISTENER = common dso_local global i32 0, align 4
@tcp_ecn_inbound = common dso_local global i32 0, align 4
@tcp_ecn_outbound = common dso_local global i32 0, align 4
@NECP_CLIENT_RESULT_FLAG_ECN_ENABLED = common dso_local global i32 0, align 4
@NECP_CLIENT_PARAMETER_FLAG_TFO_ENABLE = common dso_local global i32 0, align 4
@NECP_CLIENT_RESULT_FLAG_FAST_OPEN_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.necp_client*, %struct.necp_client_flow*, i32*, i64*, i64*)* @necp_client_check_tcp_heuristics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_client_check_tcp_heuristics(%struct.necp_client* %0, %struct.necp_client_flow* %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.necp_client*, align 8
  %8 = alloca %struct.necp_client_flow*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.necp_client_parsed_parameters, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.necp_client* %0, %struct.necp_client** %7, align 8
  store %struct.necp_client_flow* %1, %struct.necp_client_flow** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %17 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %20 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i32 @necp_client_parse_parameters(i32 %18, i32 %22, %struct.necp_client_parsed_parameters* %12)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @NECPLOG(i32 %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %202

31:                                               ; preds = %5
  %32 = load %struct.necp_client_flow*, %struct.necp_client_flow** %8, align 8
  %33 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AF_INET, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.necp_client_flow*, %struct.necp_client_flow** %8, align 8
  %41 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AF_INET6, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %63, label %47

47:                                               ; preds = %39, %31
  %48 = load %struct.necp_client_flow*, %struct.necp_client_flow** %8, align 8
  %49 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_INET, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.necp_client_flow*, %struct.necp_client_flow** %8, align 8
  %57 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @AF_INET6, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %55, %39
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %6, align 4
  br label %202

65:                                               ; preds = %55, %47
  %66 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %67 = call i32 @NECP_CLIENT_ROUTE_LOCK(%struct.necp_client* %66)
  %68 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %69 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = icmp eq %struct.TYPE_10__* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @ENOENT, align 4
  store i32 %73, i32* %13, align 4
  br label %198

74:                                               ; preds = %65
  store i32 0, i32* %14, align 4
  br label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %12, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_ECN_ENABLE, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_ECN_ENABLE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %14, align 4
  br label %141

83:                                               ; preds = %75
  %84 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %12, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_ECN_DISABLE, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_ECN_DISABLE, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %141

91:                                               ; preds = %83
  %92 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %93 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %92, i32 0, i32 0
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = icmp ne %struct.TYPE_10__* %94, null
  br i1 %95, label %96, label %121

96:                                               ; preds = %91
  %97 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %98 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %97, i32 0, i32 0
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @IFEF_ECN_ENABLE, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  store i32 1, i32* %14, align 4
  br label %141

108:                                              ; preds = %96
  %109 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %110 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %109, i32 0, i32 0
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @IFEF_ECN_DISABLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108
  br label %141

120:                                              ; preds = %108
  br label %121

121:                                              ; preds = %120, %91
  %122 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %12, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_LISTENER, align 4
  %125 = and i32 %123, %124
  %126 = icmp eq i32 %125, 0
  %127 = zext i1 %126 to i32
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @tcp_ecn_inbound, align 4
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %139, label %133

133:                                              ; preds = %130, %121
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %133
  %137 = load i32, i32* @tcp_ecn_outbound, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %140

139:                                              ; preds = %136, %130
  store i32 1, i32* %14, align 4
  br label %140

140:                                              ; preds = %139, %136, %133
  br label %141

141:                                              ; preds = %140, %119, %107, %90, %82
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %141
  %145 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %146 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %145, i32 0, i32 0
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = load %struct.necp_client_flow*, %struct.necp_client_flow** %8, align 8
  %151 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %150, i32 0, i32 1
  %152 = bitcast %struct.TYPE_11__* %151 to %union.sockaddr_in_4_6*
  %153 = call i64 @tcp_heuristic_do_ecn_with_address(%struct.TYPE_13__* %149, %union.sockaddr_in_4_6* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %144
  %156 = load i32, i32* @NECP_CLIENT_RESULT_FLAG_ECN_ENABLED, align 4
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %156
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %155, %144
  br label %161

161:                                              ; preds = %160, %141
  %162 = getelementptr inbounds %struct.necp_client_parsed_parameters, %struct.necp_client_parsed_parameters* %12, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_TFO_ENABLE, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* @NECP_CLIENT_PARAMETER_FLAG_TFO_ENABLE, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %191

168:                                              ; preds = %161
  %169 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %170 = getelementptr inbounds %struct.necp_client, %struct.necp_client* %169, i32 0, i32 0
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %172, align 8
  %174 = load %struct.necp_client_flow*, %struct.necp_client_flow** %8, align 8
  %175 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %174, i32 0, i32 1
  %176 = bitcast %struct.TYPE_11__* %175 to %union.sockaddr_in_4_6*
  %177 = load %struct.necp_client_flow*, %struct.necp_client_flow** %8, align 8
  %178 = getelementptr inbounds %struct.necp_client_flow, %struct.necp_client_flow* %177, i32 0, i32 0
  %179 = bitcast %struct.TYPE_12__* %178 to %union.sockaddr_in_4_6*
  %180 = load i64*, i64** %10, align 8
  %181 = load i64*, i64** %11, align 8
  %182 = call i32 @tcp_heuristic_do_tfo_with_address(%struct.TYPE_13__* %173, %union.sockaddr_in_4_6* %176, %union.sockaddr_in_4_6* %179, i64* %180, i64* %181)
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %190, label %184

184:                                              ; preds = %168
  %185 = load i32, i32* @NECP_CLIENT_RESULT_FLAG_FAST_OPEN_BLOCKED, align 4
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %185
  store i32 %188, i32* %186, align 4
  %189 = load i64*, i64** %11, align 8
  store i64 0, i64* %189, align 8
  br label %190

190:                                              ; preds = %184, %168
  br label %197

191:                                              ; preds = %161
  %192 = load i32, i32* @NECP_CLIENT_RESULT_FLAG_FAST_OPEN_BLOCKED, align 4
  %193 = load i32*, i32** %9, align 8
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %192
  store i32 %195, i32* %193, align 4
  %196 = load i64*, i64** %11, align 8
  store i64 0, i64* %196, align 8
  br label %197

197:                                              ; preds = %191, %190
  br label %198

198:                                              ; preds = %197, %72
  %199 = load %struct.necp_client*, %struct.necp_client** %7, align 8
  %200 = call i32 @NECP_CLIENT_ROUTE_UNLOCK(%struct.necp_client* %199)
  %201 = load i32, i32* %13, align 4
  store i32 %201, i32* %6, align 4
  br label %202

202:                                              ; preds = %198, %63, %26
  %203 = load i32, i32* %6, align 4
  ret i32 %203
}

declare dso_local i32 @necp_client_parse_parameters(i32, i32, %struct.necp_client_parsed_parameters*) #1

declare dso_local i32 @NECPLOG(i32, i8*, i32) #1

declare dso_local i32 @NECP_CLIENT_ROUTE_LOCK(%struct.necp_client*) #1

declare dso_local i64 @tcp_heuristic_do_ecn_with_address(%struct.TYPE_13__*, %union.sockaddr_in_4_6*) #1

declare dso_local i32 @tcp_heuristic_do_tfo_with_address(%struct.TYPE_13__*, %union.sockaddr_in_4_6*, %union.sockaddr_in_4_6*, i64*, i64*) #1

declare dso_local i32 @NECP_CLIENT_ROUTE_UNLOCK(%struct.necp_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
