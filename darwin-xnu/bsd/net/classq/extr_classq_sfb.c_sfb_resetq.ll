; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_resetq.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_resetq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i32, i32, i32, i32, %struct.TYPE_9__, i64, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, %struct.TYPE_10__*, %struct.TYPE_10__**, i32, i64, i64, %struct.ifnet* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_10__ = type { i8* }
%struct.ifnet = type { i32 }

@CLASSQ_EV_LINK_DOWN = common dso_local global i64 0, align 8
@sfb_allocation = common dso_local global i32 0, align 4
@CLASSQ_EV_LINK_UP = common dso_local global i64 0, align 8
@classq_verbose = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [213 x i8] c"%s: SFB qid=%d, holdtime=%llu nsec, pboxtime=%llu nsec, allocation=%d, drop_thresh=%d, hinterval=%d sec, sfb_bins=%d bytes, eff_rate=%llu bpstarget_qdelay= %llu nsec update_interval=%llu sec %llu nsec flags=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfb*, i64)* @sfb_resetq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfb_resetq(%struct.sfb* %0, i64 %1) #0 {
  %3 = alloca %struct.sfb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store %struct.sfb* %0, %struct.sfb** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.sfb*, %struct.sfb** %3, align 8
  %8 = getelementptr inbounds %struct.sfb, %struct.sfb* %7, i32 0, i32 15
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %5, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %11 = icmp ne %struct.ifnet* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY(i32 %12)
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @CLASSQ_EV_LINK_DOWN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %2
  %18 = load %struct.sfb*, %struct.sfb** %3, align 8
  %19 = call i8* @sfb_random(%struct.sfb* %18)
  %20 = load %struct.sfb*, %struct.sfb** %3, align 8
  %21 = getelementptr inbounds %struct.sfb, %struct.sfb* %20, i32 0, i32 11
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %21, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store i8* %19, i8** %25, align 8
  %26 = load %struct.sfb*, %struct.sfb** %3, align 8
  %27 = call i8* @sfb_random(%struct.sfb* %26)
  %28 = load %struct.sfb*, %struct.sfb** %3, align 8
  %29 = getelementptr inbounds %struct.sfb, %struct.sfb* %28, i32 0, i32 11
  %30 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %29, align 8
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  store i8* %27, i8** %33, align 8
  %34 = load i32, i32* @sfb_allocation, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %17
  %37 = load %struct.sfb*, %struct.sfb** %3, align 8
  %38 = getelementptr inbounds %struct.sfb, %struct.sfb* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 3
  br label %43

