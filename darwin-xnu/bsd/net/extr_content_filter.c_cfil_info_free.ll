; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_info_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.content_filter = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.cfil_info = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.cfil_info*, %struct.TYPE_7__, %struct.TYPE_6__, i32*, i64, %struct.content_filter* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.cfil_entry = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.cfil_entry*, %struct.TYPE_7__, %struct.TYPE_6__, i32*, i64, %struct.content_filter* }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cfil_lck_rw = common dso_local global i32 0, align 4
@content_filters = common dso_local global %struct.content_filter** null, align 8
@MAX_CONTENT_FILTER = common dso_local global i32 0, align 4
@cfe_link = common dso_local global i32 0, align 4
@cfil_sock_udp_attached_count = common dso_local global i32 0, align 4
@cfil_sock_attached_count = common dso_local global i32 0, align 4
@cfil_sock_head = common dso_local global i32 0, align 4
@cfi_link = common dso_local global i32 0, align 4
@cfil_stats = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@cfil_info_zone = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfil_info*)* @cfil_info_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfil_info_free(%struct.cfil_info* %0) #0 {
  %2 = alloca %struct.cfil_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cfil_entry*, align 8
  %7 = alloca %struct.content_filter*, align 8
  %8 = alloca %struct.cfil_entry*, align 8
  store %struct.cfil_info* %0, %struct.cfil_info** %2, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %10 = icmp eq %struct.cfil_info* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %153

