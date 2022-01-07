; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_no_paging_space_action.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_no_paging_space_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64 }
%struct.TYPE_7__ = type { i64, i32, i8* }
%struct.no_paging_space = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@last_no_space_action = common dso_local global %struct.timeval zeroinitializer, align 8
@PROC_ALLPROCLIST = common dso_local global i32 0, align 4
@proc_pcontrol_null = common dso_local global i32 0, align 4
@proc_pcontrol_filter = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global %struct.TYPE_7__* null, align 8
@.str = private unnamed_addr constant [80 x i8] c"low swap: killing largest compressed process with pid %d (%s) and size %llu MB\0A\00", align 1
@MB_SIZE = common dso_local global i32 0, align 4
@SIGKILL = common dso_local global i32 0, align 4
@max_kill_priority = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"low swap: unable to find any eligible processes to take action on\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @no_paging_space_action() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.no_paging_space, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = call i32 @microtime(%struct.timeval* %4)
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @last_no_space_action, i32 0, i32 0), align 8
  %9 = add nsw i64 %8, 5
  %10 = icmp sle i64 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %98

12:                                               ; preds = %0
  %13 = call i32 @bzero(%struct.no_paging_space* %3, i32 64)
  %14 = load i32, i32* @PROC_ALLPROCLIST, align 4
  %15 = load i32, i32* @proc_pcontrol_null, align 4
  %16 = load i32, i32* @proc_pcontrol_filter, align 4
  %17 = bitcast %struct.no_paging_space* %3 to i8*
  %18 = call i32 @proc_iterate(i32 %14, i32 %15, i8* null, i32 %16, i8* %17)
  %19 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %3, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (...) @vm_compressor_pages_compressed()
  %22 = mul nsw i32 %21, 50
  %23 = sdiv i32 %22, 100
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %60

25:                                               ; preds = %12
  %26 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %3, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.TYPE_7__* @proc_find(i32 %27)
  store %struct.TYPE_7__* %28, %struct.TYPE_7__** %2, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PROC_NULL, align 8
  %30 = icmp ne %struct.TYPE_7__* %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %25
  %32 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %3, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* @last_no_space_action to i8*), i8* align 8 %39, i64 8, i1 false)
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %3, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MB_SIZE, align 4
  %49 = sdiv i32 %47, %48
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %42, i8* %45, i32 %49)
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = load i32, i32* @SIGKILL, align 4
  %53 = call i32 @psignal(%struct.TYPE_7__* %51, i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = call i32 @proc_rele(%struct.TYPE_7__* %54)
  store i32 0, i32* %1, align 4
  br label %98

56:                                               ; preds = %31
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = call i32 @proc_rele(%struct.TYPE_7__* %57)
  br label %59

59:                                               ; preds = %56, %25
  br label %60

60:                                               ; preds = %59, %12
  %61 = load i32, i32* @max_kill_priority, align 4
  %62 = call i64 @memorystatus_get_proccnt_upto_priority(i32 %61)
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* @last_no_space_action to i8*), i8* align 8 %65, i64 8, i1 false)
  %66 = load i32, i32* @TRUE, align 4
  %67 = call i32 @memorystatus_kill_on_VM_compressor_space_shortage(i32 %66)
  store i32 1, i32* %1, align 4
  br label %98

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %3, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %95

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %3, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = call %struct.TYPE_7__* @proc_find(i32 %74)
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %2, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** @PROC_NULL, align 8
  %77 = icmp ne %struct.TYPE_7__* %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.no_paging_space, %struct.no_paging_space* %3, i32 0, i32 6
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %80, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* @last_no_space_action to i8*), i8* align 8 %86, i64 8, i1 false)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %88 = call i32 @proc_dopcontrol(%struct.TYPE_7__* %87)
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = call i32 @proc_rele(%struct.TYPE_7__* %89)
  store i32 1, i32* %1, align 4
  br label %98

91:                                               ; preds = %78
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = call i32 @proc_rele(%struct.TYPE_7__* %92)
  br label %94

94:                                               ; preds = %91, %72
  br label %95

95:                                               ; preds = %94, %68
  %96 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.timeval* @last_no_space_action to i8*), i8* align 8 %96, i64 8, i1 false)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %98

98:                                               ; preds = %95, %85, %64, %38, %11
  %99 = load i32, i32* %1, align 4
  ret i32 %99
}

declare dso_local i32 @microtime(%struct.timeval*) #1

declare dso_local i32 @bzero(%struct.no_paging_space*, i32) #1

declare dso_local i32 @proc_iterate(i32, i32, i8*, i32, i8*) #1

declare dso_local i32 @vm_compressor_pages_compressed(...) #1

declare dso_local %struct.TYPE_7__* @proc_find(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @psignal(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @proc_rele(%struct.TYPE_7__*) #1

declare dso_local i64 @memorystatus_get_proccnt_upto_priority(i32) #1

declare dso_local i32 @memorystatus_kill_on_VM_compressor_space_shortage(i32) #1

declare dso_local i32 @proc_dopcontrol(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
