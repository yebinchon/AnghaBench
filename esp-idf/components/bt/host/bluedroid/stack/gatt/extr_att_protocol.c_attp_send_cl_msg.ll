; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_send_cl_msg.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_att_protocol.c_attp_send_cl_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_13__, i32, i32, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }

@GATT_NO_RESOURCES = common dso_local global i32 0, align 4
@GATT_MAX_MTU_SIZE = common dso_local global i32 0, align 4
@GATT_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Peer device not connected\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @attp_send_cl_msg(%struct.TYPE_14__* %0, i32 %1, i32 %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %13 = load i32, i32* @GATT_NO_RESOURCES, align 4
  store i32 %13, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %15 = icmp ne %struct.TYPE_14__* %14, null
  br i1 %15, label %16, label %183

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %172 [
    i32 136, label %18
    i32 138, label %37
    i32 131, label %37
    i32 132, label %37
    i32 133, label %79
    i32 134, label %84
    i32 140, label %109
    i32 135, label %112
    i32 129, label %117
    i32 141, label %117
    i32 128, label %117
    i32 139, label %146
    i32 137, label %152
    i32 130, label %159
  ]

18:                                               ; preds = %16
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GATT_MAX_MTU_SIZE, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i32* @attp_build_mtu_cmd(i32 136, i32 %32)
  store i32* %33, i32** %10, align 8
  br label %36

34:                                               ; preds = %18
  %35 = load i32, i32* @GATT_ILLEGAL_PARAMETER, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %24
  br label %173

37:                                               ; preds = %16, %16, %16
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @GATT_HANDLE_IS_VALID(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 6
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @GATT_HANDLE_IS_VALID(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %44
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 6
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp sle i32 %55, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %51
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 6
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 6
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 6
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32* @attp_build_browse_cmd(i32 %62, i32 %66, i32 %70, i32 %74)
  store i32* %75, i32** %10, align 8
  br label %78

76:                                               ; preds = %51, %44, %37
  %77 = load i32, i32* @GATT_ILLEGAL_PARAMETER, align 4
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %76, %61
  br label %173

79:                                               ; preds = %16
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %11, align 4
  br label %84

84:                                               ; preds = %16, %79
  %85 = load i32, i32* %7, align 4
  %86 = icmp eq i32 %85, 134
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  br label %96

91:                                               ; preds = %84
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  br label %96

96:                                               ; preds = %91, %87
  %97 = phi i32 [ %90, %87 ], [ %95, %91 ]
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @GATT_HANDLE_IS_VALID(i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32* @attp_build_handle_cmd(i32 %102, i32 %103, i32 %104)
  store i32* %105, i32** %10, align 8
  br label %108

106:                                              ; preds = %96
  %107 = load i32, i32* @GATT_ILLEGAL_PARAMETER, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %106, %101
  br label %173

109:                                              ; preds = %16
  %110 = load i32, i32* %7, align 4
  %111 = call i32* @attp_build_opcode_cmd(i32 %110)
  store i32* %111, i32** %10, align 8
  br label %173

112:                                              ; preds = %16
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %11, align 4
  br label %117

117:                                              ; preds = %16, %16, %16, %112
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @GATT_HANDLE_IS_VALID(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %117
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %7, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 3
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %11, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32* @attp_build_value_cmd(i32 %127, i32 %128, i32 %132, i32 %133, i32 %137, i32 %141)
  store i32* %142, i32** %10, align 8
  br label %145

143:                                              ; preds = %117
  %144 = load i32, i32* @GATT_ILLEGAL_PARAMETER, align 4
  store i32 %144, i32* %9, align 4
  br label %145

145:                                              ; preds = %143, %124
  br label %173

146:                                              ; preds = %16
  %147 = load i32, i32* %7, align 4
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32* @attp_build_exec_write_cmd(i32 %147, i32 %150)
  store i32* %151, i32** %10, align 8
  br label %173

152:                                              ; preds = %16
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 1
  %158 = call i32* @attp_build_read_by_type_value_cmd(i32 %155, i32* %157)
  store i32* %158, i32** %10, align 8
  br label %173

159:                                              ; preds = %16
  %160 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32* @attp_build_read_multi_cmd(i32 %162, i32 %166, i32 %170)
  store i32* %171, i32** %10, align 8
  br label %173

172:                                              ; preds = %16
  br label %173

173:                                              ; preds = %172, %159, %152, %146, %145, %109, %108, %78, %36
  %174 = load i32*, i32** %10, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %182

176:                                              ; preds = %173
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %7, align 4
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 @attp_cl_send_cmd(%struct.TYPE_14__* %177, i32 %178, i32 %179, i32* %180)
  store i32 %181, i32* %9, align 4
  br label %182

182:                                              ; preds = %176, %173
  br label %185

183:                                              ; preds = %4
  %184 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %185

185:                                              ; preds = %183, %182
  %186 = load i32, i32* %9, align 4
  ret i32 %186
}

declare dso_local i32* @attp_build_mtu_cmd(i32, i32) #1

declare dso_local i32 @GATT_HANDLE_IS_VALID(i32) #1

declare dso_local i32* @attp_build_browse_cmd(i32, i32, i32, i32) #1

declare dso_local i32* @attp_build_handle_cmd(i32, i32, i32) #1

declare dso_local i32* @attp_build_opcode_cmd(i32) #1

declare dso_local i32* @attp_build_value_cmd(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @attp_build_exec_write_cmd(i32, i32) #1

declare dso_local i32* @attp_build_read_by_type_value_cmd(i32, i32*) #1

declare dso_local i32* @attp_build_read_multi_cmd(i32, i32, i32) #1

declare dso_local i32 @attp_cl_send_cmd(%struct.TYPE_14__*, i32, i32, i32*) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
