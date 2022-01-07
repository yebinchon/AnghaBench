; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fg_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fg_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i32, i32, i32* }

@nfiles = common dso_local global i32 0, align 4
@file_lck_grp = common dso_local global i32 0, align 4
@M_FILEGLOB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fg_free(%struct.fileglob* %0) #0 {
  %2 = alloca %struct.fileglob*, align 8
  store %struct.fileglob* %0, %struct.fileglob** %2, align 8
  %3 = call i32 @OSAddAtomic(i32 -1, i32* @nfiles)
  %4 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %5 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %10 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @fg_vn_data_free(i32* %11)
  %13 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %14 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %8, %1
  %16 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %17 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @IS_VALID_CRED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %23 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %22, i32 0, i32 1
  %24 = call i32 @kauth_cred_unref(i32* %23)
  br label %25

25:                                               ; preds = %21, %15
  %26 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %27 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %26, i32 0, i32 0
  %28 = load i32, i32* @file_lck_grp, align 4
  %29 = call i32 @lck_mtx_destroy(i32* %27, i32 %28)
  %30 = load %struct.fileglob*, %struct.fileglob** %2, align 8
  %31 = load i32, i32* @M_FILEGLOB, align 4
  %32 = call i32 @FREE_ZONE(%struct.fileglob* %30, i32 16, i32 %31)
  ret void
}

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @fg_vn_data_free(i32*) #1

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @FREE_ZONE(%struct.fileglob*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
