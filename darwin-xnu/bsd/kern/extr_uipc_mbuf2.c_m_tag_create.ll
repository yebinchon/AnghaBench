; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_create.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf2.c_m_tag_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_tag = type { i32, i64, i32, i32, i32 }
%struct.mbuf = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.m_taghdr = type { i32, i64, i32, i32, i32 }

@MLEN = common dso_local global i32 0, align 4
@m_tag_link = common dso_local global i32 0, align 4
@M_TAG_VALID_PATTERN = common dso_local global i64 0, align 8
@M_TAGHDR = common dso_local global i32 0, align 4
@M_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.m_tag* @m_tag_create(i32 %0, i32 %1, i32 %2, i32 %3, %struct.mbuf* %4) #0 {
  %6 = alloca %struct.m_tag*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.m_tag*, align 8
  %13 = alloca %struct.m_tag*, align 8
  %14 = alloca %struct.mbuf*, align 8
  %15 = alloca %struct.m_taghdr*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store %struct.m_tag* null, %struct.m_tag** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  store %struct.m_tag* null, %struct.m_tag** %6, align 8
  br label %176

19:                                               ; preds = %5
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = add i64 %21, 32
  %23 = add i64 %22, 32
  %24 = load i32, i32* @MLEN, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp ugt i64 %23, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.m_taghdr* @m_tag_alloc(i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = bitcast %struct.m_taghdr* %32 to %struct.m_tag*
  store %struct.m_tag* %33, %struct.m_tag** %6, align 8
  br label %176

34:                                               ; preds = %19
  %35 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call %struct.m_taghdr* @SLIST_FIRST(i32* %37)
  %39 = bitcast %struct.m_taghdr* %38 to %struct.m_tag*
  store %struct.m_tag* %39, %struct.m_tag** %13, align 8
  br label %40

40:                                               ; preds = %137, %53, %34
  %41 = load %struct.m_tag*, %struct.m_tag** %13, align 8
  %42 = icmp ne %struct.m_tag* %41, null
  br i1 %42, label %43, label %143

43:                                               ; preds = %40
  %44 = load %struct.m_tag*, %struct.m_tag** %13, align 8
  %45 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @M_TAG_ALIGN(i32 %46)
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, 32
  %50 = load i32, i32* @MLEN, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.m_tag*, %struct.m_tag** %13, align 8
  %55 = bitcast %struct.m_tag* %54 to %struct.m_taghdr*
  %56 = load i32, i32* @m_tag_link, align 4
  %57 = call %struct.m_taghdr* @SLIST_NEXT(%struct.m_taghdr* %55, i32 %56)
  %58 = bitcast %struct.m_taghdr* %57 to %struct.m_tag*
  store %struct.m_tag* %58, %struct.m_tag** %13, align 8
  br label %40

59:                                               ; preds = %43
  %60 = load %struct.m_tag*, %struct.m_tag** %13, align 8
  %61 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @M_TAG_VALID_PATTERN, align 8
  %64 = icmp eq i64 %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @VERIFY(i32 %65)
  %67 = load %struct.m_tag*, %struct.m_tag** %13, align 8
  %68 = bitcast %struct.m_tag* %67 to %struct.m_taghdr*
  %69 = call %struct.mbuf* @m_dtom(%struct.m_taghdr* %68)
  store %struct.mbuf* %69, %struct.mbuf** %14, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = bitcast i8* %73 to %struct.m_taghdr*
  store %struct.m_taghdr* %74, %struct.m_taghdr** %15, align 8
  %75 = load %struct.m_taghdr*, %struct.m_taghdr** %15, align 8
  %76 = getelementptr inbounds %struct.m_taghdr, %struct.m_taghdr* %75, i64 1
  %77 = call i32 @IS_P2ALIGNED(%struct.m_taghdr* %76, i32 4)
  %78 = call i32 @VERIFY(i32 %77)
  %79 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @M_TAGHDR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %59
  %86 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %87 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @M_EXT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  br label %93

93:                                               ; preds = %85, %59
  %94 = phi i1 [ false, %59 ], [ %92, %85 ]
  %95 = zext i1 %94 to i32
  %96 = call i32 @VERIFY(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @M_TAG_ALIGN(i32 %97)
  %99 = load i32, i32* @MLEN, align 4
  %100 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %101 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sub nsw i32 %99, %102
  %104 = icmp sle i32 %98, %103
  br i1 %104, label %105, label %137

105:                                              ; preds = %93
  %106 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %110 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %108, %112
  %114 = inttoptr i64 %113 to i8*
  %115 = bitcast i8* %114 to %struct.m_tag*
  store %struct.m_tag* %115, %struct.m_tag** %12, align 8
  %116 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %117 = bitcast %struct.m_tag* %116 to %struct.m_taghdr*
  %118 = call i32 @IS_P2ALIGNED(%struct.m_taghdr* %117, i32 4)
  %119 = call i32 @VERIFY(i32 %118)
  %120 = load %struct.m_taghdr*, %struct.m_taghdr** %15, align 8
  %121 = getelementptr inbounds %struct.m_taghdr, %struct.m_taghdr* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* %9, align 4
  %125 = call i32 @M_TAG_ALIGN(i32 %124)
  %126 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %127 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, %125
  store i32 %129, i32* %127, align 4
  %130 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %131 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MLEN, align 4
  %134 = icmp sle i32 %132, %133
  %135 = zext i1 %134 to i32
  %136 = call i32 @VERIFY(i32 %135)
  br label %143

137:                                              ; preds = %93
  %138 = load %struct.m_tag*, %struct.m_tag** %13, align 8
  %139 = bitcast %struct.m_tag* %138 to %struct.m_taghdr*
  %140 = load i32, i32* @m_tag_link, align 4
  %141 = call %struct.m_taghdr* @SLIST_NEXT(%struct.m_taghdr* %139, i32 %140)
  %142 = bitcast %struct.m_taghdr* %141 to %struct.m_tag*
  store %struct.m_tag* %142, %struct.m_tag** %13, align 8
  br label %40

143:                                              ; preds = %105, %40
  %144 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %145 = icmp eq %struct.m_tag* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %10, align 4
  %151 = call %struct.m_taghdr* @m_tag_alloc(i32 %147, i32 %148, i32 %149, i32 %150)
  %152 = bitcast %struct.m_taghdr* %151 to %struct.m_tag*
  store %struct.m_tag* %152, %struct.m_tag** %6, align 8
  br label %176

153:                                              ; preds = %143
  %154 = load i64, i64* @M_TAG_VALID_PATTERN, align 8
  %155 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %156 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %159 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %9, align 4
  %161 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %162 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* %7, align 4
  %164 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %165 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 8
  %166 = load i32, i32* %9, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %153
  %169 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  %170 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %169, i64 1
  %171 = bitcast %struct.m_tag* %170 to %struct.m_taghdr*
  %172 = load i32, i32* %9, align 4
  %173 = call i32 @bzero(%struct.m_taghdr* %171, i32 %172)
  br label %174

174:                                              ; preds = %168, %153
  %175 = load %struct.m_tag*, %struct.m_tag** %12, align 8
  store %struct.m_tag* %175, %struct.m_tag** %6, align 8
  br label %176

176:                                              ; preds = %174, %146, %27, %18
  %177 = load %struct.m_tag*, %struct.m_tag** %6, align 8
  ret %struct.m_tag* %177
}

declare dso_local %struct.m_taghdr* @m_tag_alloc(i32, i32, i32, i32) #1

declare dso_local %struct.m_taghdr* @SLIST_FIRST(i32*) #1

declare dso_local i32 @M_TAG_ALIGN(i32) #1

declare dso_local %struct.m_taghdr* @SLIST_NEXT(%struct.m_taghdr*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.mbuf* @m_dtom(%struct.m_taghdr*) #1

declare dso_local i32 @IS_P2ALIGNED(%struct.m_taghdr*, i32) #1

declare dso_local i32 @bzero(%struct.m_taghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
