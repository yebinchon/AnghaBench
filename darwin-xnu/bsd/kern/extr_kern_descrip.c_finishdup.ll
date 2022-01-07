; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_finishdup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_finishdup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedesc = type { i32*, i64*, i32 }
%struct.fileproc = type { i32 }

@UF_RESERVED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @finishdup(i32 %0, %struct.filedesc* %1, i32 %2, i32 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.filedesc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.fileproc*, align 8
  %15 = alloca %struct.fileproc*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.filedesc* %1, %struct.filedesc** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %16 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %17 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.fileproc*
  store %struct.fileproc* %23, %struct.fileproc** %15, align 8
  %24 = icmp eq %struct.fileproc* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %6
  %26 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %27 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UF_RESERVED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %25, %6
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @fdrelse(i32 %37, i32 %38)
  %40 = load i32, i32* @EBADF, align 4
  store i32 %40, i32* %7, align 4
  br label %86

41:                                               ; preds = %25
  %42 = load %struct.fileproc*, %struct.fileproc** %15, align 8
  %43 = call i32 @fg_ref(%struct.fileproc* %42)
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @proc_fdunlock(i32 %44)
  %46 = call %struct.fileproc* @fileproc_alloc_init(i32* null)
  store %struct.fileproc* %46, %struct.fileproc** %14, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @proc_fdlock(i32 %47)
  %49 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %50 = icmp eq %struct.fileproc* %49, null
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.fileproc*, %struct.fileproc** %15, align 8
  %53 = call i32 @fg_drop(%struct.fileproc* %52)
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @fdrelse(i32 %54, i32 %55)
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %7, align 4
  br label %86

58:                                               ; preds = %41
  %59 = load %struct.fileproc*, %struct.fileproc** %15, align 8
  %60 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %63 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %66 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load i32, i32* %11, align 4
  %71 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %72 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %58
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32* @fdflags(i32 %75, i32 %76)
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %74
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load %struct.fileproc*, %struct.fileproc** %14, align 8
  %83 = call i32 @procfdtbl_releasefd(i32 %80, i32 %81, %struct.fileproc* %82)
  %84 = load i32, i32* %11, align 4
  %85 = load i32*, i32** %13, align 8
  store i32 %84, i32* %85, align 4
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %73, %51, %36
  %87 = load i32, i32* %7, align 4
  ret i32 %87
}

declare dso_local i32 @fdrelse(i32, i32) #1

declare dso_local i32 @fg_ref(%struct.fileproc*) #1

declare dso_local i32 @proc_fdunlock(i32) #1

declare dso_local %struct.fileproc* @fileproc_alloc_init(i32*) #1

declare dso_local i32 @proc_fdlock(i32) #1

declare dso_local i32 @fg_drop(%struct.fileproc*) #1

declare dso_local i32* @fdflags(i32, i32) #1

declare dso_local i32 @procfdtbl_releasefd(i32, i32, %struct.fileproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
