; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_handle_slaves.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_io.c_netplay_handle_slaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i64*, i64, i64*, i32*, %struct.delta_frame*, %struct.netplay_connection* }
%struct.delta_frame = type { i32*, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i64, i32, i32, %struct.TYPE_9__* }
%struct.netplay_connection = type { i64, i64 }

@NETPLAY_CONNECTION_SLAVE = common dso_local global i64 0, align 8
@MAX_INPUT_DEVICES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netplay_handle_slaves(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.delta_frame*, align 8
  %4 = alloca %struct.delta_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.netplay_connection*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 6
  %14 = load %struct.delta_frame*, %struct.delta_frame** %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %14, i64 %17
  store %struct.delta_frame* %18, %struct.delta_frame** %4, align 8
  store i64 0, i64* %5, align 8
  br label %19

19:                                               ; preds = %187, %1
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %190

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 7
  %28 = load %struct.netplay_connection*, %struct.netplay_connection** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %28, i64 %29
  store %struct.netplay_connection* %30, %struct.netplay_connection** %6, align 8
  %31 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %32 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %186

35:                                               ; preds = %25
  %36 = load %struct.netplay_connection*, %struct.netplay_connection** %6, align 8
  %37 = getelementptr inbounds %struct.netplay_connection, %struct.netplay_connection* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @NETPLAY_CONNECTION_SLAVE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %186

41:                                               ; preds = %35
  %42 = load i64, i64* %5, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %187

55:                                               ; preds = %41
  %56 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %57 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %163, label %63

63:                                               ; preds = %55
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 4
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %7, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 6
  %72 = load %struct.delta_frame*, %struct.delta_frame** %71, align 8
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @PREV_PTR(i64 %75)
  %77 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %72, i64 %76
  store %struct.delta_frame* %77, %struct.delta_frame** %3, align 8
  store i64 0, i64* %8, align 8
  br label %78

78:                                               ; preds = %154, %63
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @MAX_INPUT_DEVICES, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %157

82:                                               ; preds = %78
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = trunc i64 %84 to i32
  %86 = shl i32 1, %85
  %87 = sext i32 %86 to i64
  %88 = and i64 %83, %87
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %82
  br label %154

91:                                               ; preds = %82
  %92 = load %struct.delta_frame*, %struct.delta_frame** %3, align 8
  %93 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %92, i32 0, i32 1
  %94 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %94, i64 %95
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  store %struct.TYPE_9__* %97, %struct.TYPE_9__** %11, align 8
  br label %98

98:                                               ; preds = %109, %91
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %100 = icmp ne %struct.TYPE_9__* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp ne i64 %104, %105
  br label %107

107:                                              ; preds = %101, %98
  %108 = phi i1 [ false, %98 ], [ %106, %101 ]
  br i1 %108, label %109, label %113

109:                                              ; preds = %107
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  store %struct.TYPE_9__* %112, %struct.TYPE_9__** %11, align 8
  br label %98

113:                                              ; preds = %107
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %115 = icmp ne %struct.TYPE_9__* %114, null
  br i1 %115, label %129, label %116

116:                                              ; preds = %113
  %117 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %118 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %117, i32 0, i32 1
  %119 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %118, align 8
  %120 = load i64, i64* %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %119, i64 %120
  %122 = load i64, i64* %9, align 8
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %124 = load i64, i64* %8, align 8
  %125 = trunc i64 %124 to i32
  %126 = shl i32 1, %125
  %127 = call i32 @netplay_expected_input_size(%struct.TYPE_8__* %123, i32 %126)
  %128 = call %struct.TYPE_9__* @netplay_input_state_for(%struct.TYPE_9__** %121, i64 %122, i32 %127, i32 1, i32 0)
  br label %153

129:                                              ; preds = %113
  %130 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %131 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %130, i32 0, i32 1
  %132 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %131, align 8
  %133 = load i64, i64* %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %132, i64 %133
  %135 = load i64, i64* %9, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = call %struct.TYPE_9__* @netplay_input_state_for(%struct.TYPE_9__** %134, i64 %135, i32 %138, i32 1, i32 0)
  store %struct.TYPE_9__* %139, %struct.TYPE_9__** %10, align 8
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 8
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memcpy(i32 %142, i32 %145, i32 %151)
  br label %153

153:                                              ; preds = %129, %116
  br label %154

154:                                              ; preds = %153, %90
  %155 = load i64, i64* %8, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %8, align 8
  br label %78

157:                                              ; preds = %78
  %158 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %159 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = getelementptr inbounds i32, i32* %160, i64 %161
  store i32 1, i32* %162, align 4
  br label %163

163:                                              ; preds = %157, %55
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %165 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %166 = load i64, i64* %9, align 8
  %167 = call i32 @send_input_frame(%struct.TYPE_8__* %164, %struct.delta_frame* %165, i32* null, i32* null, i64 %166, i32 0)
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = call i32 @NEXT_PTR(i64 %170)
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  %175 = load i64, i64* %9, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = add nsw i64 %179, 1
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 2
  %183 = load i64*, i64** %182, align 8
  %184 = load i64, i64* %9, align 8
  %185 = getelementptr inbounds i64, i64* %183, i64 %184
  store i64 %180, i64* %185, align 8
  br label %186

186:                                              ; preds = %163, %35, %25
  br label %187

187:                                              ; preds = %186, %54
  %188 = load i64, i64* %5, align 8
  %189 = add i64 %188, 1
  store i64 %189, i64* %5, align 8
  br label %19

190:                                              ; preds = %19
  ret void
}

declare dso_local i64 @PREV_PTR(i64) #1

declare dso_local %struct.TYPE_9__* @netplay_input_state_for(%struct.TYPE_9__**, i64, i32, i32, i32) #1

declare dso_local i32 @netplay_expected_input_size(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @send_input_frame(%struct.TYPE_8__*, %struct.delta_frame*, i32*, i32*, i64, i32) #1

declare dso_local i32 @NEXT_PTR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
