; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_tap_imp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_bpf.c_bpf_tap_imp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.bpf_if* }
%struct.bpf_if = type { i64, %struct.TYPE_4__*, %struct.bpf_d*, %struct.bpf_if* }
%struct.bpf_d = type { i32, i32, i32, i32, %struct.bpf_d* }
%struct.bpf_packet = type { i32, i32, %struct.pktap_header_buffer* }
%struct.pktap_header_buffer = type { i32 }

@bpf_mlock = common dso_local global i32 0, align 4
@IFT_PKTAP = common dso_local global i64 0, align 8
@DLT_PKTAP = common dso_local global i64 0, align 8
@BPF_PKTHDRV2 = common dso_local global i32 0, align 4
@BPF_TRUNCATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i64, %struct.bpf_packet*, i32)* @bpf_tap_imp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bpf_tap_imp(%struct.TYPE_4__* %0, i64 %1, %struct.bpf_packet* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bpf_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bpf_d*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bpf_if*, align 8
  %12 = alloca %struct.bpf_packet*, align 8
  %13 = alloca %struct.bpf_packet, align 8
  %14 = alloca %struct.pktap_header_buffer, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.bpf_packet* %2, %struct.bpf_packet** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* @bpf_mlock, align 4
  %16 = call i32 @lck_mtx_lock(i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.bpf_if*, %struct.bpf_if** %18, align 8
  %20 = icmp eq %struct.bpf_if* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @bpf_mlock, align 4
  %23 = call i32 @lck_mtx_unlock(i32 %22)
  br label %174

24:                                               ; preds = %4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.bpf_if*, %struct.bpf_if** %26, align 8
  store %struct.bpf_if* %27, %struct.bpf_if** %11, align 8
  br label %28

28:                                               ; preds = %49, %24
  %29 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %30 = icmp ne %struct.bpf_if* %29, null
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %33 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = icmp ne %struct.TYPE_4__* %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  store %struct.bpf_if* null, %struct.bpf_if** %11, align 8
  br label %53

38:                                               ; preds = %31
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %43 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %38
  br label %53

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %51 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %50, i32 0, i32 3
  %52 = load %struct.bpf_if*, %struct.bpf_if** %51, align 8
  store %struct.bpf_if* %52, %struct.bpf_if** %11, align 8
  br label %28

53:                                               ; preds = %47, %37, %28
  %54 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %55 = icmp eq %struct.bpf_if* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %171

57:                                               ; preds = %53
  %58 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %59 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %58, i32 0, i32 2
  %60 = load %struct.bpf_d*, %struct.bpf_d** %59, align 8
  store %struct.bpf_d* %60, %struct.bpf_d** %9, align 8
  br label %61

61:                                               ; preds = %166, %57
  %62 = load %struct.bpf_d*, %struct.bpf_d** %9, align 8
  %63 = icmp ne %struct.bpf_d* %62, null
  br i1 %63, label %64, label %170

64:                                               ; preds = %61
  %65 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  store %struct.bpf_packet* %65, %struct.bpf_packet** %12, align 8
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %64
  %69 = load %struct.bpf_d*, %struct.bpf_d** %9, align 8
  %70 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  br label %166

74:                                               ; preds = %68, %64
  %75 = load %struct.bpf_d*, %struct.bpf_d** %9, align 8
  %76 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  %79 = load %struct.bpf_d*, %struct.bpf_d** %9, align 8
  %80 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %83 = bitcast %struct.bpf_packet* %82 to i32*
  %84 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %85 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @bpf_filter(i32 %81, i32* %83, i32 %86, i32 0)
  store i64 %87, i64* %10, align 8
  %88 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %89 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @IFT_PKTAP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %155

95:                                               ; preds = %74
  %96 = load %struct.bpf_if*, %struct.bpf_if** %11, align 8
  %97 = getelementptr inbounds %struct.bpf_if, %struct.bpf_if* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @DLT_PKTAP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %155

101:                                              ; preds = %95
  %102 = load %struct.bpf_d*, %struct.bpf_d** %9, align 8
  %103 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BPF_PKTHDRV2, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %138

108:                                              ; preds = %101
  %109 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %110 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = icmp ule i64 %112, 4
  br i1 %113, label %114, label %138

114:                                              ; preds = %108
  %115 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %116 = bitcast %struct.bpf_packet* %13 to i8*
  %117 = bitcast %struct.bpf_packet* %115 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %116, i8* align 8 %117, i64 16, i1 false)
  store %struct.bpf_packet* %13, %struct.bpf_packet** %7, align 8
  %118 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %119 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %118, i32 0, i32 2
  %120 = load %struct.pktap_header_buffer*, %struct.pktap_header_buffer** %119, align 8
  %121 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %122 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @memcpy(%struct.pktap_header_buffer* %14, %struct.pktap_header_buffer* %120, i32 %123)
  %125 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %126 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %125, i32 0, i32 2
  store %struct.pktap_header_buffer* %14, %struct.pktap_header_buffer** %126, align 8
  %127 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %128 = load %struct.bpf_d*, %struct.bpf_d** %9, align 8
  %129 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @BPF_TRUNCATE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = call i32 @convert_to_pktap_header_to_v2(%struct.bpf_packet* %127, i32 %136)
  br label %138

138:                                              ; preds = %114, %108, %101
  %139 = load %struct.bpf_d*, %struct.bpf_d** %9, align 8
  %140 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @BPF_TRUNCATE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %154

145:                                              ; preds = %138
  %146 = load i64, i64* %10, align 8
  %147 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %148 = bitcast %struct.bpf_packet* %147 to i32*
  %149 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %150 = getelementptr inbounds %struct.bpf_packet, %struct.bpf_packet* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @get_pkt_trunc_len(i32* %148, i32 %151)
  %153 = call i64 @min(i64 %146, i32 %152)
  store i64 %153, i64* %10, align 8
  br label %154

154:                                              ; preds = %145, %138
  br label %155

155:                                              ; preds = %154, %95, %74
  %156 = load i64, i64* %10, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load %struct.bpf_d*, %struct.bpf_d** %9, align 8
  %160 = load %struct.bpf_packet*, %struct.bpf_packet** %7, align 8
  %161 = load i64, i64* %10, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @catchpacket(%struct.bpf_d* %159, %struct.bpf_packet* %160, i64 %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %155
  %165 = load %struct.bpf_packet*, %struct.bpf_packet** %12, align 8
  store %struct.bpf_packet* %165, %struct.bpf_packet** %7, align 8
  br label %166

166:                                              ; preds = %164, %73
  %167 = load %struct.bpf_d*, %struct.bpf_d** %9, align 8
  %168 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %167, i32 0, i32 4
  %169 = load %struct.bpf_d*, %struct.bpf_d** %168, align 8
  store %struct.bpf_d* %169, %struct.bpf_d** %9, align 8
  br label %61

170:                                              ; preds = %61
  br label %171

171:                                              ; preds = %170, %56
  %172 = load i32, i32* @bpf_mlock, align 4
  %173 = call i32 @lck_mtx_unlock(i32 %172)
  br label %174

174:                                              ; preds = %171, %21
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i64 @bpf_filter(i32, i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(%struct.pktap_header_buffer*, %struct.pktap_header_buffer*, i32) #1

declare dso_local i32 @convert_to_pktap_header_to_v2(%struct.bpf_packet*, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @get_pkt_trunc_len(i32*, i32) #1

declare dso_local i32 @catchpacket(%struct.bpf_d*, %struct.bpf_packet*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
