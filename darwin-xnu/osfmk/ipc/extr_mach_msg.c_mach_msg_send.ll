; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_msg.c_mach_msg_send.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_msg.c_mach_msg_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }

@MACH_SEND_KERNEL = common dso_local global i32 0, align 4
@MACH_MSGH_BITS_COMPLEX = common dso_local global i32 0, align 4
@MACH_SEND_MSG_TOO_SMALL = common dso_local global i32 0, align 4
@MACH_MSG_SIZE_MAX = common dso_local global i32 0, align 4
@MAX_TRAILER_SIZE = common dso_local global i32 0, align 4
@MACH_SEND_TOO_LARGE = common dso_local global i32 0, align 4
@DBG_MACH_IPC = common dso_local global i32 0, align 4
@MACH_IPC_KMSG_INFO = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@IKM_NULL = common dso_local global %struct.TYPE_19__* null, align 8
@DBG_FUNC_END = common dso_local global i32 0, align 4
@MACH_SEND_NO_BUFFER = common dso_local global i32 0, align 4
@MACH_IPC_KMSG_LINK = common dso_local global i32 0, align 4
@DBG_FUNC_NONE = common dso_local global i32 0, align 4
@MACH_MSG_TRAILER_FORMAT_0 = common dso_local global i32 0, align 4
@MACH_MSG_TRAILER_MINIMUM_SIZE = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i32 0, align 4
@MACH_MSG_BODY_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_msg_send(%struct.TYPE_18__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = call i32 (...) @current_space()
  store i32 %18, i32* %12, align 4
  %19 = call i32 (...) @current_map()
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* @MACH_SEND_KERNEL, align 4
  %21 = load i32, i32* %8, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %9, align 4
  %24 = and i32 %23, 3
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 4
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MACH_MSGH_BITS_COMPLEX, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34, %26, %5
  %42 = load i32, i32* @MACH_SEND_MSG_TOO_SMALL, align 4
  store i32 %42, i32* %6, align 4
  br label %184

43:                                               ; preds = %34, %30
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @MACH_MSG_SIZE_MAX, align 4
  %46 = load i32, i32* @MAX_TRAILER_SIZE, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @MACH_SEND_TOO_LARGE, align 4
  store i32 %50, i32* %6, align 4
  br label %184

51:                                               ; preds = %43
  %52 = load i32, i32* @DBG_MACH_IPC, align 4
  %53 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %54 = call i32 @MACHDBG_CODE(i32 %52, i32 %53)
  %55 = load i32, i32* @DBG_FUNC_START, align 4
  %56 = or i32 %54, %55
  %57 = call i32 (i32, ...) @KDBG(i32 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MAX_TRAILER_SIZE, align 4
  %60 = add nsw i32 %58, %59
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = call %struct.TYPE_19__* @ipc_kmsg_alloc(i32 %61)
  store %struct.TYPE_19__* %62, %struct.TYPE_19__** %14, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** @IKM_NULL, align 8
  %65 = icmp eq %struct.TYPE_19__* %63, %64
  br i1 %65, label %66, label %75

66:                                               ; preds = %51
  %67 = load i32, i32* @DBG_MACH_IPC, align 4
  %68 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %69 = call i32 @MACHDBG_CODE(i32 %67, i32 %68)
  %70 = load i32, i32* @DBG_FUNC_END, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MACH_SEND_NO_BUFFER, align 4
  %73 = call i32 (i32, ...) @KDBG(i32 %71, i32 %72)
  %74 = load i32, i32* @MACH_SEND_NO_BUFFER, align 4
  store i32 %74, i32* %6, align 4
  br label %184

75:                                               ; preds = %51
  %76 = load i32, i32* @DBG_MACH_IPC, align 4
  %77 = load i32, i32* @MACH_IPC_KMSG_LINK, align 4
  %78 = call i32 @MACHDBG_CODE(i32 %76, i32 %77)
  %79 = load i32, i32* @DBG_FUNC_NONE, align 4
  %80 = or i32 %78, %79
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %82 = ptrtoint %struct.TYPE_19__* %81 to i64
  %83 = call i32 @VM_KERNEL_ADDRPERM(i64 %82)
  %84 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %80, i64 0, i32 %83, i32 0, i32 0, i32 0)
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %86, align 8
  %88 = bitcast %struct.TYPE_16__* %87 to i8*
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %90 = bitcast %struct.TYPE_18__* %89 to i8*
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @memcpy(i8* %88, i8* %90, i32 %91)
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 4
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = ptrtoint %struct.TYPE_16__* %100 to i32
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %105, %struct.TYPE_17__** %17, align 8
  %106 = call %struct.TYPE_14__* (...) @current_thread()
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = call %struct.TYPE_14__* (...) @current_thread()
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 2
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* @MACH_MSG_TRAILER_FORMAT_0, align 4
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load i32, i32* @MACH_MSG_TRAILER_MINIMUM_SIZE, align 4
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @ipc_kmsg_copyin(%struct.TYPE_19__* %126, i32 %127, i32 %128, i32 %129, i32* %8)
  store i32 %130, i32* %15, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %75
  %135 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %136 = call i32 @ipc_kmsg_free(%struct.TYPE_19__* %135)
  %137 = load i32, i32* @DBG_MACH_IPC, align 4
  %138 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %139 = call i32 @MACHDBG_CODE(i32 %137, i32 %138)
  %140 = load i32, i32* @DBG_FUNC_END, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %15, align 4
  %143 = call i32 (i32, ...) @KDBG(i32 %141, i32 %142)
  %144 = load i32, i32* %15, align 4
  store i32 %144, i32* %6, align 4
  br label %184

145:                                              ; preds = %75
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %147 = load i32, i32* %8, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 @ipc_kmsg_send(%struct.TYPE_19__* %146, i32 %147, i32 %148)
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* @MACH_MSG_SUCCESS, align 4
  %152 = icmp ne i32 %150, %151
  br i1 %152, label %153, label %182

153:                                              ; preds = %145
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %155 = load i32, i32* %12, align 4
  %156 = load i32, i32* %13, align 4
  %157 = load i32, i32* @MACH_MSG_BODY_NULL, align 4
  %158 = call i32 @ipc_kmsg_copyout_pseudo(%struct.TYPE_19__* %154, i32 %155, i32 %156, i32 %157)
  %159 = load i32, i32* %15, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %15, align 4
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %162 = bitcast %struct.TYPE_18__* %161 to i8*
  %163 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %164, align 8
  %166 = bitcast %struct.TYPE_16__* %165 to i8*
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @memcpy(i8* %162, i8* %166, i32 %171)
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %174 = call i32 @ipc_kmsg_free(%struct.TYPE_19__* %173)
  %175 = load i32, i32* @DBG_MACH_IPC, align 4
  %176 = load i32, i32* @MACH_IPC_KMSG_INFO, align 4
  %177 = call i32 @MACHDBG_CODE(i32 %175, i32 %176)
  %178 = load i32, i32* @DBG_FUNC_END, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* %15, align 4
  %181 = call i32 (i32, ...) @KDBG(i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %153, %145
  %183 = load i32, i32* %15, align 4
  store i32 %183, i32* %6, align 4
  br label %184

184:                                              ; preds = %182, %134, %66, %49, %41
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local i32 @current_space(...) #1

declare dso_local i32 @current_map(...) #1

declare dso_local i32 @KDBG(i32, ...) #1

declare dso_local i32 @MACHDBG_CODE(i32, i32) #1

declare dso_local %struct.TYPE_19__* @ipc_kmsg_alloc(i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @VM_KERNEL_ADDRPERM(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.TYPE_14__* @current_thread(...) #1

declare dso_local i32 @ipc_kmsg_copyin(%struct.TYPE_19__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ipc_kmsg_free(%struct.TYPE_19__*) #1

declare dso_local i32 @ipc_kmsg_send(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @ipc_kmsg_copyout_pseudo(%struct.TYPE_19__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
