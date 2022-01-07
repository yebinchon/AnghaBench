; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_prot.c_fmt_stats.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_prot.c_fmt_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.rusage = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }

@RUSAGE_SELF = common dso_local global i32 0, align 4
@STATS_FMT = common dso_local global i8* null, align 8
@global_stat = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@ready_ct = common dso_local global i32 0, align 4
@op_ct = common dso_local global i32* null, align 8
@OP_PUT = common dso_local global i64 0, align 8
@OP_PEEKJOB = common dso_local global i64 0, align 8
@OP_PEEK_READY = common dso_local global i64 0, align 8
@OP_PEEK_DELAYED = common dso_local global i64 0, align 8
@OP_PEEK_BURIED = common dso_local global i64 0, align 8
@OP_RESERVE = common dso_local global i64 0, align 8
@OP_RESERVE_TIMEOUT = common dso_local global i64 0, align 8
@OP_DELETE = common dso_local global i64 0, align 8
@OP_RELEASE = common dso_local global i64 0, align 8
@OP_USE = common dso_local global i64 0, align 8
@OP_WATCH = common dso_local global i64 0, align 8
@OP_IGNORE = common dso_local global i64 0, align 8
@OP_BURY = common dso_local global i64 0, align 8
@OP_KICK = common dso_local global i64 0, align 8
@OP_TOUCH = common dso_local global i64 0, align 8
@OP_STATS = common dso_local global i64 0, align 8
@OP_STATSJOB = common dso_local global i64 0, align 8
@OP_STATS_TUBE = common dso_local global i64 0, align 8
@OP_LIST_TUBES = common dso_local global i64 0, align 8
@OP_LIST_TUBE_USED = common dso_local global i64 0, align 8
@OP_LIST_TUBES_WATCHED = common dso_local global i64 0, align 8
@OP_PAUSE_TUBE = common dso_local global i64 0, align 8
@timeout_ct = common dso_local global i32 0, align 4
@job_data_size_limit = common dso_local global i32 0, align 4
@tubes = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@version = common dso_local global i32 0, align 4
@drain_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@instance_hex = common dso_local global i32 0, align 4
@node_info = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*)* @fmt_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fmt_stats(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.rusage, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %9, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %20, %3
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = icmp ne %struct.TYPE_11__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 3
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %33, %27
  %41 = load i32, i32* @RUSAGE_SELF, align 4
  %42 = call i32 @getrusage(i32 %41, %struct.rusage* %10)
  %43 = load i8*, i8** %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = load i8*, i8** @STATS_FMT, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @global_stat, i32 0, i32 4), align 4
  %47 = load i32, i32* @ready_ct, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @global_stat, i32 0, i32 3), align 4
  %49 = call i32 (...) @get_delayed_job_ct()
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @global_stat, i32 0, i32 2), align 4
  %51 = load i32*, i32** @op_ct, align 8
  %52 = load i64, i64* @OP_PUT, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @op_ct, align 8
  %56 = load i64, i64* @OP_PEEKJOB, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** @op_ct, align 8
  %60 = load i64, i64* @OP_PEEK_READY, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32*, i32** @op_ct, align 8
  %64 = load i64, i64* @OP_PEEK_DELAYED, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** @op_ct, align 8
  %68 = load i64, i64* @OP_PEEK_BURIED, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** @op_ct, align 8
  %72 = load i64, i64* @OP_RESERVE, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** @op_ct, align 8
  %76 = load i64, i64* @OP_RESERVE_TIMEOUT, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** @op_ct, align 8
  %80 = load i64, i64* @OP_DELETE, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** @op_ct, align 8
  %84 = load i64, i64* @OP_RELEASE, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** @op_ct, align 8
  %88 = load i64, i64* @OP_USE, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** @op_ct, align 8
  %92 = load i64, i64* @OP_WATCH, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** @op_ct, align 8
  %96 = load i64, i64* @OP_IGNORE, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** @op_ct, align 8
  %100 = load i64, i64* @OP_BURY, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** @op_ct, align 8
  %104 = load i64, i64* @OP_KICK, align 8
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32*, i32** @op_ct, align 8
  %108 = load i64, i64* @OP_TOUCH, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** @op_ct, align 8
  %112 = load i64, i64* @OP_STATS, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** @op_ct, align 8
  %116 = load i64, i64* @OP_STATSJOB, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** @op_ct, align 8
  %120 = load i64, i64* @OP_STATS_TUBE, align 8
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** @op_ct, align 8
  %124 = load i64, i64* @OP_LIST_TUBES, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** @op_ct, align 8
  %128 = load i64, i64* @OP_LIST_TUBE_USED, align 8
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** @op_ct, align 8
  %132 = load i64, i64* @OP_LIST_TUBES_WATCHED, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** @op_ct, align 8
  %136 = load i64, i64* @OP_PAUSE_TUBE, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @timeout_ct, align 4
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @global_stat, i32 0, i32 1), align 4
  %141 = load i32, i32* @job_data_size_limit, align 4
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @tubes, i32 0, i32 0), align 4
  %143 = call i32 (...) @count_cur_conns()
  %144 = call i32 (...) @count_cur_producers()
  %145 = call i32 (...) @count_cur_workers()
  %146 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @global_stat, i32 0, i32 0), align 4
  %147 = call i32 (...) @count_tot_conns()
  %148 = call i64 (...) @getpid()
  %149 = load i32, i32* @version, align 4
  %150 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = trunc i64 %160 to i32
  %162 = getelementptr inbounds %struct.rusage, %struct.rusage* %10, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 (...) @uptime()
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i64, i64* @drain_mode, align 8
  %182 = icmp ne i64 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  %185 = load i32, i32* @instance_hex, align 4
  %186 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @node_info, i32 0, i32 2), align 4
  %187 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @node_info, i32 0, i32 1), align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @node_info, i32 0, i32 0), align 4
  %189 = call i32 @snprintf(i8* %43, i64 %44, i8* %45, i32 %46, i32 %47, i32 %48, i32 %49, i32 %50, i32 %54, i32 %58, i32 %62, i32 %66, i32 %70, i32 %74, i32 %78, i32 %82, i32 %86, i32 %90, i32 %94, i32 %98, i32 %102, i32 %106, i32 %110, i32 %114, i32 %118, i32 %122, i32 %126, i32 %130, i32 %134, i32 %138, i32 %139, i32 %140, i32 %141, i32 %142, i32 %143, i32 %144, i32 %145, i32 %146, i32 %147, i64 %148, i32 %149, i32 %153, i32 %157, i32 %161, i32 %165, i32 %166, i32 %167, i32 %168, i32 %172, i32 %176, i32 %180, i8* %184, i32 %185, i32 %186, i32 %187, i32 %188)
  ret i32 %189
}

declare dso_local i32 @getrusage(i32, %struct.rusage*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @get_delayed_job_ct(...) #1

declare dso_local i32 @count_cur_conns(...) #1

declare dso_local i32 @count_cur_producers(...) #1

declare dso_local i32 @count_cur_workers(...) #1

declare dso_local i32 @count_tot_conns(...) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @uptime(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
