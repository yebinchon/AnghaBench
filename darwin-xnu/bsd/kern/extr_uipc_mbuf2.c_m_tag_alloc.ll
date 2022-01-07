; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i32, i32, i32, i32, i32 }
%struct.mbuf = type { i64, i64, i32 }
%struct.m_taghdr = type { i32, i32, i32, i32, i32 }

@MLEN = common dso_local global i64 0, align 8
@MT_TAG = common dso_local global i32 0, align 4
@M_TAGHDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@M_TAG_VALID_PATTERN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_tag* @m_tag_alloc(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.m_tag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.m_tag*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.m_taghdr*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store %struct.m_tag* null, %struct.m_tag** %5, align 8
  br label %121

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @M_TAG_ALIGN(i32 %17)
  %19 = add i64 %18, 20
  %20 = load i64, i64* @MLEN, align 8
  %21 = icmp ule i64 %19, %20
  br i1 %21, label %22, label %76

22:                                               ; preds = %16
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @MT_TAG, align 4
  %25 = call %struct.mbuf* @m_get(i32 %23, i32 %24)
  store %struct.mbuf* %25, %struct.mbuf** %11, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %27 = icmp eq %struct.mbuf* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store %struct.m_tag* null, %struct.m_tag** %5, align 8
  br label %121

29:                                               ; preds = %22
  %30 = load i32, i32* @M_TAGHDR, align 4
  %31 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = bitcast i8* %38 to %struct.m_taghdr*
  store %struct.m_taghdr* %39, %struct.m_taghdr** %12, align 8
  %40 = load %struct.m_taghdr*, %struct.m_taghdr** %12, align 8
  %41 = getelementptr inbounds %struct.m_taghdr, %struct.m_taghdr* %40, i64 1
  %42 = call i32 @IS_P2ALIGNED(%struct.m_taghdr* %41, i32 4)
  %43 = call i32 @VERIFY(i32 %42)
  %44 = load %struct.m_taghdr*, %struct.m_taghdr** %12, align 8
  %45 = getelementptr inbounds %struct.m_taghdr, %struct.m_taghdr* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 20
  store i64 %49, i64* %47, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = inttoptr i64 %56 to i8*
  %58 = bitcast i8* %57 to %struct.m_tag*
  store %struct.m_tag* %58, %struct.m_tag** %10, align 8
  %59 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %60 = bitcast %struct.m_tag* %59 to %struct.m_taghdr*
  %61 = call i32 @IS_P2ALIGNED(%struct.m_taghdr* %60, i32 4)
  %62 = call i32 @VERIFY(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = call i64 @M_TAG_ALIGN(i32 %63)
  %65 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MLEN, align 8
  %73 = icmp sle i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @VERIFY(i32 %74)
  br label %90

76:                                               ; preds = %16
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, 20
  %80 = load i32, i32* @MCLBYTES, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ule i64 %79, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32, i32* %9, align 4
  %85 = call i64 @m_mclalloc(i32 %84)
  %86 = inttoptr i64 %85 to i8*
  %87 = bitcast i8* %86 to %struct.m_tag*
  store %struct.m_tag* %87, %struct.m_tag** %10, align 8
  br label %89

88:                                               ; preds = %76
  store %struct.m_tag* null, %struct.m_tag** %10, align 8
  br label %89

89:                                               ; preds = %88, %83
  br label %90

90:                                               ; preds = %89, %29
  %91 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %92 = icmp eq %struct.m_tag* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store %struct.m_tag* null, %struct.m_tag** %5, align 8
  br label %121

94:                                               ; preds = %90
  %95 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %96 = bitcast %struct.m_tag* %95 to %struct.m_taghdr*
  %97 = call i32 @IS_P2ALIGNED(%struct.m_taghdr* %96, i32 4)
  %98 = call i32 @VERIFY(i32 %97)
  %99 = load i32, i32* @M_TAG_VALID_PATTERN, align 4
  %100 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %101 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %104 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %107 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %110 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %94
  %114 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  %115 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %114, i64 1
  %116 = bitcast %struct.m_tag* %115 to %struct.m_taghdr*
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @bzero(%struct.m_taghdr* %116, i32 %117)
  br label %119

119:                                              ; preds = %113, %94
  %120 = load %struct.m_tag*, %struct.m_tag** %10, align 8
  store %struct.m_tag* %120, %struct.m_tag** %5, align 8
  br label %121

121:                                              ; preds = %119, %93, %28, %15
  %122 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  ret %struct.m_tag* %122
}

declare dso_local i64 @M_TAG_ALIGN(i32) #1

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @IS_P2ALIGNED(%struct.m_taghdr*, i32) #1

declare dso_local i64 @m_mclalloc(i32) #1

declare dso_local i32 @bzero(%struct.m_taghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
