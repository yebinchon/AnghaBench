; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_dump_trace_to_file.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kdbg_dump_trace_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }

@kdebug_enable = common dso_local global i32 0, align 4
@KDEBUG_ENABLE_TRACE = common dso_local global i32 0, align 4
@kd_ctrl_page = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@TRACE_WRITING_EVENTS = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@nkdbufs = common dso_local global i32 0, align 4
@RAW_VERSION1 = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@RAW_file_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdbg_dump_trace_to_file(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 8
  store i8* %0, i8** %2, align 8
  %8 = call i32 (...) @ktrace_lock()
  %9 = load i32, i32* @kdebug_enable, align 4
  %10 = load i32, i32* @KDEBUG_ENABLE_TRACE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %81

14:                                               ; preds = %1
  %15 = call i64 (...) @ktrace_get_owning_pid()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  store i32 0, i32* @kdebug_enable, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 8
  %18 = call i32 (...) @commpage_update_kdebug_state()
  br label %81

19:                                               ; preds = %14
  %20 = load i32, i32* @TRACE_WRITING_EVENTS, align 4
  %21 = load i32, i32* @DBG_FUNC_START, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @KDBG_RELEASE(i32 %22)
  store i32 0, i32* @kdebug_enable, align 4
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @kd_ctrl_page, i32 0, i32 0), align 8
  %24 = call i32 (...) @commpage_update_kdebug_state()
  %25 = call i32 (...) @vfs_context_kernel()
  store i32 %25, i32* %3, align 4
  %26 = load i8*, i8** %2, align 8
  %27 = load i32, i32* @O_CREAT, align 4
  %28 = load i32, i32* @FWRITE, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @O_NOFOLLOW, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %3, align 4
  %33 = call i64 @vnode_open(i8* %26, i32 %31, i32 384, i32 0, i32* %4, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %19
  br label %81

36:                                               ; preds = %19
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @kdbg_write_thread_map(i32 %37, i32 %38)
  %40 = load i32, i32* @nkdbufs, align 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 24
  store i64 %42, i64* %5, align 8
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @RAW_VERSION1, align 4
  %46 = call i32 @kdbg_read(i32 0, i64* %5, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %36
  br label %74

50:                                               ; preds = %36
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @MNT_WAIT, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @VNOP_FSYNC(i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %56 = load i32, i32* @TRACE_WRITING_EVENTS, align 4
  %57 = load i32, i32* @DBG_FUNC_END, align 4
  %58 = or i32 %56, %57
  store i32 %58, i32* %55, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 2
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 3
  %64 = call i32 (...) @current_thread()
  %65 = call i32 @thread_tid(i32 %64)
  store i32 %65, i32* %63, align 4
  %66 = call i32 (...) @kdbg_timestamp()
  %67 = call i32 (...) @cpu_number()
  %68 = call i32 @kdbg_set_timestamp_and_cpu(%struct.TYPE_4__* %7, i32 %66, i32 %67)
  %69 = ptrtoint %struct.TYPE_4__* %7 to i32
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load i32, i32* @RAW_file_offset, align 4
  %73 = call i32 @kdbg_write_to_vnode(i32 %69, i32 24, i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %50, %49
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @FWRITE, align 4
  %77 = load i32, i32* %3, align 4
  %78 = call i32 @vnode_close(i32 %75, i32 %76, i32 %77)
  %79 = call i32 (...) @current_proc()
  %80 = call i32 @sync(i32 %79, i8* null, i32* null)
  br label %81

81:                                               ; preds = %74, %35, %17, %13
  %82 = call i32 (...) @ktrace_unlock()
  ret void
}

declare dso_local i32 @ktrace_lock(...) #1

declare dso_local i64 @ktrace_get_owning_pid(...) #1

declare dso_local i32 @commpage_update_kdebug_state(...) #1

declare dso_local i32 @KDBG_RELEASE(i32) #1

declare dso_local i32 @vfs_context_kernel(...) #1

declare dso_local i64 @vnode_open(i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kdbg_write_thread_map(i32, i32) #1

declare dso_local i32 @kdbg_read(i32, i64*, i32, i32, i32) #1

declare dso_local i32 @VNOP_FSYNC(i32, i32, i32) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @kdbg_set_timestamp_and_cpu(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @kdbg_timestamp(...) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @kdbg_write_to_vnode(i32, i32, i32, i32, i32) #1

declare dso_local i32 @vnode_close(i32, i32, i32) #1

declare dso_local i32 @sync(i32, i8*, i32*) #1

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @ktrace_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
