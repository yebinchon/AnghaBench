; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_msg.c_mach_msg_receive_results.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_msg.c_mach_msg_receive_results.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4
@MACH_RCV_TOO_LARGE = common dso_local global i32 0, align 4
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@MACH_RCV_STACK = common dso_local global i32 0, align 4
@mach_msg_user_header_t = common dso_local global i32 0, align 4
@msgh_reserved = common dso_local global i32 0, align 4
@MACH_RCV_LARGE_IDENTITY = common dso_local global i32 0, align 4
@msgh_local_port = common dso_local global i32 0, align 4
@MACH_RCV_INVALID_DATA = common dso_local global i32 0, align 4
@msgh_size = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MACH_MSG_BODY_NULL = common dso_local global i32 0, align 4
@MACH_MSG_MASK = common dso_local global i32 0, align 4
@MACH_RCV_BODY_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_msg_receive_results(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %16 = call %struct.TYPE_17__* (...) @current_thread()
  store %struct.TYPE_17__* %16, %struct.TYPE_17__** %4, align 8
  %17 = call i32 (...) @current_space()
  store i32 %17, i32* %5, align 4
  %18 = call i32 (...) @current_map()
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %10, align 8
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %11, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 9
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %35, align 8
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %12, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %13, align 4
  store i64 0, i64* %15, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @mach_msg_receive_results_complete(i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @io_release(i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %125

47:                                               ; preds = %1
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @MACH_RCV_TOO_LARGE, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %117

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @MACH_RCV_LARGE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %101

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @MACH_RCV_STACK, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %100

61:                                               ; preds = %56
  %62 = load i64, i64* %10, align 8
  %63 = load i32, i32* @mach_msg_user_header_t, align 4
  %64 = load i32, i32* @msgh_reserved, align 4
  %65 = call i64 @offsetof(i32 %63, i32 %64)
  %66 = icmp sge i64 %62, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @MACH_RCV_LARGE_IDENTITY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 7
  %75 = bitcast i32* %74 to i8*
  %76 = load i64, i64* %9, align 8
  %77 = load i32, i32* @mach_msg_user_header_t, align 4
  %78 = load i32, i32* @msgh_local_port, align 4
  %79 = call i64 @offsetof(i32 %77, i32 %78)
  %80 = add nsw i64 %76, %79
  %81 = call i64 @copyout(i8* %75, i64 %80, i32 4)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %72
  %84 = load i32, i32* @MACH_RCV_INVALID_DATA, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %83, %72
  br label %86

86:                                               ; preds = %85, %67
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 6
  %89 = bitcast i32* %88 to i8*
  %90 = load i64, i64* %9, align 8
  %91 = load i32, i32* @mach_msg_user_header_t, align 4
  %92 = load i32, i32* @msgh_size, align 4
  %93 = call i64 @offsetof(i32 %91, i32 %92)
  %94 = add nsw i64 %90, %93
  %95 = call i64 @copyout(i8* %89, i64 %94, i32 8)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %86
  %98 = load i32, i32* @MACH_RCV_INVALID_DATA, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %97, %86
  br label %100

100:                                              ; preds = %99, %61, %56
  br label %116

101:                                              ; preds = %51
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %103 = call i32 @ipc_importance_clean(%struct.TYPE_18__* %102)
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %105 = load i32, i32* %11, align 4
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %5, align 4
  %110 = call i32 @msg_receive_error(%struct.TYPE_18__* %104, i32 %105, i64 %106, i64 %107, i32 %108, i32 %109, i64* %15)
  %111 = load i32, i32* @MACH_RCV_INVALID_DATA, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load i32, i32* @MACH_RCV_INVALID_DATA, align 4
  store i32 %114, i32* %8, align 4
  br label %115

115:                                              ; preds = %113, %101
  br label %116

116:                                              ; preds = %115, %100
  br label %117

117:                                              ; preds = %116, %47
  %118 = load i64*, i64** %3, align 8
  %119 = icmp ne i64* %118, null
  br i1 %119, label %120, label %123

120:                                              ; preds = %117
  %121 = load i64, i64* %15, align 8
  %122 = load i64*, i64** %3, align 8
  store i64 %121, i64* %122, align 8
  br label %123

123:                                              ; preds = %120, %117
  %124 = load i32, i32* %8, align 4
  store i32 %124, i32* %2, align 4
  br label %213

125:                                              ; preds = %1
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @ipc_voucher_receive_postprocessing(%struct.TYPE_18__* %126, i32 %127)
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %11, align 4
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %133 = load i32, i32* %13, align 4
  %134 = load i32, i32* @FALSE, align 4
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ipc_kmsg_add_trailer(%struct.TYPE_18__* %129, i32 %130, i32 %131, %struct.TYPE_17__* %132, i32 %133, i32 %134, i32 %141)
  store i32 %142, i32* %14, align 4
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* %6, align 4
  %146 = load i32, i32* @MACH_MSG_BODY_NULL, align 4
  %147 = load i32, i32* %11, align 4
  %148 = call i32 @ipc_kmsg_copyout(%struct.TYPE_18__* %143, i32 %144, i32 %145, i32 %146, i32 %147)
  store i32 %148, i32* %8, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %188

152:                                              ; preds = %125
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @ipc_importance_unreceive(%struct.TYPE_18__* %153, i32 %154)
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* @MACH_MSG_MASK, align 4
  %158 = xor i32 %157, -1
  %159 = and i32 %156, %158
  %160 = load i32, i32* @MACH_RCV_BODY_ERROR, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %174

162:                                              ; preds = %152
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %164 = load i32, i32* %11, align 4
  %165 = load i64, i64* %9, align 8
  %166 = load i64, i64* %10, align 8
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @ipc_kmsg_put(%struct.TYPE_18__* %163, i32 %164, i64 %165, i64 %166, i32 %167, i64* %15)
  %169 = load i32, i32* @MACH_RCV_INVALID_DATA, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %162
  %172 = load i32, i32* @MACH_RCV_INVALID_DATA, align 4
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %171, %162
  br label %187

174:                                              ; preds = %152
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %176 = load i32, i32* %11, align 4
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* %10, align 8
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* %5, align 4
  %181 = call i32 @msg_receive_error(%struct.TYPE_18__* %175, i32 %176, i64 %177, i64 %178, i32 %179, i32 %180, i64* %15)
  %182 = load i32, i32* @MACH_RCV_INVALID_DATA, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %174
  %185 = load i32, i32* @MACH_RCV_INVALID_DATA, align 4
  store i32 %185, i32* %8, align 4
  br label %186

186:                                              ; preds = %184, %174
  br label %187

187:                                              ; preds = %186, %173
  br label %205

188:                                              ; preds = %125
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 8
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 4
  %199 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %200 = load i32, i32* %11, align 4
  %201 = load i64, i64* %9, align 8
  %202 = load i64, i64* %10, align 8
  %203 = load i32, i32* %14, align 4
  %204 = call i32 @ipc_kmsg_put(%struct.TYPE_18__* %199, i32 %200, i64 %201, i64 %202, i32 %203, i64* %15)
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %188, %187
  %206 = load i64*, i64** %3, align 8
  %207 = icmp ne i64* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %205
  %209 = load i64, i64* %15, align 8
  %210 = load i64*, i64** %3, align 8
  store i64 %209, i64* %210, align 8
  br label %211

211:                                              ; preds = %208, %205
  %212 = load i32, i32* %8, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %211, %123
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.TYPE_17__* @current_thread(...) #1

declare dso_local i32 @current_space(...) #1

declare dso_local i32 @current_map(...) #1

declare dso_local i32 @mach_msg_receive_results_complete(i32) #1

declare dso_local i32 @io_release(i32) #1

declare dso_local i64 @offsetof(i32, i32) #1

declare dso_local i64 @copyout(i8*, i64, i32) #1

declare dso_local i32 @ipc_importance_clean(%struct.TYPE_18__*) #1

declare dso_local i32 @msg_receive_error(%struct.TYPE_18__*, i32, i64, i64, i32, i32, i64*) #1

declare dso_local i32 @ipc_voucher_receive_postprocessing(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ipc_kmsg_add_trailer(%struct.TYPE_18__*, i32, i32, %struct.TYPE_17__*, i32, i32, i32) #1

declare dso_local i32 @ipc_kmsg_copyout(%struct.TYPE_18__*, i32, i32, i32, i32) #1

declare dso_local i32 @ipc_importance_unreceive(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @ipc_kmsg_put(%struct.TYPE_18__*, i32, i64, i64, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
