; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_dispatch_disconnect_event.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_dispatch_disconnect_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.socket = type { i32 }
%struct.cfil_info = type { i32, %struct.cfil_entry* }
%struct.cfil_entry = type { i32, i32, %struct.content_filter*, %struct.TYPE_3__*, %struct.cfe_buf, %struct.cfe_buf }
%struct.content_filter = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cfe_buf = type { i32 }
%struct.mbuf = type { i32 }
%struct.cfil_msg_hdr = type { i32, i32, i32, i32, i32 }

@cfil_lck_rw = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"so %llx kcunit %u outgoing %d\00", align 1
@CFEF_SENT_DISCONNECT_OUT = common dso_local global i32 0, align 4
@CFEF_SENT_DISCONNECT_IN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"so %llx disconnect already sent\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"so %llx control queue not empty\00", align 1
@EBUSY = common dso_local global i64 0, align 8
@CFF_FLOW_CONTROLLED = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@CFM_VERSION_CURRENT = common dso_local global i32 0, align 4
@CFM_TYPE_EVENT = common dso_local global i32 0, align 4
@CFM_OP_DISCONNECT_OUT = common dso_local global i32 0, align 4
@CFM_OP_DISCONNECT_IN = common dso_local global i32 0, align 4
@CTL_DATA_EOR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"ctl_enqueuembuf() failed: %d\00", align 1
@cfil_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@CFEF_FLOW_CONTROLLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.cfil_info*, i32, i32)* @cfil_dispatch_disconnect_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfil_dispatch_disconnect_event(%struct.socket* %0, %struct.cfil_info* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.cfil_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.cfil_entry*, align 8
  %12 = alloca %struct.cfe_buf*, align 8
  %13 = alloca %struct.cfil_msg_hdr, align 4
  %14 = alloca %struct.content_filter*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.cfil_info* %1, %struct.cfil_info** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store %struct.mbuf* null, %struct.mbuf** %10, align 8
  %15 = load %struct.socket*, %struct.socket** %5, align 8
  %16 = call i32 @socket_lock_assert_owned(%struct.socket* %15)
  %17 = call i32 @cfil_rw_lock_shared(i32* @cfil_lck_rw)
  %18 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %19 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %18, i32 0, i32 1
  %20 = load %struct.cfil_entry*, %struct.cfil_entry** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %20, i64 %23
  store %struct.cfil_entry* %24, %struct.cfil_entry** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %29 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %28, i32 0, i32 5
  store %struct.cfe_buf* %29, %struct.cfe_buf** %12, align 8
  br label %33

30:                                               ; preds = %4
  %31 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %32 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %31, i32 0, i32 4
  store %struct.cfe_buf* %32, %struct.cfe_buf** %12, align 8
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %35 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %34, i32 0, i32 2
  %36 = load %struct.content_filter*, %struct.content_filter** %35, align 8
  store %struct.content_filter* %36, %struct.content_filter** %14, align 8
  %37 = load %struct.content_filter*, %struct.content_filter** %14, align 8
  %38 = icmp eq %struct.content_filter* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  br label %165

40:                                               ; preds = %33
  %41 = load i32, i32* @LOG_INFO, align 4
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %40
  %50 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %51 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @CFEF_SENT_DISCONNECT_OUT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %49, %40
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %56
  %60 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %61 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CFEF_SENT_DISCONNECT_IN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59, %49
  %67 = load i32, i32* @LOG_INFO, align 4
  %68 = load %struct.socket*, %struct.socket** %5, align 8
  %69 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %68)
  %70 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  br label %165

71:                                               ; preds = %59, %56
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load %struct.cfe_buf*, %struct.cfe_buf** %12, align 8
  %76 = getelementptr inbounds %struct.cfe_buf, %struct.cfe_buf* %75, i32 0, i32 0
  %77 = call i64 @cfil_queue_empty(i32* %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load i32, i32* @LOG_INFO, align 4
  %81 = load %struct.socket*, %struct.socket** %5, align 8
  %82 = call i64 @VM_KERNEL_ADDRPERM(%struct.socket* %81)
  %83 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %82)
  %84 = load i64, i64* @EBUSY, align 8
  store i64 %84, i64* %9, align 8
  br label %165

85:                                               ; preds = %74, %71
  %86 = load %struct.content_filter*, %struct.content_filter** %14, align 8
  %87 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CFF_FLOW_CONTROLLED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i64, i64* @ENOBUFS, align 8
  store i64 %93, i64* %9, align 8
  br label %165