12:                                               ; preds = %1
  %13 = load i32, i32* @LOG_INFO, align 4
  %14 = call i32 @CFIL_LOG(i32 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @cfil_rw_lock_exclusive(i32* @cfil_lck_rw)
  store i32 1, i32* %3, align 4
  br label %16

16:                                               ; preds = %69, %12
  %17 = load %struct.content_filter**, %struct.content_filter*** @content_filters, align 8
  %18 = icmp ne %struct.content_filter** %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %22 = icmp sle i32 %20, %21
  br label %23

23:                                               ; preds = %19, %16
  %24 = phi i1 [ false, %16 ], [ %22, %19 ]
  br i1 %24, label %25, label %72

25:                                               ; preds = %23
  %26 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %27 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %26, i32 0, i32 2
  %28 = load %struct.cfil_info*, %struct.cfil_info** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %28, i64 %31
  %33 = bitcast %struct.cfil_info* %32 to %struct.cfil_entry*
  store %struct.cfil_entry* %33, %struct.cfil_entry** %6, align 8
  %34 = load %struct.cfil_entry*, %struct.cfil_entry** %6, align 8
  %35 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %34, i32 0, i32 7
  %36 = load %struct.content_filter*, %struct.content_filter** %35, align 8
  %37 = icmp eq %struct.content_filter* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %25
  br label %69

39:                                               ; preds = %25
  %40 = load %struct.content_filter**, %struct.content_filter*** @content_filters, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.content_filter*, %struct.content_filter** %40, i64 %43
  %45 = load %struct.content_filter*, %struct.content_filter** %44, align 8
  store %struct.content_filter* %45, %struct.content_filter** %7, align 8
  %46 = load %struct.content_filter*, %struct.content_filter** %7, align 8
  %47 = load %struct.cfil_entry*, %struct.cfil_entry** %6, align 8
  %48 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %47, i32 0, i32 7
  %49 = load %struct.content_filter*, %struct.content_filter** %48, align 8
  %50 = icmp eq %struct.content_filter* %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @VERIFY(i32 %51)
  %53 = load %struct.cfil_entry*, %struct.cfil_entry** %6, align 8
  %54 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %53, i32 0, i32 7
  store %struct.content_filter* null, %struct.content_filter** %54, align 8
  %55 = load %struct.cfil_entry*, %struct.cfil_entry** %6, align 8
  %56 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %55, i32 0, i32 6
  store i64 0, i64* %56, align 8
  %57 = load %struct.content_filter*, %struct.content_filter** %7, align 8
  %58 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %57, i32 0, i32 1
  %59 = load %struct.cfil_entry*, %struct.cfil_entry** %6, align 8
  %60 = bitcast %struct.cfil_entry* %59 to %struct.cfil_info*
  %61 = load i32, i32* @cfe_link, align 4
  %62 = call i32 @TAILQ_REMOVE(i32* %58, %struct.cfil_info* %60, i32 %61)
  %63 = load %struct.content_filter*, %struct.content_filter** %7, align 8
  %64 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.content_filter*, %struct.content_filter** %7, align 8
  %68 = call i32 @verify_content_filter(%struct.content_filter* %67)
  br label %69

69:                                               ; preds = %39, %38
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %16

72:                                               ; preds = %23
  %73 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %74 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @cfil_sock_udp_attached_count, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* @cfil_sock_udp_attached_count, align 4
  br label %80

80:                                               ; preds = %77, %72
  %81 = load i32, i32* @cfil_sock_attached_count, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* @cfil_sock_attached_count, align 4
  %83 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %84 = load i32, i32* @cfi_link, align 4
  %85 = call i32 @TAILQ_REMOVE(i32* @cfil_sock_head, %struct.cfil_info* %83, i32 %84)
  %86 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %87 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = call i64 @cfil_queue_drain(i32* %88)
  %90 = load i64, i64* %5, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %5, align 8
  %92 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %93 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = call i64 @cfil_queue_drain(i32* %94)
  %96 = load i64, i64* %4, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %4, align 8
  store i32 1, i32* %3, align 4
  br label %98

98:                                               ; preds = %135, %80
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* @MAX_CONTENT_FILTER, align 4
  %101 = icmp sle i32 %99, %100
  br i1 %101, label %102, label %138

102:                                              ; preds = %98
  %103 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %104 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %103, i32 0, i32 2
  %105 = load %struct.cfil_info*, %struct.cfil_info** %104, align 8
  %106 = load i32, i32* %3, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %105, i64 %108
  %110 = bitcast %struct.cfil_info* %109 to %struct.cfil_entry*
  store %struct.cfil_entry* %110, %struct.cfil_entry** %8, align 8
  %111 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %112 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 1
  %114 = call i64 @cfil_queue_drain(i32* %113)
  %115 = load i64, i64* %5, align 8
  %116 = add nsw i64 %115, %114
  store i64 %116, i64* %5, align 8
  %117 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %118 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 1
  %120 = call i64 @cfil_queue_drain(i32* %119)
  %121 = load i64, i64* %4, align 8
  %122 = add nsw i64 %121, %120
  store i64 %122, i64* %4, align 8
  %123 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %124 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = call i64 @cfil_queue_drain(i32* %125)
  %127 = load i64, i64* %5, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %5, align 8
  %129 = load %struct.cfil_entry*, %struct.cfil_entry** %8, align 8
  %130 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = call i64 @cfil_queue_drain(i32* %131)
  %133 = load i64, i64* %4, align 8
  %134 = add nsw i64 %133, %132
  store i64 %134, i64* %4, align 8
  br label %135

135:                                              ; preds = %102
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %98

138:                                              ; preds = %98
  %139 = call i32 @cfil_rw_unlock_exclusive(i32* @cfil_lck_rw)
  %140 = load i64, i64* %5, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cfil_stats, i32 0, i32 1))
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i64, i64* %4, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cfil_stats, i32 0, i32 0))
  br label %149

149:                                              ; preds = %147, %144
  %150 = load i32, i32* @cfil_info_zone, align 4
  %151 = load %struct.cfil_info*, %struct.cfil_info** %2, align 8
  %152 = call i32 @zfree(i32 %150, %struct.cfil_info* %151)
  br label %153

153:                                              ; preds = %149, %11
  ret void
}

declare dso_local i32 @CFIL_LOG(i32, i8*) #1

declare dso_local i32 @cfil_rw_lock_exclusive(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.cfil_info*, i32) #1

declare dso_local i32 @verify_content_filter(%struct.content_filter*) #1

declare dso_local i64 @cfil_queue_drain(i32*) #1

declare dso_local i32 @cfil_rw_unlock_exclusive(i32*) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @zfree(i32, %struct.cfil_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