41:                                               ; preds = %17
  %42 = load i32, i32* @sfb_allocation, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = phi i32 [ %40, %36 ], [ %42, %41 ]
  %45 = load %struct.sfb*, %struct.sfb** %3, align 8
  %46 = getelementptr inbounds %struct.sfb, %struct.sfb* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sfb*, %struct.sfb** %3, align 8
  %48 = getelementptr inbounds %struct.sfb, %struct.sfb* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.sfb*, %struct.sfb** %3, align 8
  %51 = getelementptr inbounds %struct.sfb, %struct.sfb* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = ashr i32 %52, 1
  %54 = add nsw i32 %49, %53
  %55 = load %struct.sfb*, %struct.sfb** %3, align 8
  %56 = getelementptr inbounds %struct.sfb, %struct.sfb* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %43, %2
  %58 = load %struct.sfb*, %struct.sfb** %3, align 8
  %59 = getelementptr inbounds %struct.sfb, %struct.sfb* %58, i32 0, i32 14
  store i64 0, i64* %59, align 8
  %60 = load %struct.sfb*, %struct.sfb** %3, align 8
  %61 = getelementptr inbounds %struct.sfb, %struct.sfb* %60, i32 0, i32 13
  store i64 0, i64* %61, align 8
  %62 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %63 = call i32 @ifnet_output_linkrate(%struct.ifnet* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.sfb*, %struct.sfb** %3, align 8
  %66 = getelementptr inbounds %struct.sfb, %struct.sfb* %65, i32 0, i32 12
  store i32 %64, i32* %66, align 8
  %67 = load %struct.sfb*, %struct.sfb** %3, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @sfb_calc_holdtime(%struct.sfb* %67, i32 %68)
  %70 = load %struct.sfb*, %struct.sfb** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @sfb_calc_pboxtime(%struct.sfb* %70, i32 %71)
  %73 = load %struct.sfb*, %struct.sfb** %3, align 8
  %74 = call i32 @sfb_calc_hinterval(%struct.sfb* %73, i32* null)
  %75 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %76 = load %struct.sfb*, %struct.sfb** %3, align 8
  %77 = getelementptr inbounds %struct.sfb, %struct.sfb* %76, i32 0, i32 5
  %78 = call i32 @ifclassq_calc_target_qdelay(%struct.ifnet* %75, i64* %77)
  %79 = load %struct.sfb*, %struct.sfb** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @sfb_calc_update_interval(%struct.sfb* %79, i32 %80)
  %82 = load i64, i64* %4, align 8
  %83 = load i64, i64* @CLASSQ_EV_LINK_DOWN, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %57
  %86 = load i64, i64* %4, align 8
  %87 = load i64, i64* @CLASSQ_EV_LINK_UP, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %57
  %90 = load %struct.sfb*, %struct.sfb** %3, align 8
  %91 = call i32 @sfb_fclists_clean(%struct.sfb* %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = load %struct.sfb*, %struct.sfb** %3, align 8
  %94 = getelementptr inbounds %struct.sfb, %struct.sfb* %93, i32 0, i32 11
  %95 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %94, align 8
  %96 = call i32 @bzero(%struct.TYPE_10__** %95, i32 8)
  %97 = load %struct.sfb*, %struct.sfb** %3, align 8
  %98 = getelementptr inbounds %struct.sfb, %struct.sfb* %97, i32 0, i32 10
  %99 = call i32 @bzero(%struct.TYPE_10__** %98, i32 8)
  %100 = load i64, i64* %4, align 8
  %101 = load i64, i64* @CLASSQ_EV_LINK_DOWN, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %92
  %104 = load i32, i32* @classq_verbose, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103, %92
  br label %154

107:                                              ; preds = %103
  %108 = load i32, i32* @LOG_DEBUG, align 4
  %109 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %110 = call i32 @if_name(%struct.ifnet* %109)
  %111 = load %struct.sfb*, %struct.sfb** %3, align 8
  %112 = getelementptr inbounds %struct.sfb, %struct.sfb* %111, i32 0, i32 9
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.sfb*, %struct.sfb** %3, align 8
  %115 = getelementptr inbounds %struct.sfb, %struct.sfb* %114, i32 0, i32 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.sfb*, %struct.sfb** %3, align 8
  %120 = getelementptr inbounds %struct.sfb, %struct.sfb* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.sfb*, %struct.sfb** %3, align 8
  %125 = getelementptr inbounds %struct.sfb, %struct.sfb* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.sfb*, %struct.sfb** %3, align 8
  %128 = getelementptr inbounds %struct.sfb, %struct.sfb* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.sfb*, %struct.sfb** %3, align 8
  %131 = getelementptr inbounds %struct.sfb, %struct.sfb* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.sfb*, %struct.sfb** %3, align 8
  %137 = getelementptr inbounds %struct.sfb, %struct.sfb* %136, i32 0, i32 5
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.sfb*, %struct.sfb** %3, align 8
  %141 = getelementptr inbounds %struct.sfb, %struct.sfb* %140, i32 0, i32 4
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = trunc i64 %143 to i32
  %145 = load %struct.sfb*, %struct.sfb** %3, align 8
  %146 = getelementptr inbounds %struct.sfb, %struct.sfb* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.sfb*, %struct.sfb** %3, align 8
  %151 = getelementptr inbounds %struct.sfb, %struct.sfb* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @log(i32 %108, i8* getelementptr inbounds ([213 x i8], [213 x i8]* @.str, i64 0, i64 0), i32 %110, i32 %113, i32 %118, i32 %123, i32 %126, i32 %129, i32 %134, i32 8, i32 %135, i32 %139, i32 %144, i32 %149, i32 %152)
  br label %154

154:                                              ; preds = %107, %106
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i8* @sfb_random(%struct.sfb*) #1

declare dso_local i32 @ifnet_output_linkrate(%struct.ifnet*) #1

declare dso_local i32 @sfb_calc_holdtime(%struct.sfb*, i32) #1

declare dso_local i32 @sfb_calc_pboxtime(%struct.sfb*, i32) #1

declare dso_local i32 @sfb_calc_hinterval(%struct.sfb*, i32*) #1

declare dso_local i32 @ifclassq_calc_target_qdelay(%struct.ifnet*, i64*) #1

declare dso_local i32 @sfb_calc_update_interval(%struct.sfb*, i32) #1

declare dso_local i32 @sfb_fclists_clean(%struct.sfb*) #1

declare dso_local i32 @bzero(%struct.TYPE_10__**, i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
