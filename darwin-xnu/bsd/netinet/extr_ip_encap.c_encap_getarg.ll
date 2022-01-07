; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_encap.c_encap_getarg.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_ip_encap.c_encap_getarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.m_tag = type { i32 }
%struct.encaptabtag = type { i8* }

@KERNEL_MODULE_TAG_ID = common dso_local global i32 0, align 4
@KERNEL_TAG_TYPE_ENCAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @encap_getarg(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.m_tag*, align 8
  %4 = alloca %struct.encaptabtag*, align 8
  %5 = alloca i8*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  store i8* null, i8** %5, align 8
  %6 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %7 = load i32, i32* @KERNEL_MODULE_TAG_ID, align 4
  %8 = load i32, i32* @KERNEL_TAG_TYPE_ENCAP, align 4
  %9 = call %struct.m_tag* @m_tag_locate(%struct.mbuf* %6, i32 %7, i32 %8, i32* null)
  store %struct.m_tag* %9, %struct.m_tag** %3, align 8
  %10 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %11 = icmp ne %struct.m_tag* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %14 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %13, i64 1
  %15 = bitcast %struct.m_tag* %14 to %struct.encaptabtag*
  store %struct.encaptabtag* %15, %struct.encaptabtag** %4, align 8
  %16 = load %struct.encaptabtag*, %struct.encaptabtag** %4, align 8
  %17 = getelementptr inbounds %struct.encaptabtag, %struct.encaptabtag* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %5, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %20 = load %struct.m_tag*, %struct.m_tag** %3, align 8
  %21 = call i32 @m_tag_delete(%struct.mbuf* %19, %struct.m_tag* %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = load i8*, i8** %5, align 8
  ret i8* %23
}

declare dso_local %struct.m_tag* @m_tag_locate(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @m_tag_delete(%struct.mbuf*, %struct.m_tag*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
