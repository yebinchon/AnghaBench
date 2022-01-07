; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_mqueue.c_ipc_mqueue_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32, i64, i64, %struct.TYPE_24__*, i32, i64, i32 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, %struct.waitq_set, %struct.waitq }
%struct.waitq_set = type { i32 }
%struct.waitq = type { i32 }

@WAITQ_ALREADY_LOCKED = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IKM_NULL = common dso_local global %struct.TYPE_24__* null, align 8
@IPC_MQUEUE_RECEIVE = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4
@WAITQ_KEEP_LOCKED = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global %struct.TYPE_22__* null, align 8
@MACH_RCV_IN_PROGRESS = common dso_local global i64 0, align 8
@MACH_PEEK_IN_PROGRESS = common dso_local global i64 0, align 8
@MACH_RCV_TOO_LARGE = common dso_local global i64 0, align 8
@MACH_RCV_LARGE = common dso_local global i32 0, align 4
@MACH_MSG_SUCCESS = common dso_local global i64 0, align 8
@IMQ_NULL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_mqueue_add(%struct.TYPE_23__* %0, %struct.TYPE_23__* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.waitq*, align 8
  %11 = alloca %struct.waitq_set*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_24__*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %6, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 5
  store %struct.waitq* %20, %struct.waitq** %10, align 8
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 4
  store %struct.waitq_set* %22, %struct.waitq_set** %11, align 8
  %23 = load i64*, i64** %8, align 8
  %24 = icmp ne i64* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i64*, i64** %8, align 8
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %4
  %30 = phi i1 [ false, %4 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  %33 = load %struct.waitq_set*, %struct.waitq_set** %11, align 8
  %34 = call i32 @waitqs_is_linked(%struct.waitq_set* %33)
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %37 = call i32 @imq_lock(%struct.TYPE_23__* %36)
  %38 = load %struct.waitq*, %struct.waitq** %10, align 8
  %39 = load %struct.waitq_set*, %struct.waitq_set** %11, align 8
  %40 = load i32, i32* @WAITQ_ALREADY_LOCKED, align 4
  %41 = load i64*, i64** %8, align 8
  %42 = call i64 @waitq_link(%struct.waitq* %38, %struct.waitq_set* %39, i32 %40, i64* %41)
  store i64 %42, i64* %15, align 8
  %43 = load i64, i64* %15, align 8
  %44 = load i64, i64* @KERN_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %29
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %48 = call i32 @imq_unlock(%struct.TYPE_23__* %47)
  %49 = load i64, i64* %15, align 8
  store i64 %49, i64* %5, align 8
  br label %179

50:                                               ; preds = %29
  %51 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %51, i32 0, i32 3
  store i32* %52, i32** %12, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = call %struct.TYPE_24__* @ipc_kmsg_queue_first(i32* %53)
  store %struct.TYPE_24__* %54, %struct.TYPE_24__** %13, align 8
  br label %55

55:                                               ; preds = %172, %50
  %56 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IKM_NULL, align 8
  %58 = icmp ne %struct.TYPE_24__* %56, %57
  br i1 %58, label %59, label %174

59:                                               ; preds = %55
  %60 = load i32*, i32** %12, align 8
  %61 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %62 = call %struct.TYPE_24__* @ipc_kmsg_queue_next(i32* %60, %struct.TYPE_24__* %61)
  store %struct.TYPE_24__* %62, %struct.TYPE_24__** %14, align 8
  br label %63

63:                                               ; preds = %130, %94, %59
  %64 = load %struct.waitq*, %struct.waitq** %10, align 8
  %65 = load i32, i32* @IPC_MQUEUE_RECEIVE, align 4
  %66 = load i32, i32* @THREAD_AWAKENED, align 4
  %67 = load i64*, i64** %9, align 8
  %68 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %69 = load i32, i32* @WAITQ_KEEP_LOCKED, align 4
  %70 = call %struct.TYPE_22__* @waitq_wakeup64_identify_locked(%struct.waitq* %64, i32 %65, i32 %66, i32* %18, i64* %67, i32 %68, i32 %69)
  store %struct.TYPE_22__* %70, %struct.TYPE_22__** %16, align 8
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** @THREAD_NULL, align 8
  %73 = icmp eq %struct.TYPE_22__* %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %175

75:                                               ; preds = %63
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MACH_RCV_IN_PROGRESS, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %75
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MACH_PEEK_IN_PROGRESS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %93 = call i32 @ipc_mqueue_peek_on_thread(%struct.TYPE_23__* %88, i32 %91, %struct.TYPE_22__* %92)
  br label %94

94:                                               ; preds = %87, %81
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %96 = call i32 @thread_unlock(%struct.TYPE_22__* %95)
  %97 = load i32, i32* %18, align 4
  %98 = call i32 @splx(i32 %97)
  br label %63

99:                                               ; preds = %75
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 8
  %104 = call i64 @ipc_kmsg_copyout_size(%struct.TYPE_24__* %100, i32 %103)
  store i64 %104, i64* %17, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* %17, align 8
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %110 = call i32 @thread_is_64bit_addr(%struct.TYPE_22__* %109)
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @REQUESTED_TRAILER_SIZE(i32 %110, i32 %113)
  %115 = add nsw i64 %108, %114
  %116 = icmp slt i64 %107, %115
  br i1 %116, label %117, label %146

117:                                              ; preds = %99
  %118 = load i64, i64* @MACH_RCV_TOO_LARGE, align 8
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load i64, i64* %17, align 8
  %122 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %123 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %122, i32 0, i32 6
  store i64 %121, i64* %123, align 8
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MACH_RCV_LARGE, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %145

130:                                              ; preds = %117
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %135 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %134, i32 0, i32 5
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_24__*, %struct.TYPE_24__** @IKM_NULL, align 8
  %137 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %137, i32 0, i32 4
  store %struct.TYPE_24__* %136, %struct.TYPE_24__** %138, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %142 = call i32 @thread_unlock(%struct.TYPE_22__* %141)
  %143 = load i32, i32* %18, align 4
  %144 = call i32 @splx(i32 %143)
  br label %63

145:                                              ; preds = %117
  br label %150

146:                                              ; preds = %99
  %147 = load i64, i64* @MACH_MSG_SUCCESS, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %146, %145
  %151 = load i32*, i32** %12, align 8
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %153 = call i32 @ipc_kmsg_rmqueue(i32* %151, %struct.TYPE_24__* %152)
  %154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %155 = load i32, i32* @IMQ_NULL, align 4
  %156 = call i32 @ipc_mqueue_release_msgcount(%struct.TYPE_23__* %154, i32 %155)
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %13, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 4
  store %struct.TYPE_24__* %157, %struct.TYPE_24__** %159, align 8
  %160 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 4
  %164 = sext i32 %162 to i64
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 3
  store i64 %164, i64* %166, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %168 = call i32 @thread_unlock(%struct.TYPE_22__* %167)
  %169 = load i32, i32* %18, align 4
  %170 = call i32 @splx(i32 %169)
  br label %171

171:                                              ; preds = %150
  br label %172

172:                                              ; preds = %171
  %173 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  store %struct.TYPE_24__* %173, %struct.TYPE_24__** %13, align 8
  br label %55

174:                                              ; preds = %55
  br label %175

175:                                              ; preds = %174, %74
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %177 = call i32 @imq_unlock(%struct.TYPE_23__* %176)
  %178 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %178, i64* %5, align 8
  br label %179

179:                                              ; preds = %175, %46
  %180 = load i64, i64* %5, align 8
  ret i64 %180
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitqs_is_linked(%struct.waitq_set*) #1

declare dso_local i32 @imq_lock(%struct.TYPE_23__*) #1

declare dso_local i64 @waitq_link(%struct.waitq*, %struct.waitq_set*, i32, i64*) #1

declare dso_local i32 @imq_unlock(%struct.TYPE_23__*) #1

declare dso_local %struct.TYPE_24__* @ipc_kmsg_queue_first(i32*) #1

declare dso_local %struct.TYPE_24__* @ipc_kmsg_queue_next(i32*, %struct.TYPE_24__*) #1

declare dso_local %struct.TYPE_22__* @waitq_wakeup64_identify_locked(%struct.waitq*, i32, i32, i32*, i64*, i32, i32) #1

declare dso_local i32 @ipc_mqueue_peek_on_thread(%struct.TYPE_23__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_22__*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i64 @ipc_kmsg_copyout_size(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @REQUESTED_TRAILER_SIZE(i32, i32) #1

declare dso_local i32 @thread_is_64bit_addr(%struct.TYPE_22__*) #1

declare dso_local i32 @ipc_kmsg_rmqueue(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @ipc_mqueue_release_msgcount(%struct.TYPE_23__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
