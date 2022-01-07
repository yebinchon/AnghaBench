; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_send_savestate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_frontend.c_netplay_send_savestate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64*, i64, i64, %struct.netplay_connection*, i32 }
%struct.netplay_connection = type { i64, i64, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.compression_transcoder = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32, i32, i64*, i64*, i32*)*, i32 (i32, i64*, i64)*, i32 (i32, i32*, i64)* }

@NETPLAY_CMD_LOAD_SAVESTATE = common dso_local global i64 0, align 8
@NETPLAY_CONNECTION_CONNECTED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netplay_send_savestate(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1, i64 %2, %struct.compression_transcoder* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.compression_transcoder*, align 8
  %9 = alloca [4 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.netplay_connection*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.compression_transcoder* %3, %struct.compression_transcoder** %8, align 8
  %14 = load %struct.compression_transcoder*, %struct.compression_transcoder** %8, align 8
  %15 = getelementptr inbounds %struct.compression_transcoder, %struct.compression_transcoder* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 2
  %18 = load i32 (i32, i32*, i64)*, i32 (i32, i32*, i64)** %17, align 8
  %19 = load %struct.compression_transcoder*, %struct.compression_transcoder** %8, align 8
  %20 = getelementptr inbounds %struct.compression_transcoder, %struct.compression_transcoder* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 %18(i32 %21, i32* %25, i64 %28)
  %30 = load %struct.compression_transcoder*, %struct.compression_transcoder** %8, align 8
  %31 = getelementptr inbounds %struct.compression_transcoder, %struct.compression_transcoder* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i32 (i32, i64*, i64)*, i32 (i32, i64*, i64)** %33, align 8
  %35 = load %struct.compression_transcoder*, %struct.compression_transcoder** %8, align 8
  %36 = getelementptr inbounds %struct.compression_transcoder, %struct.compression_transcoder* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = call i32 %34(i32 %37, i64* %40, i64 %44)
  %46 = load %struct.compression_transcoder*, %struct.compression_transcoder** %8, align 8
  %47 = getelementptr inbounds %struct.compression_transcoder, %struct.compression_transcoder* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32 (i32, i32, i64*, i64*, i32*)*, i32 (i32, i32, i64*, i64*, i32*)** %49, align 8
  %51 = load %struct.compression_transcoder*, %struct.compression_transcoder** %8, align 8
  %52 = getelementptr inbounds %struct.compression_transcoder, %struct.compression_transcoder* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 %50(i32 %53, i32 1, i64* %10, i64* %11, i32* null)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %75, label %56

56:                                               ; preds = %4
  store i64 0, i64* %12, align 8
  br label %57

57:                                               ; preds = %71, %56
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %57
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load %struct.netplay_connection*, %struct.netplay_connection** %66, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %67, i64 %68
  %70 = call i32 @netplay_hangup(%struct.TYPE_9__* %64, %struct.netplay_connection* %69)
  br label %71

71:                                               ; preds = %63
  %72 = load i64, i64* %12, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %57

74:                                               ; preds = %57
  br label %151

75:                                               ; preds = %4
  %76 = load i64, i64* @NETPLAY_CMD_LOAD_SAVESTATE, align 8
  %77 = call i64 @htonl(i64 %76)
  %78 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  store i64 %77, i64* %78, align 16
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 16
  %81 = call i64 @htonl(i64 %80)
  %82 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 1
  store i64 %81, i64* %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @htonl(i64 %85)
  %87 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 2
  store i64 %86, i64* %87, align 16
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @htonl(i64 %90)
  %92 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 3
  store i64 %91, i64* %92, align 8
  store i64 0, i64* %12, align 8
  br label %93

93:                                               ; preds = %148, %75
  %94 = load i64, i64* %12, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %99, label %151

99:                                               ; preds = %93
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 3
  %102 = load %struct.netplay_connection*, %struct.netplay_connection** %101, align 8
  %103 = load i64, i64* %12, align 8
  %104 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %102, i64 %103
  store %struct.netplay_connection* %104, %struct.netplay_connection** %13, align 8
  %105 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %106 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %99
  %110 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %111 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NETPLAY_CONNECTION_CONNECTED, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %121, label %115

115:                                              ; preds = %109
  %116 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %117 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %115, %109, %99
  br label %148

122:                                              ; preds = %115
  %123 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %124 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %123, i32 0, i32 3
  %125 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %126 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = getelementptr inbounds [4 x i64], [4 x i64]* %9, i64 0, i64 0
  %129 = call i32 @netplay_send(i32* %124, i32 %127, i64* %128, i64 32)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %122
  %132 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %133 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %132, i32 0, i32 3
  %134 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %135 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = load i64, i64* %11, align 8
  %141 = call i32 @netplay_send(i32* %133, i32 %136, i64* %139, i64 %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %131, %122
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %145 = load %struct.netplay_connection*, %struct.netplay_connection** %13, align 8
  %146 = call i32 @netplay_hangup(%struct.TYPE_9__* %144, %struct.netplay_connection* %145)
  br label %147

147:                                              ; preds = %143, %131
  br label %148

148:                                              ; preds = %147, %121
  %149 = load i64, i64* %12, align 8
  %150 = add i64 %149, 1
  store i64 %150, i64* %12, align 8
  br label %93

151:                                              ; preds = %74, %93
  ret void
}

declare dso_local i32 @netplay_hangup(%struct.TYPE_9__*, %struct.netplay_connection*) #1

declare dso_local i64 @htonl(i64) #1

declare dso_local i32 @netplay_send(i32*, i32, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