94:                                               ; preds = %85
  %95 = call i32 @bzero(%struct.cfil_msg_hdr* %13, i32 20)
  %96 = getelementptr inbounds %struct.cfil_msg_hdr, %struct.cfil_msg_hdr* %13, i32 0, i32 0
  store i32 20, i32* %96, align 4
  %97 = load i32, i32* @CFM_VERSION_CURRENT, align 4
  %98 = getelementptr inbounds %struct.cfil_msg_hdr, %struct.cfil_msg_hdr* %13, i32 0, i32 4
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @CFM_TYPE_EVENT, align 4
  %100 = getelementptr inbounds %struct.cfil_msg_hdr, %struct.cfil_msg_hdr* %13, i32 0, i32 3
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @CFM_OP_DISCONNECT_OUT, align 4
  br label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @CFM_OP_DISCONNECT_IN, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = getelementptr inbounds %struct.cfil_msg_hdr, %struct.cfil_msg_hdr* %13, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  %110 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %111 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %110, i32 0, i32 3
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = getelementptr inbounds %struct.cfil_msg_hdr, %struct.cfil_msg_hdr* %13, i32 0, i32 2
  store i32 %114, i32* %115, align 4
  %116 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %117 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %116, i32 0, i32 2
  %118 = load %struct.content_filter*, %struct.content_filter** %117, align 8
  %119 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %122 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %121, i32 0, i32 2
  %123 = load %struct.content_filter*, %struct.content_filter** %122, align 8
  %124 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @CTL_DATA_EOR, align 4
  %127 = call i64 @ctl_enqueuedata(i32 %120, i32 %125, %struct.cfil_msg_hdr* %13, i32 20, i32 %126)
  store i64 %127, i64* %9, align 8
  %128 = load i64, i64* %9, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %107
  %131 = load i32, i32* @LOG_ERR, align 4
  %132 = load i64, i64* %9, align 8
  %133 = call i32 (i32, i8*, i64, ...) @CFIL_LOG(i32 %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %132)
  %134 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %135 = call i32 @mbuf_freem(%struct.mbuf* %134)
  br label %165

136:                                              ; preds = %107
  %137 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %138 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %137, i32 0, i32 1
  %139 = call i32 @microuptime(i32* %138)
  %140 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %141 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %142 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %141, i32 0, i32 1
  %143 = load %struct.cfil_info*, %struct.cfil_info** %6, align 8
  %144 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.cfil_msg_hdr, %struct.cfil_msg_hdr* %13, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @CFI_ADD_TIME_LOG(%struct.cfil_info* %140, i32* %142, i32* %144, i32 %146)
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %136
  %151 = load i32, i32* @CFEF_SENT_DISCONNECT_OUT, align 4
  %152 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %153 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfil_stats, i32 0, i32 3))
  br label %164

157:                                              ; preds = %136
  %158 = load i32, i32* @CFEF_SENT_DISCONNECT_IN, align 4
  %159 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %160 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  %163 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfil_stats, i32 0, i32 2))
  br label %164

164:                                              ; preds = %157, %150
  br label %165

165:                                              ; preds = %164, %130, %92, %79, %66, %39
  %166 = load i64, i64* %9, align 8
  %167 = load i64, i64* @ENOBUFS, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %187

169:                                              ; preds = %165
  %170 = load i32, i32* @CFEF_FLOW_CONTROLLED, align 4
  %171 = load %struct.cfil_entry*, %struct.cfil_entry** %11, align 8
  %172 = getelementptr inbounds %struct.cfil_entry, %struct.cfil_entry* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = or i32 %173, %170
  store i32 %174, i32* %172, align 8
  %175 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfil_stats, i32 0, i32 1))
  %176 = call i32 @cfil_rw_lock_shared_to_exclusive(i32* @cfil_lck_rw)
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %180, label %178

178:                                              ; preds = %169
  %179 = call i32 @cfil_rw_lock_exclusive(i32* @cfil_lck_rw)
  br label %180

180:                                              ; preds = %178, %169
  %181 = load i32, i32* @CFF_FLOW_CONTROLLED, align 4
  %182 = load %struct.content_filter*, %struct.content_filter** %14, align 8
  %183 = getelementptr inbounds %struct.content_filter, %struct.content_filter* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  %186 = call i32 @cfil_rw_unlock_exclusive(i32* @cfil_lck_rw)
  br label %194

187:                                              ; preds = %165
  %188 = load i64, i64* %9, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %187
  %191 = call i32 @OSIncrementAtomic(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cfil_stats, i32 0, i32 0))
  br label %192

192:                                              ; preds = %190, %187
  %193 = call i32 @cfil_rw_unlock_shared(i32* @cfil_lck_rw)
  br label %194

194:                                              ; preds = %192, %180
  %195 = load i64, i64* %9, align 8
  %196 = trunc i64 %195 to i32
  ret i32 %196
}

declare dso_local i32 @socket_lock_assert_owned(%struct.socket*) #1

declare dso_local i32 @cfil_rw_lock_shared(i32*) #1

declare dso_local i32 @CFIL_LOG(i32, i8*, i64, ...) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.socket*) #1

declare dso_local i64 @cfil_queue_empty(i32*) #1

declare dso_local i32 @bzero(%struct.cfil_msg_hdr*, i32) #1

declare dso_local i64 @ctl_enqueuedata(i32, i32, %struct.cfil_msg_hdr*, i32, i32) #1

declare dso_local i32 @mbuf_freem(%struct.mbuf*) #1

declare dso_local i32 @microuptime(i32*) #1

declare dso_local i32 @CFI_ADD_TIME_LOG(%struct.cfil_info*, i32*, i32*, i32) #1

declare dso_local i32 @OSIncrementAtomic(i32*) #1

declare dso_local i32 @cfil_rw_lock_shared_to_exclusive(i32*) #1

declare dso_local i32 @cfil_rw_lock_exclusive(i32*) #1

declare dso_local i32 @cfil_rw_unlock_exclusive(i32*) #1

declare dso_local i32 @cfil_rw_unlock_shared(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
