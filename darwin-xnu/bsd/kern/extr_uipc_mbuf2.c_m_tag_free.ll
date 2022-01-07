; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i64, i64, i64, i32 }
%struct.mbuf = type { i32, i64 }
%struct.m_taghdr = type { i64 }

@M_TAG_VALID_PATTERN = common dso_local global i64 0, align 8
@MLEN = common dso_local global i64 0, align 8
@M_TAGHDR = common dso_local global i32 0, align 4
@M_TAG_FREE_PATTERN = common dso_local global i32 0, align 4
@KERNEL_MODULE_TAG_ID = common dso_local global i64 0, align 8
@KERNEL_TAG_TYPE_MACLABEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m_tag_free(%struct.m_tag* %0) #0 {
  %2 = alloca %struct.m_tag*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.m_taghdr*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store %struct.m_tag* %0, %struct.m_tag** %2, align 8
  %7 = load %struct.m_tag*, %struct.m_tag** %2, align 8
  %8 = icmp eq %struct.m_tag* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %71

10:                                               ; preds = %1
  %11 = load %struct.m_tag*, %struct.m_tag** %2, align 8
  %12 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @M_TAG_VALID_PATTERN, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @VERIFY(i32 %16)
  %18 = load %struct.m_tag*, %struct.m_tag** %2, align 8
  %19 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @M_TAG_ALIGN(i32 %20)
  %22 = add i64 %21, 8
  %23 = load i64, i64* @MLEN, align 8
  %24 = icmp ule i64 %22, %23
  br i1 %24, label %25, label %67

25:                                               ; preds = %10
  %26 = load %struct.m_tag*, %struct.m_tag** %2, align 8
  %27 = call %struct.mbuf* @m_dtom(%struct.m_tag* %26)
  store %struct.mbuf* %27, %struct.mbuf** %3, align 8
  %28 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @M_TAGHDR, align 4
  %32 = and i32 %30, %31
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %35 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = bitcast i8* %37 to %struct.m_taghdr*
  store %struct.m_taghdr* %38, %struct.m_taghdr** %4, align 8
  %39 = load %struct.m_taghdr*, %struct.m_taghdr** %4, align 8
  %40 = getelementptr inbounds %struct.m_taghdr, %struct.m_taghdr* %39, i64 1
  %41 = call i32 @IS_P2ALIGNED(%struct.m_taghdr* %40, i32 4)
  %42 = call i32 @VERIFY(i32 %41)
  %43 = load %struct.m_taghdr*, %struct.m_taghdr** %4, align 8
  %44 = getelementptr inbounds %struct.m_taghdr, %struct.m_taghdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, -1
  store i64 %46, i64* %44, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %25
  %49 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %50 = call i32 @m_free(%struct.mbuf* %49)
  br label %71

51:                                               ; preds = %25
  %52 = load %struct.m_tag*, %struct.m_tag** %2, align 8
  %53 = bitcast %struct.m_tag* %52 to i32*
  store i32* %53, i32** %5, align 8
  %54 = load %struct.m_tag*, %struct.m_tag** %2, align 8
  %55 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %54, i64 1
  %56 = bitcast %struct.m_tag* %55 to i32*
  store i32* %56, i32** %6, align 8
  br label %57

57:                                               ; preds = %61, %51
  %58 = load i32*, i32** %5, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ult i32* %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load i32, i32* @M_TAG_FREE_PATTERN, align 4
  %63 = load i32*, i32** %5, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %5, align 8
  br label %57

66:                                               ; preds = %57
  br label %71

67:                                               ; preds = %10
  %68 = load %struct.m_tag*, %struct.m_tag** %2, align 8
  %69 = ptrtoint %struct.m_tag* %68 to i32
  %70 = call i32 @m_mclfree(i32 %69)
  br label %71

71:                                               ; preds = %9, %48, %67, %66
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @M_TAG_ALIGN(i32) #1

declare dso_local %struct.mbuf* @m_dtom(%struct.m_tag*) #1

declare dso_local i32 @IS_P2ALIGNED(%struct.m_taghdr*, i32) #1

declare dso_local i32 @m_free(%struct.mbuf*) #1

declare dso_local i32 @m_mclfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
