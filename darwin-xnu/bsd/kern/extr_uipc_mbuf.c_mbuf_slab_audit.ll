; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mbuf_slab_audit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_mbuf.c_mbuf_slab_audit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_12__* }
%struct.TYPE_13__ = type { i32, i32* }

@mbuf_mlock = common dso_local global i32 0, align 4
@MC_MBUF = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@MB_SCVALID = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@mcltrace = common dso_local global i64 0, align 8
@mb_start = common dso_local global i32 0, align 4
@MB_INUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_12__*, i32)* @mbuf_slab_audit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mbuf_slab_audit(i8* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @MBUF_CLASS_VALID(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @MBUF_CLASS_COMPOSITE(i64 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %14, %3
  %20 = phi i1 [ false, %3 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  br label %23

23:                                               ; preds = %89, %19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = icmp ne %struct.TYPE_12__* %24, null
  br i1 %25, label %26, label %97

26:                                               ; preds = %23
  %27 = load i32, i32* @mbuf_mlock, align 4
  %28 = call i32 @lck_mtx_lock(i32 %27)
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = call %struct.TYPE_13__* @mcl_audit_buf2mca(i64 %29, %struct.TYPE_12__* %30)
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @MC_MBUF, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %26
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = load i32, i32* @FALSE, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @mcl_audit_mbuf(%struct.TYPE_13__* %36, %struct.TYPE_12__* %37, i32 %38, i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MB_SCVALID, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @ASSERT(i32 %45)
  br label %64

47:                                               ; preds = %26
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @m_maxsize(i64 %50)
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @TRUE, align 4
  %54 = call i32 @mcl_audit_cluster(%struct.TYPE_13__* %48, %struct.TYPE_12__* %49, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MB_SCVALID, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  br label %64

64:                                               ; preds = %47, %35
  %65 = load i64, i64* @mcltrace, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @m_cache(i64 %70)
  %72 = call i32 @mcache_buffer_log(%struct.TYPE_13__* %68, %struct.TYPE_12__* %69, i32 %71, i32* @mb_start)
  br label %73

73:                                               ; preds = %67, %64
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %73
  %77 = load i32, i32* @MB_INUSE, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %89

82:                                               ; preds = %73
  %83 = load i32, i32* @MB_INUSE, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %82, %76
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  store i32* null, i32** %91, align 8
  %92 = load i32, i32* @mbuf_mlock, align 4
  %93 = call i32 @lck_mtx_unlock(i32 %92)
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  store %struct.TYPE_12__* %96, %struct.TYPE_12__** %5, align 8
  br label %23

97:                                               ; preds = %23
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @MBUF_CLASS_VALID(i64) #1

declare dso_local i32 @MBUF_CLASS_COMPOSITE(i64) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.TYPE_13__* @mcl_audit_buf2mca(i64, %struct.TYPE_12__*) #1

declare dso_local i32 @mcl_audit_mbuf(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @mcl_audit_cluster(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @m_maxsize(i64) #1

declare dso_local i32 @mcache_buffer_log(%struct.TYPE_13__*, %struct.TYPE_12__*, i32, i32*) #1

declare dso_local i32 @m_cache(i64) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
