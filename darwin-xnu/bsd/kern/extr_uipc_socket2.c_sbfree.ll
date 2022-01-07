; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbfree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sbfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockbuf = type { i32, i32, i32, i32, i32 }
%struct.mbuf = type { i64, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MT_DATA = common dso_local global i64 0, align 8
@MT_HEADER = common dso_local global i64 0, align 8
@MT_OOBDATA = common dso_local global i64 0, align 8
@MSIZE = common dso_local global i64 0, align 8
@M_EXT = common dso_local global i32 0, align 4
@MSIZESHIFT = common dso_local global i32 0, align 4
@total_sbmb_cnt = common dso_local global i64 0, align 8
@total_sbmb_cnt_floor = common dso_local global i64 0, align 8
@SB_SNDBYTE_CNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbfree(%struct.sockbuf* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.sockbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.sockbuf* %0, %struct.sockbuf** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %7 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %10 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = sub nsw i64 %12, %8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %10, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MT_DATA, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MT_HEADER, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MT_OOBDATA, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %37 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = sub nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 4
  br label %42

42:                                               ; preds = %32, %26, %20, %2
  %43 = load i64, i64* @MSIZE, align 8
  %44 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %45 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %43
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %51 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @M_EXT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %42
  %57 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %62 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @MSIZESHIFT, align 4
  %70 = ashr i32 %68, %69
  %71 = load i32, i32* %5, align 4
  %72 = sub nsw i32 %71, %70
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %56, %42
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @OSAddAtomic(i32 %74, i64* @total_sbmb_cnt)
  %76 = load i64, i64* @total_sbmb_cnt, align 8
  %77 = icmp sge i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @VERIFY(i32 %78)
  %80 = load i64, i64* @total_sbmb_cnt, align 8
  %81 = load i64, i64* @total_sbmb_cnt_floor, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %73
  %84 = load i64, i64* @total_sbmb_cnt, align 8
  store i64 %84, i64* @total_sbmb_cnt_floor, align 8
  br label %85

85:                                               ; preds = %83, %73
  %86 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %87 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SB_SNDBYTE_CNT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load %struct.sockbuf*, %struct.sockbuf** %3, align 8
  %94 = getelementptr inbounds %struct.sockbuf, %struct.sockbuf* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %97 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @inp_decr_sndbytes_total(i32 %95, i64 %98)
  br label %100

100:                                              ; preds = %92, %85
  ret void
}

declare dso_local i32 @OSAddAtomic(i32, i64*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @inp_decr_sndbytes_total(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
