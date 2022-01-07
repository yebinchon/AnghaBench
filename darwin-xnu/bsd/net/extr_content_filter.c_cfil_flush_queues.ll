; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_flush_queues.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_flush_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.socket = type { i32 }
%struct.cfil_info = type { i32, %struct.TYPE_9__, %struct.cfil_entry*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.cfil_entry = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@SOF_CONTENT_FILTER = common dso_local global i32 0, align 4
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@CFIF_DROP = common dso_local global i32 0, align 4
@cfil_stats = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, %struct.cfil_info*)* @cfil_flush_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_flush_queues(%struct.socket* %0, %struct.cfil_info* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.cfil_info*, align 8
  %5 = alloca %struct.cfil_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @SOF_CONTENT_FILTER, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %16 = icmp eq %struct.cfil_info* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %2
  br label %137

18:                                               ; preds = %14
  %19 = load %struct.socket*, %struct.socket** %3, align 8
  %20 = call i32 @socket_lock_assert_owned(%struct.socket* %19)
  %21 = load %struct.socket*, %struct.socket** %3, align 8
  %22 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %23 = call i32 @cfil_acquire_sockbuf(%struct.socket* %21, %struct.cfil_info* %22, i32 1)
  %24 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %25 = icmp ne %struct.cfil_info* %24, null
  br i1 %25, label %26, label %76

26:                                               ; preds = %18
  store i64 0, i64* %7, align 8
  store i32 1, i32* %6, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %54

31:                                               ; preds = %27
  %32 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %33 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %32, i32 0, i32 2
  %34 = load %struct.cfil_entry*, %struct.cfil_entry** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %34, i64 %37
  store %struct.cfil_entry* %38, %struct.cfil_entry** %5, align 8
  %39 = load %struct.cfil_entry*, %struct.cfil_entry** %5, align 8
  %40 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = call i64 @cfil_queue_drain(i32* %41)
  %43 = load i64, i64* %7, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %7, align 8
  %45 = load %struct.cfil_entry*, %struct.cfil_entry** %5, align 8
  %46 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i64 @cfil_queue_drain(i32* %47)
  %49 = load i64, i64* %7, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %31
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %27

54:                                               ; preds = %27
  %55 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %56 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i64 @cfil_queue_drain(i32* %57)
  %59 = load i64, i64* %7, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, i64* %7, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %54
  %64 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %65 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @CFIF_DROP, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cfil_stats, i32 0, i32 3))
  br label %74

72:                                               ; preds = %63
  %73 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cfil_stats, i32 0, i32 2))
  br label %74

74:                                               ; preds = %72, %70
  br label %75

75:                                               ; preds = %74, %54
  br label %76

76:                                               ; preds = %75, %18
  %77 = load %struct.socket*, %struct.socket** %3, align 8
  %78 = call i32 @cfil_release_sockbuf(%struct.socket* %77, i32 1)
  %79 = load %struct.socket*, %struct.socket** %3, align 8
  %80 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %81 = call i32 @cfil_acquire_sockbuf(%struct.socket* %79, %struct.cfil_info* %80, i32 0)
  %82 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %83 = icmp ne %struct.cfil_info* %82, null
  br i1 %83, label %84, label %134

84:                                               ; preds = %76
  store i64 0, i64* %7, align 8
  store i32 1, i32* %6, align 4
  br label %85

85:                                               ; preds = %109, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %85
  %90 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %91 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %90, i32 0, i32 2
  %92 = load %struct.cfil_entry*, %struct.cfil_entry** %91, align 8
  %93 = load i32, i32* %6, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %92, i64 %95
  store %struct.cfil_entry* %96, %struct.cfil_entry** %5, align 8
  %97 = load %struct.cfil_entry*, %struct.cfil_entry** %5, align 8
  %98 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = call i64 @cfil_queue_drain(i32* %99)
  %101 = load i64, i64* %7, align 8
  %102 = add nsw i64 %101, %100
  store i64 %102, i64* %7, align 8
  %103 = load %struct.cfil_entry*, %struct.cfil_entry** %5, align 8
  %104 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = call i64 @cfil_queue_drain(i32* %105)
  %107 = load i64, i64* %7, align 8
  %108 = add nsw i64 %107, %106
  store i64 %108, i64* %7, align 8
  br label %109

109:                                              ; preds = %89
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %85

112:                                              ; preds = %85
  %113 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %114 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = call i64 @cfil_queue_drain(i32* %115)
  %117 = load i64, i64* %7, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %133

121:                                              ; preds = %112
  %122 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %123 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @CFIF_DROP, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %121
  %129 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cfil_stats, i32 0, i32 1))
  br label %132

130:                                              ; preds = %121
  %131 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cfil_stats, i32 0, i32 0))
  br label %132

132:                                              ; preds = %130, %128
  br label %133

133:                                              ; preds = %132, %112
  br label %134

134:                                              ; preds = %133, %76
  %135 = load %struct.socket*, %struct.socket** %3, align 8
  %136 = call i32 @cfil_release_sockbuf(%struct.socket* %135, i32 0)
  br label %137

137:                                              ; preds = %134, %17
  %138 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %139 = call i32 @CFIL_INFO_VERIFY(%struct.cfil_info* %138)
  ret void
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @cfil_acquire_sockbuf(%struct.socket*, %struct.cfil_info*, i32) #1

declare dso_local i64 @cfil_queue_drain(i32*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @cfil_release_sockbuf(%struct.socket*, i32) #1

declare dso_local i32 @CFIL_INFO_VERIFY(%struct.cfil_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
