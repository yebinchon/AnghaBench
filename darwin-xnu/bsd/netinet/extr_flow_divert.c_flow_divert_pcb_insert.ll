; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_pcb_insert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_flow_divert.c_flow_divert_pcb_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_divert_group = type { i32, i32 }
%struct.flow_divert_pcb = type { i32, i64, %struct.flow_divert_group* }

@flow_divert_pcb_insert.g_nextkey = internal global i64 1, align 8
@flow_divert_pcb_insert.g_hash_seed = internal global i64 0, align 8
@GROUP_COUNT_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@g_flow_divert_group_lck = common dso_local global i32 0, align 4
@g_flow_divert_groups = common dso_local global %struct.flow_divert_group** null, align 8
@g_active_group_count = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@nil_pcb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"No active groups, flow divert cannot be used for this socket\00", align 1
@ENETUNREACH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"Group for control unit %u is NULL, flow divert cannot be used for this socket\00", align 1
@fd_pcb_tree = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_divert_pcb*, i64)* @flow_divert_pcb_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_divert_pcb_insert(%struct.flow_divert_pcb* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.flow_divert_pcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flow_divert_pcb*, align 8
  %8 = alloca %struct.flow_divert_group*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca %struct.flow_divert_group*, align 8
  store %struct.flow_divert_pcb* %0, %struct.flow_divert_pcb** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.flow_divert_pcb* null, %struct.flow_divert_pcb** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @GROUP_COUNT_MAX, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %154

21:                                               ; preds = %15
  %22 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %23 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @socket_unlock(i32 %24, i32 0)
  %26 = call i32 @lck_rw_lock_shared(i32* @g_flow_divert_group_lck)
  %27 = load %struct.flow_divert_group**, %struct.flow_divert_group*** @g_flow_divert_groups, align 8
  %28 = icmp eq %struct.flow_divert_group** %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i64, i64* @g_active_group_count, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29, %21
  %33 = load i32, i32* @LOG_ERR, align 4
  %34 = call i32 @FDLOG0(i32 %33, i32* @nil_pcb, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @ENETUNREACH, align 4
  store i32 %35, i32* %6, align 4
  br label %147

36:                                               ; preds = %29
  %37 = load %struct.flow_divert_group**, %struct.flow_divert_group*** @g_flow_divert_groups, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.flow_divert_group*, %struct.flow_divert_group** %37, i64 %38
  %40 = load %struct.flow_divert_group*, %struct.flow_divert_group** %39, align 8
  store %struct.flow_divert_group* %40, %struct.flow_divert_group** %8, align 8
  %41 = load %struct.flow_divert_group*, %struct.flow_divert_group** %8, align 8
  %42 = icmp eq %struct.flow_divert_group* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load i32, i32* @LOG_ERR, align 4
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @FDLOG(i32 %44, i32* @nil_pcb, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load i32, i32* @ENETUNREACH, align 4
  store i32 %47, i32* %6, align 4
  br label %147

48:                                               ; preds = %36
  %49 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %50 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @socket_lock(i32 %51, i32 0)
  br label %53

53:                                               ; preds = %127, %48
  %54 = load i64, i64* @flow_divert_pcb_insert.g_nextkey, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* @flow_divert_pcb_insert.g_nextkey, align 8
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %54, i64* %56, align 16
  %57 = call i64 (...) @RandomULong()
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %57, i64* %58, align 8
  %59 = load i64, i64* @flow_divert_pcb_insert.g_hash_seed, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %53
  %62 = call i64 (...) @RandomULong()
  store i64 %62, i64* @flow_divert_pcb_insert.g_hash_seed, align 8
  br label %63

63:                                               ; preds = %61, %53
  %64 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %65 = load i64, i64* @flow_divert_pcb_insert.g_hash_seed, align 8
  %66 = call i64 @net_flowhash(i64* %64, i32 16, i64 %65)
  %67 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %68 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %67, i32 0, i32 1
  store i64 %66, i64* %68, align 8
  store i64 1, i64* %11, align 8
  br label %69

69:                                               ; preds = %101, %63
  %70 = load i64, i64* %11, align 8
  %71 = load i64, i64* @GROUP_COUNT_MAX, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %69
  %74 = load %struct.flow_divert_group**, %struct.flow_divert_group*** @g_flow_divert_groups, align 8
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.flow_divert_group*, %struct.flow_divert_group** %74, i64 %75
  %77 = load %struct.flow_divert_group*, %struct.flow_divert_group** %76, align 8
  store %struct.flow_divert_group* %77, %struct.flow_divert_group** %12, align 8
  %78 = load %struct.flow_divert_group*, %struct.flow_divert_group** %12, align 8
  %79 = icmp ne %struct.flow_divert_group* %78, null
  br i1 %79, label %80, label %100

80:                                               ; preds = %73
  %81 = load %struct.flow_divert_group*, %struct.flow_divert_group** %12, align 8
  %82 = load %struct.flow_divert_group*, %struct.flow_divert_group** %8, align 8
  %83 = icmp ne %struct.flow_divert_group* %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %80
  %85 = load %struct.flow_divert_group*, %struct.flow_divert_group** %12, align 8
  %86 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %85, i32 0, i32 0
  %87 = call i32 @lck_rw_lock_shared(i32* %86)
  %88 = load i32, i32* @fd_pcb_tree, align 4
  %89 = load %struct.flow_divert_group*, %struct.flow_divert_group** %12, align 8
  %90 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %89, i32 0, i32 1
  %91 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %92 = call %struct.flow_divert_pcb* @RB_FIND(i32 %88, i32* %90, %struct.flow_divert_pcb* %91)
  store %struct.flow_divert_pcb* %92, %struct.flow_divert_pcb** %7, align 8
  %93 = load %struct.flow_divert_group*, %struct.flow_divert_group** %12, align 8
  %94 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %93, i32 0, i32 0
  %95 = call i32 @lck_rw_done(i32* %94)
  %96 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %97 = icmp ne %struct.flow_divert_pcb* %96, null
  br i1 %97, label %98, label %99

98:                                               ; preds = %84
  br label %104

99:                                               ; preds = %84
  br label %100

100:                                              ; preds = %99, %80, %73
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %69

104:                                              ; preds = %98, %69
  %105 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %106 = icmp eq %struct.flow_divert_pcb* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load %struct.flow_divert_group*, %struct.flow_divert_group** %8, align 8
  %109 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %108, i32 0, i32 0
  %110 = call i32 @lck_rw_lock_exclusive(i32* %109)
  %111 = load i32, i32* @fd_pcb_tree, align 4
  %112 = load %struct.flow_divert_group*, %struct.flow_divert_group** %8, align 8
  %113 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %112, i32 0, i32 1
  %114 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %115 = call %struct.flow_divert_pcb* @RB_INSERT(i32 %111, i32* %113, %struct.flow_divert_pcb* %114)
  store %struct.flow_divert_pcb* %115, %struct.flow_divert_pcb** %7, align 8
  %116 = load %struct.flow_divert_group*, %struct.flow_divert_group** %8, align 8
  %117 = getelementptr inbounds %struct.flow_divert_group, %struct.flow_divert_group* %116, i32 0, i32 0
  %118 = call i32 @lck_rw_done(i32* %117)
  br label %119

119:                                              ; preds = %107, %104
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %122 = icmp ne %struct.flow_divert_pcb* %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  %126 = icmp slt i32 %124, 3
  br label %127

127:                                              ; preds = %123, %120
  %128 = phi i1 [ false, %120 ], [ %126, %123 ]
  br i1 %128, label %53, label %129

129:                                              ; preds = %127
  %130 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %7, align 8
  %131 = icmp eq %struct.flow_divert_pcb* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load %struct.flow_divert_group*, %struct.flow_divert_group** %8, align 8
  %134 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %135 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %134, i32 0, i32 2
  store %struct.flow_divert_group* %133, %struct.flow_divert_group** %135, align 8
  %136 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %137 = call i32 @FDRETAIN(%struct.flow_divert_pcb* %136)
  br label %142

138:                                              ; preds = %129
  %139 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %140 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %139, i32 0, i32 1
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* @EEXIST, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %138, %132
  %143 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %144 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @socket_unlock(i32 %145, i32 0)
  br label %147

147:                                              ; preds = %142, %43, %32
  %148 = call i32 @lck_rw_done(i32* @g_flow_divert_group_lck)
  %149 = load %struct.flow_divert_pcb*, %struct.flow_divert_pcb** %4, align 8
  %150 = getelementptr inbounds %struct.flow_divert_pcb, %struct.flow_divert_pcb* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @socket_lock(i32 %151, i32 0)
  %153 = load i32, i32* %6, align 4
  store i32 %153, i32* %3, align 4
  br label %154

154:                                              ; preds = %147, %19
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @socket_unlock(i32, i32) #1

declare dso_local i32 @lck_rw_lock_shared(i32*) #1

declare dso_local i32 @FDLOG0(i32, i32*, i8*) #1

declare dso_local i32 @FDLOG(i32, i32*, i8*, i64) #1

declare dso_local i32 @socket_lock(i32, i32) #1

declare dso_local i64 @RandomULong(...) #1

declare dso_local i64 @net_flowhash(i64*, i32, i64) #1

declare dso_local %struct.flow_divert_pcb* @RB_FIND(i32, i32*, %struct.flow_divert_pcb*) #1

declare dso_local i32 @lck_rw_done(i32*) #1

declare dso_local i32 @lck_rw_lock_exclusive(i32*) #1

declare dso_local %struct.flow_divert_pcb* @RB_INSERT(i32, i32*, %struct.flow_divert_pcb*) #1

declare dso_local i32 @FDRETAIN(%struct.flow_divert_pcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
