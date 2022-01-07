; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_check.c_mca_dump.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_machine_check.c_mca_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_8__* }

@mca_lock = common dso_local global i32 0, align 4
@mca_dump_state = common dso_local global i64 0, align 8
@CLEAR = common dso_local global i64 0, align 8
@DUMPING = common dso_local global i64 0, align 8
@LockTimeOut = common dso_local global i64 0, align 8
@real_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Machine-check capabilities: 0x%016qx\0A\00", align 1
@ia32_mcg_cap = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c" %d error-reporting banks\0A\00", align 1
@mca_error_bank_count = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Processor %d: IA32_MCG_STATUS: 0x%016qx\0A\00", align 1
@DUMPED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mca_dump() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = call %struct.TYPE_11__* (...) @current_cpu_datap()
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %1, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %10 = call i32 @mca_save_state(%struct.TYPE_8__* %9)
  %11 = call i32 @simple_lock(i32* @mca_lock)
  %12 = load i64, i64* @mca_dump_state, align 8
  %13 = load i64, i64* @CLEAR, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %24

15:                                               ; preds = %0
  %16 = call i32 @simple_unlock(i32* @mca_lock)
  br label %17

17:                                               ; preds = %21, %15
  %18 = load i64, i64* @mca_dump_state, align 8
  %19 = load i64, i64* @DUMPING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 (...) @cpu_pause()
  br label %17

23:                                               ; preds = %17
  br label %104

24:                                               ; preds = %0
  %25 = load i64, i64* @DUMPING, align 8
  store i64 %25, i64* @mca_dump_state, align 8
  %26 = call i32 @simple_unlock(i32* @mca_lock)
  %27 = call i64 (...) @mach_absolute_time()
  %28 = load i64, i64* @LockTimeOut, align 8
  %29 = add nsw i64 %27, %28
  store i64 %29, i64* %2, align 8
  br label %30

30:                                               ; preds = %50, %48, %24
  %31 = call i64 (...) @mach_absolute_time()
  %32 = load i64, i64* %2, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @real_ncpus, align 4
  %37 = icmp ult i32 %35, %36
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %53

40:                                               ; preds = %38
  %41 = load i32, i32* %3, align 4
  %42 = call %struct.TYPE_12__* @cpu_datap(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %40
  %49 = call i32 (...) @cpu_pause()
  br label %30

50:                                               ; preds = %40
  %51 = load i32, i32* %3, align 4
  %52 = add i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %30

53:                                               ; preds = %38
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ia32_mcg_cap, i32 0, i32 0), align 4
  %55 = call i32 (i8*, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = call i32 (...) @mca_report_cpu_info()
  %57 = load i32, i32* @mca_error_bank_count, align 4
  %58 = call i32 (i8*, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %99, %53
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @real_ncpus, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %59
  %64 = load i32, i32* %3, align 4
  %65 = call %struct.TYPE_12__* @cpu_datap(i32 %64)
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  store %struct.TYPE_8__* %67, %struct.TYPE_8__** %4, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = icmp eq %struct.TYPE_8__* %68, null
  br i1 %69, label %87, label %70

70:                                               ; preds = %63
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FALSE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %87, label %76

76:                                               ; preds = %70
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %82, %76, %70, %63
  br label %99

88:                                               ; preds = %82
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = bitcast %struct.TYPE_9__* %5 to i8*
  %92 = bitcast %struct.TYPE_9__* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 8, i1 false)
  %93 = load i32, i32* %3, align 4
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i8*, i32, ...) @paniclog_append_noflush(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %93, i64 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = call i32 @mca_cpu_dump_error_banks(%struct.TYPE_8__* %97)
  br label %99

99:                                               ; preds = %88, %87
  %100 = load i32, i32* %3, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %59

102:                                              ; preds = %59
  %103 = load i64, i64* @DUMPED, align 8
  store i64 %103, i64* @mca_dump_state, align 8
  br label %104

104:                                              ; preds = %102, %23
  ret void
}

declare dso_local %struct.TYPE_11__* @current_cpu_datap(...) #1

declare dso_local i32 @mca_save_state(%struct.TYPE_8__*) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @cpu_pause(...) #1

declare dso_local i64 @mach_absolute_time(...) #1

declare dso_local %struct.TYPE_12__* @cpu_datap(i32) #1

declare dso_local i32 @paniclog_append_noflush(i8*, i32, ...) #1

declare dso_local i32 @mca_report_cpu_info(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mca_cpu_dump_error_banks(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
