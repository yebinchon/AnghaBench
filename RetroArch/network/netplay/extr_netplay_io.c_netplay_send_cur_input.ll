; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_send_cur_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_send_cur_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i64, i32, i32, %struct.netplay_connection*, i64, %struct.delta_frame* }
%struct.delta_frame = type { i64* }
%struct.netplay_connection = type { i32, i32 }

@MAX_CLIENTS = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_PLAYING = common dso_local global i64 0, align 8
@NETPLAY_CMD_NOINPUT = common dso_local global i32 0, align 4
@NETPLAY_CONNECTION_SLAVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_send_cur_input(%struct.TYPE_5__* %0, %struct.netplay_connection* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.netplay_connection*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.delta_frame*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store %struct.netplay_connection* %1, %struct.netplay_connection** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 7
  %12 = load %struct.delta_frame*, %struct.delta_frame** %11, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %12, i64 %15
  store %struct.delta_frame* %16, %struct.delta_frame** %8, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %91

21:                                               ; preds = %2
  %22 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 5
  %25 = load %struct.netplay_connection*, %struct.netplay_connection** %24, align 8
  %26 = ptrtoint %struct.netplay_connection* %22 to i64
  %27 = ptrtoint %struct.netplay_connection* %25 to i64
  %28 = sub i64 %26, %27
  %29 = sdiv exact i64 %28, 8
  %30 = add nsw i64 %29, 1
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %7, align 4
  store i32 1, i32* %6, align 4
  br label %32

32:                                               ; preds = %69, %21
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MAX_CLIENTS, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %69

41:                                               ; preds = %36
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = shl i32 1, %45
  %47 = and i32 %44, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %41
  %50 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %51 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %49
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %60 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %61 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @send_input_frame(%struct.TYPE_5__* %59, %struct.delta_frame* %60, %struct.netplay_connection* %61, i32* null, i32 %62, i32 0)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58
  store i32 0, i32* %3, align 4
  br label %130

66:                                               ; preds = %58
  br label %67

67:                                               ; preds = %66, %49
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %40
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %32

72:                                               ; preds = %32
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %72
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @htonl(i32 %81)
  store i32 %82, i32* %9, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %85 = load i32, i32* @NETPLAY_CMD_NOINPUT, align 4
  %86 = call i32 @netplay_send_raw_cmd(%struct.TYPE_5__* %83, %struct.netplay_connection* %84, i32 %85, i32* %9, i32 4)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %78
  store i32 0, i32* %3, align 4
  br label %130

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89, %72
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @NETPLAY_CONNECTION_PLAYING, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %103, label %97

97:                                               ; preds = %91
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @NETPLAY_CONNECTION_SLAVE, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %97, %91
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %106 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NETPLAY_CONNECTION_SLAVE, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = call i32 @send_input_frame(%struct.TYPE_5__* %104, %struct.delta_frame* %105, %struct.netplay_connection* %106, i32* null, i32 %109, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %130

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %119, %97
  %121 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %122 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %121, i32 0, i32 1
  %123 = load %struct.netplay_connection*, %struct.netplay_connection** %5, align 8
  %124 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @netplay_send_flush(i32* %122, i32 %125, i32 0)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  br label %130

129:                                              ; preds = %120
  store i32 1, i32* %3, align 4
  br label %130

130:                                              ; preds = %129, %128, %118, %88, %65
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @send_input_frame(%struct.TYPE_5__*, %struct.delta_frame*, %struct.netplay_connection*, i32*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @netplay_send_raw_cmd(%struct.TYPE_5__*, %struct.netplay_connection*, i32, i32*, i32) #1

declare dso_local i32 @netplay_send_flush(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
