; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fileproc_drain.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fileproc_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.fileproc = type { i32, i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.fileproc*, %struct.vfs_context*)* }
%struct.vfs_context = type { i32, i32 }

@FP_INSELECT = common dso_local global i32 0, align 4
@NO_EVENT64 = common dso_local global i32 0, align 4
@THREAD_INTERRUPTED = common dso_local global i32 0, align 4
@WAITQ_ALL_PRIORITIES = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"bad wait queue for waitq_wakeup64_all %p (fp:%p)\00", align 1
@FP_SELCONFLICT = common dso_local global i32 0, align 4
@select_conflict_queue = common dso_local global %struct.waitq zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"bad select_conflict_queue\00", align 1
@PRIBIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"fpdrain\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fileproc_drain(%struct.TYPE_8__* %0, %struct.fileproc* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.fileproc*, align 8
  %5 = alloca %struct.vfs_context, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.fileproc* %1, %struct.fileproc** %4, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @proc_thread(%struct.TYPE_8__* %6)
  %8 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %5, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %10 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %5, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %16 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  br label %19

19:                                               ; preds = %90, %2
  %20 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %21 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %99

24:                                               ; preds = %19
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = call i32 @lck_mtx_convert_spin(i32* %26)
  %28 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %29 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %28, i32 0, i32 2
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32 (%struct.fileproc*, %struct.vfs_context*)*, i32 (%struct.fileproc*, %struct.vfs_context*)** %33, align 8
  %35 = icmp ne i32 (%struct.fileproc*, %struct.vfs_context*)* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %24
  %37 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %38 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32 (%struct.fileproc*, %struct.vfs_context*)*, i32 (%struct.fileproc*, %struct.vfs_context*)** %42, align 8
  %44 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %45 = call i32 %43(%struct.fileproc* %44, %struct.vfs_context* %5)
  br label %46

46:                                               ; preds = %36, %24
  %47 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %48 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FP_INSELECT, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* @FP_INSELECT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %46
  %55 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %56 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to %struct.waitq*
  %59 = load i32, i32* @NO_EVENT64, align 4
  %60 = load i32, i32* @THREAD_INTERRUPTED, align 4
  %61 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %62 = call i64 @waitq_wakeup64_all(%struct.waitq* %58, i32 %59, i32 %60, i32 %61)
  %63 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %54
  %66 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %67 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %70 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %68, %struct.fileproc* %69)
  br label %71

71:                                               ; preds = %65, %54
  br label %72

72:                                               ; preds = %71, %46
  %73 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %74 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FP_SELCONFLICT, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @FP_SELCONFLICT, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %72
  %81 = load i32, i32* @NO_EVENT64, align 4
  %82 = load i32, i32* @THREAD_INTERRUPTED, align 4
  %83 = load i32, i32* @WAITQ_ALL_PRIORITIES, align 4
  %84 = call i64 @waitq_wakeup64_all(%struct.waitq* @select_conflict_queue, i32 %81, i32 %82, i32 %83)
  %85 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %80
  br label %90

90:                                               ; preds = %89, %72
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 4
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 1
  %97 = load i32, i32* @PRIBIO, align 4
  %98 = call i32 @msleep(i32* %94, i32* %96, i32 %97, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* null)
  br label %19

99:                                               ; preds = %19
  %100 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %101 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @FP_SELCONFLICT, align 4
  %104 = and i32 %102, %103
  %105 = load i32, i32* @FP_SELCONFLICT, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load i32, i32* @FP_SELCONFLICT, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %111 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %107, %99
  ret void
}

declare dso_local i32 @proc_thread(%struct.TYPE_8__*) #1

declare dso_local i32 @lck_mtx_convert_spin(i32*) #1

declare dso_local i64 @waitq_wakeup64_all(%struct.waitq*, i32, i32, i32) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
