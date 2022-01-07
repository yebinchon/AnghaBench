; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@fasttrap_fork = common dso_local global i32 0, align 4
@dtrace_fasttrap_fork_ptr = common dso_local global i32* null, align 8
@fasttrap_exec_exit = common dso_local global i32 0, align 4
@dtrace_fasttrap_exit_ptr = common dso_local global i32* null, align 8
@dtrace_fasttrap_exec_ptr = common dso_local global i32* null, align 8
@sane_size = common dso_local global i32 0, align 4
@fasttrap_max = common dso_local global i32 0, align 4
@fasttrap_total = common dso_local global i64 0, align 8
@fasttrap_retired = common dso_local global i64 0, align 8
@FASTTRAP_TPOINTS_DEFAULT_SIZE = common dso_local global i32 0, align 4
@fasttrap_tpoints = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@fasttrap_lck_grp = common dso_local global i32 0, align 4
@fasttrap_lck_attr = common dso_local global i32 0, align 4
@FASTTRAP_PROVIDERS_DEFAULT_SIZE = common dso_local global i32 0, align 4
@fasttrap_provs = common dso_local global %struct.TYPE_11__ zeroinitializer, align 8
@FASTTRAP_PROCS_DEFAULT_SIZE = common dso_local global i32 0, align 4
@fasttrap_procs = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"fasttrap\00", align 1
@fasttrap_mops = common dso_local global i32 0, align 4
@fasttrap_meta_id = common dso_local global i32 0, align 4
@DDI_DEV_T_ANY = common dso_local global i32 0, align 4
@DDI_PROP_DONTPASS = common dso_local global i32 0, align 4
@devi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fasttrap_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_attach() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32* @fasttrap_fork, i32** @dtrace_fasttrap_fork_ptr, align 8
  store i32* @fasttrap_exec_exit, i32** @dtrace_fasttrap_exit_ptr, align 8
  store i32* @fasttrap_exec_exit, i32** @dtrace_fasttrap_exec_ptr, align 8
  %3 = load i32, i32* @sane_size, align 4
  %4 = ashr i32 %3, 28
  %5 = mul nsw i32 %4, 100000
  store i32 %5, i32* @fasttrap_max, align 4
  %6 = load i32, i32* @fasttrap_max, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %0
  store i32 50000, i32* @fasttrap_max, align 4
  br label %9

9:                                                ; preds = %8, %0
  store i64 0, i64* @fasttrap_total, align 8
  store i64 0, i64* @fasttrap_retired, align 8
  %10 = load i32, i32* @FASTTRAP_TPOINTS_DEFAULT_SIZE, align 4
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %9
  %14 = load i32, i32* %1, align 4
  %15 = icmp sgt i32 %14, 16777216
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %9
  %17 = load i32, i32* @FASTTRAP_TPOINTS_DEFAULT_SIZE, align 4
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %16, %13
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* %1, align 4
  %21 = sub nsw i32 %20, 1
  %22 = and i32 %19, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %1, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  br label %30

