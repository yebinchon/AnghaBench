; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_udp_get_socket_state.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_udp_get_socket_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr = type { i32 }
%struct.cfil_tag = type { i16, i32, i32 }

@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_CFIL_UDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_tag* @cfil_udp_get_socket_state(%struct.mbuf* %0, i32* %1, i16* %2, %struct.sockaddr** %3) #0 {
  %5 = alloca %struct.m_tag*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca %struct.sockaddr**, align 8
  %10 = alloca %struct.m_tag*, align 8
  %11 = alloca %struct.cfil_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i32* %1, i32** %7, align 8
  store i16* %2, i16** %8, align 8
  store %struct.sockaddr** %3, %struct.sockaddr*** %9, align 8
  store %struct.m_tag* null, %struct.m_tag** %10, align 8
  store %struct.cfil_tag* null, %struct.cfil_tag** %11, align 8
  %12 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %13 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %14 = load i32, i32* @KERNEL_TAG_TYPE_CFIL_UDP, align 4
  %15 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %12, i32 %13, i32 %14, i32* null)
  store %struct.m_tag* %15, %struct.m_tag** %10, align 8
  %16 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %17 = icmp ne %struct.m_tag* %16, null
  br i1 %17, label %18, label %50

18:                                               ; preds = %4
  %19 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %20 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %19, i64 1
  %21 = bitcast %struct.m_tag* %20 to %struct.cfil_tag*
  store %struct.cfil_tag* %21, %struct.cfil_tag** %11, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.cfil_tag*, %struct.cfil_tag** %11, align 8
  %26 = getelementptr inbounds %struct.cfil_tag, %struct.cfil_tag* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %18
  %30 = load i16*, i16** %8, align 8
  %31 = icmp ne i16* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.cfil_tag*, %struct.cfil_tag** %11, align 8
  %34 = getelementptr inbounds %struct.cfil_tag, %struct.cfil_tag* %33, i32 0, i32 0
  %35 = load i16, i16* %34, align 4
  %36 = load i16*, i16** %8, align 8
  store i16 %35, i16* %36, align 2
  br label %37

37:                                               ; preds = %32, %29
  %38 = load %struct.sockaddr**, %struct.sockaddr*** %9, align 8
  %39 = icmp ne %struct.sockaddr** %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.cfil_tag*, %struct.cfil_tag** %11, align 8
  %42 = getelementptr inbounds %struct.cfil_tag, %struct.cfil_tag* %41, i32 0, i32 1
  %43 = bitcast i32* %42 to %struct.sockaddr*
  %44 = load %struct.sockaddr**, %struct.sockaddr*** %9, align 8
  store %struct.sockaddr* %43, %struct.sockaddr** %44, align 8
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %47 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %48 = call i32 @m_tag_unlink(%struct.mbuf* %46, %struct.m_tag* %47)
  %49 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  store %struct.m_tag* %49, %struct.m_tag** %5, align 8
  br label %51

50:                                               ; preds = %4
  store %struct.m_tag* null, %struct.m_tag** %5, align 8
  br label %51

51:                                               ; preds = %50, %45
  %52 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  ret %struct.m_tag* %52
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @m_tag_unlink(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
