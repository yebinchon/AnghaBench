; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_udp_save_socket_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_udp_save_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i32 }
%struct.cfil_info = type { %struct.cfil_hash_entry*, %struct.TYPE_4__* }
%struct.cfil_hash_entry = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mbuf = type { i32 }
%struct.cfil_tag = type { i32, i32, i32 }

@M_PKTHDR = common dso_local global i32 0, align 4
@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_CFIL_UDP = common dso_local global i32 0, align 4
@M_DONTWAIT = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_tag* @cfil_udp_save_socket_state(%struct.cfil_info* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.m_tag*, align 8
  %4 = alloca %struct.cfil_info*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.m_tag*, align 8
  %7 = alloca %struct.cfil_tag*, align 8
  %8 = alloca %struct.cfil_hash_entry*, align 8
  store %struct.cfil_info* %0, %struct.cfil_info** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  store %struct.m_tag* null, %struct.m_tag** %6, align 8
  store %struct.cfil_tag* null, %struct.cfil_tag** %7, align 8
  store %struct.cfil_hash_entry* null, %struct.cfil_hash_entry** %8, align 8
  %9 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %10 = icmp eq %struct.cfil_info* %9, null
  br i1 %10, label %31, label %11

11:                                               ; preds = %2
  %12 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %13 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = icmp eq %struct.TYPE_4__* %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %11
  %17 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %18 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %17, i32 0, i32 0
  %19 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %18, align 8
  %20 = icmp eq %struct.cfil_hash_entry* %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %16
  %22 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %23 = icmp eq %struct.mbuf* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @M_PKTHDR, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24, %21, %16, %11, %2
  store %struct.m_tag* null, %struct.m_tag** %3, align 8
  br label %101

32:                                               ; preds = %24
  %33 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %34 = load i32, i32* @KERNEL_TAG_TYPE_CFIL_UDP, align 4
  %35 = load i32, i32* @M_DONTWAIT, align 4
  %36 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %37 = call %struct.m_tag* @m_tag_create(i32 %33, i32 %34, i32 12, i32 %35, %struct.mbuf* %36)
  store %struct.m_tag* %37, %struct.m_tag** %6, align 8
  %38 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %39 = icmp ne %struct.m_tag* %38, null
  br i1 %39, label %40, label %100

40:                                               ; preds = %32
  %41 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %42 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %41, i64 1
  %43 = bitcast %struct.m_tag* %42 to %struct.cfil_tag*
  store %struct.cfil_tag* %43, %struct.cfil_tag** %7, align 8
  %44 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %45 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cfil_tag*, %struct.cfil_tag** %7, align 8
  %50 = getelementptr inbounds %struct.cfil_tag, %struct.cfil_tag* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %52 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.cfil_tag*, %struct.cfil_tag** %7, align 8
  %57 = getelementptr inbounds %struct.cfil_tag, %struct.cfil_tag* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.cfil_info*, %struct.cfil_info** %4, align 8
  %59 = getelementptr inbounds %struct.cfil_info, %struct.cfil_info* %58, i32 0, i32 0
  %60 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %59, align 8
  store %struct.cfil_hash_entry* %60, %struct.cfil_hash_entry** %8, align 8
  %61 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %62 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AF_INET6, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %40
  %67 = load %struct.cfil_tag*, %struct.cfil_tag** %7, align 8
  %68 = getelementptr inbounds %struct.cfil_tag, %struct.cfil_tag* %67, i32 0, i32 0
  %69 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %70 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %73 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @fill_ip6_sockaddr_4_6(i32* %68, i32* %71, i32 %74)
  br label %95

76:                                               ; preds = %40
  %77 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %78 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AF_INET, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %76
  %83 = load %struct.cfil_tag*, %struct.cfil_tag** %7, align 8
  %84 = getelementptr inbounds %struct.cfil_tag, %struct.cfil_tag* %83, i32 0, i32 0
  %85 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %86 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %8, align 8
  %91 = getelementptr inbounds %struct.cfil_hash_entry, %struct.cfil_hash_entry* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @fill_ip_sockaddr_4_6(i32* %84, i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %82, %76
  br label %95

95:                                               ; preds = %94, %66
  %96 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %97 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  %98 = call i32 @m_tag_prepend(%struct.mbuf* %96, %struct.m_tag* %97)
  %99 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  store %struct.m_tag* %99, %struct.m_tag** %3, align 8
  br label %101

100:                                              ; preds = %32
  store %struct.m_tag* null, %struct.m_tag** %3, align 8
  br label %101

101:                                              ; preds = %100, %95, %31
  %102 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  ret %struct.m_tag* %102
}

declare dso_local %struct.m_tag* @m_tag_create(i32, i32, i32, i32, %struct.mbuf*) #1

declare dso_local i32 @fill_ip6_sockaddr_4_6(i32*, i32*, i32) #1

declare dso_local i32 @fill_ip_sockaddr_4_6(i32*, i32, i32) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
