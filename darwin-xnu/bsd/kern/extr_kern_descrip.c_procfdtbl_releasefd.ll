; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_procfdtbl_releasefd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_procfdtbl_releasefd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.fileproc** }
%struct.fileproc = type { i32 }

@UF_RESERVED = common dso_local global i32 0, align 4
@UF_RESVWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @procfdtbl_releasefd(%struct.proc* %0, i32 %1, %struct.fileproc* %2) #0 {
  %4 = alloca %struct.proc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileproc*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.fileproc* %2, %struct.fileproc** %6, align 8
  %7 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %8 = icmp ne %struct.fileproc* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %3
  %10 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %11 = load %struct.proc*, %struct.proc** %4, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.fileproc**, %struct.fileproc*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %15, i64 %17
  store %struct.fileproc* %10, %struct.fileproc** %18, align 8
  br label %19

19:                                               ; preds = %9, %3
  %20 = load i32, i32* @UF_RESERVED, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.proc*, %struct.proc** %4, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %21
  store i32 %31, i32* %29, align 4
  %32 = load %struct.proc*, %struct.proc** %4, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @UF_RESVWAIT, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @UF_RESVWAIT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %19
  %46 = load i32, i32* @UF_RESVWAIT, align 4
  %47 = xor i32 %46, -1
  %48 = load %struct.proc*, %struct.proc** %4, align 8
  %49 = getelementptr inbounds %struct.proc, %struct.proc* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, %47
  store i32 %57, i32* %55, align 4
  %58 = load %struct.proc*, %struct.proc** %4, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 0
  %60 = call i32 @wakeup(%struct.TYPE_2__** %59)
  br label %61

61:                                               ; preds = %45, %19
  ret void
}

declare dso_local i32 @wakeup(%struct.TYPE_2__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
