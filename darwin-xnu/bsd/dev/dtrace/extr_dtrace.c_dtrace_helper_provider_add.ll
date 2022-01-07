; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_provider_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_provider_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, %struct.TYPE_12__** }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64 }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_helper_providers_max = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_13__*, i32)* @dtrace_helper_provider_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_helper_provider_add(%struct.TYPE_10__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__**, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %19 = icmp ne %struct.TYPE_11__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @dtrace_helper_providers_max, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOSPC, align 4
  store i32 %28, i32* %4, align 4
  br label %157

29:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  br label %30

30:                                               ; preds = %54, %29
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = icmp ult i64 %31, %35
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %43, i64 %44
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %40, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* @EALREADY, align 4
  store i32 %52, i32* %4, align 4
  br label %157

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53
  %55 = load i64, i64* %12, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %12, align 8
  br label %30

57:                                               ; preds = %30
  %58 = load i32, i32* @KM_SLEEP, align 4
  %59 = call i8* @kmem_zalloc(i32 16, i32 %58)
  %60 = bitcast i8* %59 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %9, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %64 = bitcast %struct.TYPE_13__* %62 to i8*
  %65 = bitcast %struct.TYPE_13__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %64, i8* align 8 %65, i64 8, i1 false)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = icmp eq i64 %73, %77
  br i1 %78, label %79, label %143

79:                                               ; preds = %57
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %11, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %84, align 8
  store %struct.TYPE_12__** %85, %struct.TYPE_12__*** %10, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  store i64 2, i64* %92, align 8
  br label %98

93:                                               ; preds = %79
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = mul i64 %96, 2
  store i64 %97, i64* %95, align 8
  br label %98

98:                                               ; preds = %93, %90
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @dtrace_helper_providers_max, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp ugt i64 %101, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load i32, i32* @dtrace_helper_providers_max, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 1
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %105, %98
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ult i64 %111, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = mul i64 %120, 8
  %122 = trunc i64 %121 to i32
  %123 = load i32, i32* @KM_SLEEP, align 4
  %124 = call i8* @kmem_zalloc(i32 %122, i32 %123)
  %125 = bitcast i8* %124 to %struct.TYPE_12__**
  %126 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %126, i32 0, i32 2
  store %struct.TYPE_12__** %125, %struct.TYPE_12__*** %127, align 8
  %128 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %129 = icmp ne %struct.TYPE_12__** %128, null
  br i1 %129, label %130, label %142

130:                                              ; preds = %110
  %131 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %133, align 8
  %135 = load i64, i64* %11, align 8
  %136 = mul i64 %135, 8
  %137 = call i32 @bcopy(%struct.TYPE_12__** %131, %struct.TYPE_12__** %134, i64 %136)
  %138 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %10, align 8
  %139 = load i64, i64* %11, align 8
  %140 = mul i64 %139, 8
  %141 = call i32 @kmem_free(%struct.TYPE_12__** %138, i64 %140)
  br label %142

142:                                              ; preds = %130, %110
  br label %143

143:                                              ; preds = %142, %57
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %146, align 8
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %147, i64 %151
  store %struct.TYPE_12__* %144, %struct.TYPE_12__** %152, align 8
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  store i32 0, i32* %4, align 4
  br label %157

157:                                              ; preds = %143, %51, %27
  %158 = load i32, i32* %4, align 4
  ret i32 %158
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @kmem_zalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcopy(%struct.TYPE_12__**, %struct.TYPE_12__**, i64) #1

declare dso_local i32 @kmem_free(%struct.TYPE_12__**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
