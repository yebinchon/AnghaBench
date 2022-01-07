; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_source_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_control_source_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i64, i32, %struct.TYPE_21__*, i64, i32, %struct.TYPE_19__* }

@NSTAT_FILTER_SUPPRESS_SRC_ADDED = common dso_local global i32 0, align 4
@NSTAT_FILTER_PROVIDER_NOZEROBYTES = common dso_local global i32 0, align 4
@NSTAT_FILTER_NOZEROBYTES = common dso_local global i32 0, align 4
@NSTAT_FILTER_TCP_NO_EARLY_CLOSE = common dso_local global i32 0, align 4
@MBUF_DONTWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@NSTAT_MSG_TYPE_SRC_ADDED = common dso_local global i32 0, align 4
@nstat_malloc_tag = common dso_local global i32 0, align 4
@NSTAT_FLAG_CLEANUP = common dso_local global i32 0, align 4
@NSTAT_SRC_REF_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@CTL_DATA_EOR = common dso_local global i32 0, align 4
@nstat_stats = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@ns_control_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_21__*, %struct.TYPE_19__*, i32)* @nstat_control_source_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nstat_control_source_add(i32 %0, %struct.TYPE_21__* %1, %struct.TYPE_19__* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_20__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store i64* null, i64** %11, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 5
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @NSTAT_FILTER_SUPPRESS_SRC_ADDED, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @NSTAT_FILTER_PROVIDER_NOZEROBYTES, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* @NSTAT_FILTER_NOZEROBYTES, align 4
  br label %40

39:                                               ; preds = %4
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @NSTAT_FILTER_TCP_NO_EARLY_CLOSE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %40
  %47 = load i32, i32* @NSTAT_FILTER_TCP_NO_EARLY_CLOSE, align 4
  %48 = load i32, i32* %14, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %14, align 4
  br label %50

50:                                               ; preds = %46, %40
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %50
  store i32 1, i32* %15, align 4
  %54 = load i32, i32* @MBUF_DONTWAIT, align 4
  %55 = call i64 @mbuf_allocpacket(i32 %54, i32 32, i32* %15, i32** %10)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i64, i64* @ENOMEM, align 8
  store i64 %58, i64* %5, align 8
  br label %196

59:                                               ; preds = %53
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @mbuf_setlen(i32* %60, i32 32)
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %10, align 8
  %64 = call i32 @mbuf_len(i32* %63)
  %65 = call i32 @mbuf_pkthdr_setlen(i32* %62, i32 %64)
  %66 = load i32*, i32** %10, align 8
  %67 = call %struct.TYPE_20__* @mbuf_data(i32* %66)
  store %struct.TYPE_20__* %67, %struct.TYPE_20__** %16, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %69 = call i32 @bzero(%struct.TYPE_20__* %68, i32 32)
  %70 = load i32, i32* @NSTAT_MSG_TYPE_SRC_ADDED, align 4
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @mbuf_len(i32* %74)
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 1
  store i64* %89, i64** %11, align 8
  br label %90

90:                                               ; preds = %59, %50
  %91 = load i32, i32* @nstat_malloc_tag, align 4
  %92 = call %struct.TYPE_18__* @OSMalloc(i32 48, i32 %91)
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %17, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %94 = icmp eq %struct.TYPE_18__* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = load i32*, i32** %10, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @mbuf_freem(i32* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i64, i64* @ENOMEM, align 8
  store i64 %102, i64* %5, align 8
  br label %196

103:                                              ; preds = %90
  %104 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %104, i32 0, i32 1
  %106 = call i32 @lck_mtx_lock(i32* %105)
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %108 = call i64 @nstat_control_next_src_ref(%struct.TYPE_21__* %107)
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = icmp ne i64* %111, null
  br i1 %112, label %113, label %118

113:                                              ; preds = %103
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64*, i64** %11, align 8
  store i64 %116, i64* %117, align 8
  br label %118

118:                                              ; preds = %113, %103
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @NSTAT_FLAG_CLEANUP, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %118
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @NSTAT_SRC_REF_INVALID, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %145

131:                                              ; preds = %125, %118
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 1
  %134 = call i32 @lck_mtx_unlock(i32* %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %136 = load i32, i32* @nstat_malloc_tag, align 4
  %137 = call i32 @OSFree(%struct.TYPE_18__* %135, i32 48, i32 %136)
  %138 = load i32*, i32** %10, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %131
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @mbuf_freem(i32* %141)
  br label %143

143:                                              ; preds = %140, %131
  %144 = load i64, i64* @EINVAL, align 8
  store i64 %144, i64* %5, align 8
  br label %196

145:                                              ; preds = %125
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 5
  store %struct.TYPE_19__* %146, %struct.TYPE_19__** %148, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  %152 = load i32, i32* %14, align 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load i32*, i32** %10, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %184

159:                                              ; preds = %145
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* @CTL_DATA_EOR, align 4
  %168 = call i64 @ctl_enqueuembuf(i32 %162, i32 %165, i32* %166, i32 %167)
  store i64 %168, i64* %18, align 8
  %169 = load i64, i64* %18, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %183

171:                                              ; preds = %159
  %172 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @nstat_stats, i32 0, i32 0), align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @nstat_stats, i32 0, i32 0), align 4
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = call i32 @lck_mtx_unlock(i32* %175)
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %178 = load i32, i32* @nstat_malloc_tag, align 4
  %179 = call i32 @OSFree(%struct.TYPE_18__* %177, i32 48, i32 %178)
  %180 = load i32*, i32** %10, align 8
  %181 = call i32 @mbuf_freem(i32* %180)
  %182 = load i64, i64* %18, align 8
  store i64 %182, i64* %5, align 8
  br label %196

183:                                              ; preds = %159
  br label %184

184:                                              ; preds = %183, %145
  %185 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %188 = load i32, i32* @ns_control_link, align 4
  %189 = call i32 @TAILQ_INSERT_HEAD(i32* %186, %struct.TYPE_18__* %187, i32 %188)
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 2
  store %struct.TYPE_21__* %190, %struct.TYPE_21__** %192, align 8
  %193 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %193, i32 0, i32 1
  %195 = call i32 @lck_mtx_unlock(i32* %194)
  store i64 0, i64* %5, align 8
  br label %196

196:                                              ; preds = %184, %171, %143, %101, %57
  %197 = load i64, i64* %5, align 8
  ret i64 %197
}

declare dso_local i64 @mbuf_allocpacket(i32, i32, i32*, i32**) #1

declare dso_local i32 @mbuf_setlen(i32*, i32) #1

declare dso_local i32 @mbuf_pkthdr_setlen(i32*, i32) #1

declare dso_local i32 @mbuf_len(i32*) #1

declare dso_local %struct.TYPE_20__* @mbuf_data(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_20__*, i32) #1

declare dso_local %struct.TYPE_18__* @OSMalloc(i32, i32) #1

declare dso_local i32 @mbuf_freem(i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i64 @nstat_control_next_src_ref(%struct.TYPE_21__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @OSFree(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @ctl_enqueuembuf(i32, i32, i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
