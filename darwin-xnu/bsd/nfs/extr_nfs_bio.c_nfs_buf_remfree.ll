; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_remfree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_bio.c_nfs_buf_remfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsbuf = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@NFSNOLIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"nfsbuf not on free list\00", align 1
@NB_DELWRI = common dso_local global i32 0, align 4
@nfsbufdelwricnt = common dso_local global i32 0, align 4
@nfsbufdelwri = common dso_local global i32 0, align 4
@nb_free = common dso_local global i32 0, align 4
@NB_META = common dso_local global i32 0, align 4
@nfsbuffreemetacnt = common dso_local global i32 0, align 4
@nfsbuffreemeta = common dso_local global i32 0, align 4
@nfsbuffreecnt = common dso_local global i32 0, align 4
@nfsbuffree = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_buf_remfree(%struct.nfsbuf* %0) #0 {
  %2 = alloca %struct.nfsbuf*, align 8
  store %struct.nfsbuf* %0, %struct.nfsbuf** %2, align 8
  %3 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %4 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NFSNOLIST, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %1
  %12 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %13 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NB_DELWRI, align 4
  %16 = call i64 @ISSET(i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %11
  %19 = load i32, i32* @nfsbufdelwricnt, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @nfsbufdelwricnt, align 4
  %21 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %22 = load i32, i32* @nb_free, align 4
  %23 = call i32 @TAILQ_REMOVE(i32* @nfsbufdelwri, %struct.nfsbuf* %21, i32 %22)
  br label %44

24:                                               ; preds = %11
  %25 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %26 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NB_META, align 4
  %29 = call i64 @ISSET(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @nfsbuffreemetacnt, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* @nfsbuffreemetacnt, align 4
  %34 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %35 = load i32, i32* @nb_free, align 4
  %36 = call i32 @TAILQ_REMOVE(i32* @nfsbuffreemeta, %struct.nfsbuf* %34, i32 %35)
  br label %43

37:                                               ; preds = %24
  %38 = load i32, i32* @nfsbuffreecnt, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* @nfsbuffreecnt, align 4
  %40 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %41 = load i32, i32* @nb_free, align 4
  %42 = call i32 @TAILQ_REMOVE(i32* @nfsbuffree, %struct.nfsbuf* %40, i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %43, %18
  %45 = load i64, i64* @NFSNOLIST, align 8
  %46 = load %struct.nfsbuf*, %struct.nfsbuf** %2, align 8
  %47 = getelementptr inbounds %struct.nfsbuf, %struct.nfsbuf* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = call i32 (...) @NFSBUFCNTCHK()
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @ISSET(i32, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nfsbuf*, i32) #1

declare dso_local i32 @NFSBUFCNTCHK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
