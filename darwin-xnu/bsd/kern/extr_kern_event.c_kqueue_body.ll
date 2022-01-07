; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_body.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kqueue_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.kqueue = type { i32 }
%struct.fileproc = type { i32, %struct.kqueue*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@kqueueops = common dso_local global i32 0, align 4
@UF_EXCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kqueue_body(%struct.proc* %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.kqueue*, align 8
  %11 = alloca %struct.fileproc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.proc*, %struct.proc** %6, align 8
  %15 = call i32 (...) @vfs_context_current()
  %16 = load i32, i32* %7, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @falloc_withalloc(%struct.proc* %14, %struct.fileproc** %11, i32* %12, i32 %15, i32 %16, i8* %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %65

23:                                               ; preds = %4
  %24 = load %struct.proc*, %struct.proc** %6, align 8
  %25 = call %struct.kqueue* @kqueue_alloc(%struct.proc* %24, i32 0)
  store %struct.kqueue* %25, %struct.kqueue** %10, align 8
  %26 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %27 = icmp eq %struct.kqueue* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load %struct.proc*, %struct.proc** %6, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %32 = call i32 @fp_free(%struct.proc* %29, i32 %30, %struct.fileproc* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %5, align 4
  br label %65

34:                                               ; preds = %23
  %35 = load i32, i32* @FREAD, align 4
  %36 = load i32, i32* @FWRITE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %39 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %41 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %40, i32 0, i32 2
  store i32* @kqueueops, i32** %41, align 8
  %42 = load %struct.kqueue*, %struct.kqueue** %10, align 8
  %43 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %44 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %43, i32 0, i32 1
  store %struct.kqueue* %42, %struct.kqueue** %44, align 8
  %45 = load %struct.proc*, %struct.proc** %6, align 8
  %46 = call i32 @proc_fdlock(%struct.proc* %45)
  %47 = load i32, i32* @UF_EXCLOSE, align 4
  %48 = load %struct.proc*, %struct.proc** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32* @fdflags(%struct.proc* %48, i32 %49)
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 4
  %53 = load %struct.proc*, %struct.proc** %6, align 8
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @procfdtbl_releasefd(%struct.proc* %53, i32 %54, i32* null)
  %56 = load %struct.proc*, %struct.proc** %6, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %59 = call i32 @fp_drop(%struct.proc* %56, i32 %57, %struct.fileproc* %58, i32 1)
  %60 = load %struct.proc*, %struct.proc** %6, align 8
  %61 = call i32 @proc_fdunlock(%struct.proc* %60)
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %34, %28, %21
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @falloc_withalloc(%struct.proc*, %struct.fileproc**, i32*, i32, i32, i8*) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local %struct.kqueue* @kqueue_alloc(%struct.proc*, i32) #1

declare dso_local i32 @fp_free(%struct.proc*, i32, %struct.fileproc*) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32* @fdflags(%struct.proc*, i32) #1

declare dso_local i32 @procfdtbl_releasefd(%struct.proc*, i32, i32*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