26:                                               ; preds = %18
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @fasttrap_highbit(i32 %27)
  %29 = shl i32 1, %28
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  br label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %32 = icmp sgt i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 1), align 4
  %37 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %38 = sext i32 %37 to i64
  %39 = mul i64 %38, 4
  %40 = trunc i64 %39 to i32
  %41 = load i32, i32* @KM_SLEEP, align 4
  %42 = call i8* @kmem_zalloc(i32 %40, i32 %41)
  %43 = bitcast i8* %42 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 2), align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 2), align 8
  %45 = icmp ne %struct.TYPE_7__* %44, null
  %46 = zext i1 %45 to i32
  %47 = call i32 @ASSERT(i32 %46)
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %61, %30
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fasttrap_tpoints, i32 0, i32 2), align 8
  %54 = load i32, i32* %2, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* @fasttrap_lck_grp, align 4
  %59 = load i32, i32* @fasttrap_lck_attr, align 4
  %60 = call i32 @lck_mtx_init(i32* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %2, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %2, align 4
  br label %48

64:                                               ; preds = %48
  %65 = load i32, i32* @FASTTRAP_PROVIDERS_DEFAULT_SIZE, align 4
  store i32 %65, i32* %1, align 4
  %66 = load i32, i32* %1, align 4
  %67 = load i32, i32* %1, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %66, %68
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %64
  %72 = load i32, i32* %1, align 4
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  br label %77

73:                                               ; preds = %64
  %74 = load i32, i32* %1, align 4
  %75 = call i32 @fasttrap_highbit(i32 %74)
  %76 = shl i32 1, %75
  store i32 %76, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  br label %77

77:                                               ; preds = %73, %71
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %79 = icmp sgt i32 %78, 0
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %83 = sub nsw i32 %82, 1
  store i32 %83, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 1), align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 4
  %87 = trunc i64 %86 to i32
  %88 = load i32, i32* @KM_SLEEP, align 4
  %89 = call i8* @kmem_zalloc(i32 %87, i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %90, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 2), align 8
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 2), align 8
  %92 = icmp ne %struct.TYPE_8__* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %108, %77
  %96 = load i32, i32* %2, align 4
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 0), align 8
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @fasttrap_provs, i32 0, i32 2), align 8
  %101 = load i32, i32* %2, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* @fasttrap_lck_grp, align 4
  %106 = load i32, i32* @fasttrap_lck_attr, align 4
  %107 = call i32 @lck_mtx_init(i32* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %99
  %109 = load i32, i32* %2, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %2, align 4
  br label %95

111:                                              ; preds = %95
  %112 = load i32, i32* @FASTTRAP_PROCS_DEFAULT_SIZE, align 4
  store i32 %112, i32* %1, align 4
  %113 = load i32, i32* %1, align 4
  %114 = load i32, i32* %1, align 4
  %115 = sub nsw i32 %114, 1
  %116 = and i32 %113, %115
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %1, align 4
  store i32 %119, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  br label %124

120:                                              ; preds = %111
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @fasttrap_highbit(i32 %121)
  %123 = shl i32 1, %122
  store i32 %123, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  br label %124

124:                                              ; preds = %120, %118
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %126 = icmp sgt i32 %125, 0
  %127 = zext i1 %126 to i32
  %128 = call i32 @ASSERT(i32 %127)
  %129 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %130 = sub nsw i32 %129, 1
  store i32 %130, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 1), align 4
  %131 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %132 = sext i32 %131 to i64
  %133 = mul i64 %132, 4
  %134 = trunc i64 %133 to i32
  %135 = load i32, i32* @KM_SLEEP, align 4
  %136 = call i8* @kmem_zalloc(i32 %134, i32 %135)
  %137 = bitcast i8* %136 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %137, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 2), align 8
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 2), align 8
  %139 = icmp ne %struct.TYPE_9__* %138, null
  %140 = zext i1 %139 to i32
  %141 = call i32 @ASSERT(i32 %140)
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %155, %124
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 0), align 8
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %146, label %158

146:                                              ; preds = %142
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @fasttrap_procs, i32 0, i32 2), align 8
  %148 = load i32, i32* %2, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = load i32, i32* @fasttrap_lck_grp, align 4
  %153 = load i32, i32* @fasttrap_lck_attr, align 4
  %154 = call i32 @lck_mtx_init(i32* %151, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %146
  %156 = load i32, i32* %2, align 4
  %157 = add i32 %156, 1
  store i32 %157, i32* %2, align 4
  br label %142

158:                                              ; preds = %142
  %159 = call i32 @dtrace_meta_register(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* @fasttrap_mops, i32* null, i32* @fasttrap_meta_id)
  ret void
}

declare dso_local i32 @fasttrap_highbit(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i8* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @lck_mtx_init(i32*, i32, i32) #1

declare dso_local i32 @dtrace_meta_register(i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
