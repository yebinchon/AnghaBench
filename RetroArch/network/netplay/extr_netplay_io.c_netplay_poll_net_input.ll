; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_poll_net_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_poll_net_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, %struct.netplay_connection* }
%struct.netplay_connection = type { i32, i64 }
%struct.timeval = type { i32, i32 }

@RETRY_MS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"[netplay] Network is stalling at frame %u, count %u of %d ...\0A\00", align 1
@MAX_RETRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_poll_net_input(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.netplay_connection*, align 8
  %10 = alloca %struct.netplay_connection*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 4
  %13 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i64 0, i64* %8, align 8
  br label %14

14:                                               ; preds = %42, %2
  %15 = load i64, i64* %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  %23 = load %struct.netplay_connection*, %struct.netplay_connection** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %23, i64 %24
  store %struct.netplay_connection* %25, %struct.netplay_connection** %9, align 8
  %26 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %27 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %20
  %31 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %32 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.netplay_connection*, %struct.netplay_connection** %9, align 8
  %38 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %30, %20
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %8, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %8, align 8
  br label %14

45:                                               ; preds = %14
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %171

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %168, %49
  store i32 0, i32* %6, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  store i64 0, i64* %8, align 8
  br label %57

57:                                               ; preds = %83, %52
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 5
  %66 = load %struct.netplay_connection*, %struct.netplay_connection** %65, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %66, i64 %67
  store %struct.netplay_connection* %68, %struct.netplay_connection** %10, align 8
  %69 = load %struct.netplay_connection*, %struct.netplay_connection** %10, align 8
  %70 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %63
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = load %struct.netplay_connection*, %struct.netplay_connection** %10, align 8
  %76 = call i32 @netplay_get_cmd(%struct.TYPE_6__* %74, %struct.netplay_connection* %75, i32* %6)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %73
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %80 = load %struct.netplay_connection*, %struct.netplay_connection** %10, align 8
  %81 = call i32 @netplay_hangup(%struct.TYPE_6__* %79, %struct.netplay_connection* %80)
  br label %82

82:                                               ; preds = %78, %73, %63
  br label %83

83:                                               ; preds = %82
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, 1
  store i64 %85, i64* %8, align 8
  br label %57

86:                                               ; preds = %57
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %161

89:                                               ; preds = %86
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %91 = call i32 @netplay_update_unread_ptr(%struct.TYPE_6__* %90)
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %94, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %89
  br label %170

100:                                              ; preds = %89
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %160, label %103

103:                                              ; preds = %100
  %104 = bitcast %struct.timeval* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %104, i8 0, i64 8, i1 false)
  %105 = load i32, i32* @RETRY_MS, align 4
  %106 = mul nsw i32 %105, 1000
  %107 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i32 %106, i32* %107, align 4
  %108 = call i32 @FD_ZERO(i32* %11)
  store i64 0, i64* %8, align 8
  br label %109

109:                                              ; preds = %131, %103
  %110 = load i64, i64* %8, align 8
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ult i64 %110, %113
  br i1 %114, label %115, label %134

115:                                              ; preds = %109
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 5
  %118 = load %struct.netplay_connection*, %struct.netplay_connection** %117, align 8
  %119 = load i64, i64* %8, align 8
  %120 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %118, i64 %119
  store %struct.netplay_connection* %120, %struct.netplay_connection** %13, align 8
  %121 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %122 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %115
  %126 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %127 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @FD_SET(i32 %128, i32* %11)
  br label %130

130:                                              ; preds = %125, %115
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %8, align 8
  br label %109

134:                                              ; preds = %109
  %135 = load i32, i32* %7, align 4
  %136 = call i64 @socket_select(i32 %135, i32* %11, i32* null, i32* null, %struct.timeval* %12)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %134
  store i32 -1, i32* %3, align 4
  br label %171

139:                                              ; preds = %134
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @MAX_RETRIES, align 8
  %147 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %142, i64 %145, i64 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @MAX_RETRIES, align 8
  %152 = icmp sge i64 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %139
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %153
  store i32 -1, i32* %3, align 4
  br label %171

159:                                              ; preds = %153, %139
  br label %160

160:                                              ; preds = %159, %100
  br label %161

161:                                              ; preds = %160, %86
  br label %162

162:                                              ; preds = %161
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %162
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br label %168

168:                                              ; preds = %165, %162
  %169 = phi i1 [ true, %162 ], [ %167, %165 ]
  br i1 %169, label %52, label %170

170:                                              ; preds = %168, %99
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %170, %158, %138, %48
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @netplay_get_cmd(%struct.TYPE_6__*, %struct.netplay_connection*, i32*) #1

declare dso_local i32 @netplay_hangup(%struct.TYPE_6__*, %struct.netplay_connection*) #1

declare dso_local i32 @netplay_update_unread_ptr(%struct.TYPE_6__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i64 @socket_select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @RARCH_LOG(i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
