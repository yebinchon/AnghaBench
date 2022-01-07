; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.cfil_info = type { i32, %struct.cfil_hash_entry*, %struct.socket*, %struct.cfil_entry*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.cfil_entry = type { %struct.TYPE_9__, %struct.TYPE_8__, i32, i64, i64, i32*, %struct.cfil_info* }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.socket = type { i32, %struct.cfil_info* }
%struct.cfil_hash_entry = type { i32, %struct.cfil_info* }
%struct.inpcb = type { i32 }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cfil_info_zone = common dso_local global i32 0, align 4
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@cfil_lck_rw = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"CFIL: UDP inp_flowhash %x so_gencnt %llx entry flowhash %x sockID %llx\00", align 1
@cfil_sock_udp_attached_count = common dso_local global i64 0, align 8
@cfil_sock_head = common dso_local global i32 0, align 4
@cfi_link = common dso_local global i32 0, align 4
@cfil_sock_attached_count = common dso_local global i32 0, align 4
@cfil_stats = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cfil_info* @cfil_info_alloc(%struct.socket* %0, %struct.cfil_hash_entry* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.cfil_hash_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfil_info*, align 8
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.cfil_entry*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.cfil_hash_entry* %1, %struct.cfil_hash_entry** %4, align 8
  store %struct.cfil_info* null, %struct.cfil_info** %6, align 8
  %9 = load %struct.socket*, %struct.socket** %3, align 8
  %10 = call %struct.inpcb* @sotoinpcb(%struct.socket* %9)
  store %struct.inpcb* %10, %struct.inpcb** %7, align 8
  %11 = load i32, i32* @LOG_INFO, align 4
  %12 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.socket*, %struct.socket** %3, align 8
  %14 = call i32 @socket_lock_assert_owned(%struct.socket* %13)
  %15 = load i32, i32* @cfil_info_zone, align 4
  %16 = call %struct.cfil_info* @zalloc(i32 %15)
  store %struct.cfil_info* %16, %struct.cfil_info** %6, align 8
  %17 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %18 = icmp eq %struct.cfil_info* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %171

20:                                               ; preds = %2
  %21 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %22 = call i32 @bzero(%struct.cfil_info* %21, i32 40)
  %23 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %24 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = call i32 @cfil_queue_init(i32* %25)
  %27 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %28 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %27, i32 0, i32 4
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @cfil_queue_init(i32* %29)
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %89, %20
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %34 = icmp sle i32 %32, %33
  br i1 %34, label %35, label %92

35:                                               ; preds = %31
  %36 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %37 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %36, i32 0, i32 3
  %38 = load %struct.cfil_entry*, %struct.cfil_entry** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %38, i64 %41
  store %struct.cfil_entry* %42, %struct.cfil_entry** %8, align 8
  %43 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %44 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %45 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %44, i32 0, i32 6
  store %struct.cfil_info* %43, %struct.cfil_info** %45, align 8
  %46 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %47 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %46, i32 0, i32 5
  store i32* null, i32** %47, align 8
  %48 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %49 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %51 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %50, i32 0, i32 3
  store i64 0, i64* %51, align 8
  %52 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %53 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %56 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %59 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %62 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 4
  store i64 0, i64* %63, align 8
  %64 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %65 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %68 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %71 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %70, i32 0, i32 2
  %72 = call i32 @microuptime(i32* %71)
  %73 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %74 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = call i32 @cfil_queue_init(i32* %75)
  %77 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %78 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = call i32 @cfil_queue_init(i32* %79)
  %81 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %82 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = call i32 @cfil_queue_init(i32* %83)
  %85 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %86 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = call i32 @cfil_queue_init(i32* %87)
  br label %89

89:                                               ; preds = %35
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %31

92:                                               ; preds = %31
  %93 = call i32 @cfil_rw_lock_exclusive(i32* @cfil_lck_rw)
  %94 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %4, align 8
  %95 = icmp eq %struct.cfil_hash_entry* %94, null
  br i1 %95, label %96, label %123

96:                                               ; preds = %92
  %97 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %98 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %103 = call i32 @inp_calc_flowhash(%struct.inpcb* %102)
  %104 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %105 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %101, %96
  %107 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %108 = load %struct.socket*, %struct.socket** %3, align 8
  %109 = getelementptr inbounds %struct.socket, %struct.socket* %108, i32 0, i32 1
  store %struct.cfil_info* %107, %struct.cfil_info** %109, align 8
  %110 = load %struct.socket*, %struct.socket** %3, align 8
  %111 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %112 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %111, i32 0, i32 2
  store %struct.socket* %110, %struct.socket** %112, align 8
  %113 = load %struct.socket*, %struct.socket** %3, align 8
  %114 = getelementptr inbounds %struct.socket, %struct.socket* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = shl i32 %115, 32
  %117 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %118 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %116, %119
  %121 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %122 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  br label %164

123:                                              ; preds = %92
  %124 = load %struct.socket*, %struct.socket** %3, align 8
  %125 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %126 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %125, i32 0, i32 2
  store %struct.socket* %124, %struct.socket** %126, align 8
  %127 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %128 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %4, align 8
  %129 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %128, i32 0, i32 1
  store %struct.cfil_info* %127, %struct.cfil_info** %129, align 8
  %130 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %4, align 8
  %131 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %132 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %131, i32 0, i32 1
  store %struct.cfil_hash_entry* %130, %struct.cfil_hash_entry** %132, align 8
  %133 = load %struct.socket*, %struct.socket** %3, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = shl i32 %135, 32
  %137 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %4, align 8
  %138 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = or i32 %136, %139
  %141 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %142 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @LOG_DEBUG, align 4
  %144 = load %struct.inpcb*, %struct.inpcb** %7, align 8
  %145 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.socket*, %struct.socket** %3, align 8
  %148 = getelementptr inbounds %struct.socket, %struct.socket* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %4, align 8
  %151 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %154 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, ...) @CFIL_LOG(i32 %143, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %149, i32 %152, i32 %155)
  %157 = load i64, i64* @cfil_sock_udp_attached_count, align 8
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %123
  %160 = call i32 @thread_wakeup(i32 ptrtoint (i64* @cfil_sock_udp_attached_count to i32))
  br label %161

161:                                              ; preds = %159, %123
  %162 = load i64, i64* @cfil_sock_udp_attached_count, align 8
  %163 = add nsw i64 %162, 1
  store i64 %163, i64* @cfil_sock_udp_attached_count, align 8
  br label %164

164:                                              ; preds = %161, %106
  %165 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %166 = load i32, i32* @cfi_link, align 4
  %167 = call i32 @TAILQ_INSERT_TAIL(i32* @cfil_sock_head, %struct.cfil_info* %165, i32 %166)
  %168 = load i32, i32* @cfil_sock_attached_count, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* @cfil_sock_attached_count, align 4
  %170 = call i32 @cfil_rw_unlock_exclusive(i32* @cfil_lck_rw)
  br label %171

171:                                              ; preds = %164, %19
  %172 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %173 = icmp ne %struct.cfil_info* %172, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cfil_stats, i32 0, i32 1))
  br label %178

176:                                              ; preds = %171
  %177 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cfil_stats, i32 0, i32 0))
  br label %178

178:                                              ; preds = %176, %174
  %179 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  ret %struct.cfil_info* %179
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, ...) #1

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local %struct.cfil_info* @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.cfil_info*, i32) #1

declare dso_local i32 @cfil_queue_init(i32*) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @cfil_rw_lock_exclusive(i32*) #1

declare dso_local i32 @inp_calc_flowhash(%struct.inpcb*) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.cfil_info*, i32) #1

declare dso_local i32 @cfil_rw_unlock_exclusive(i32*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
