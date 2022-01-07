; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_cdhash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_cdhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i64 }
%struct.vnode = type { i32 }
%struct.cs_blob = type { i32* }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@CS_CDHASH_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @csfg_get_cdhash(%struct.fileglob* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.fileglob*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.cs_blob*, align 8
  store %struct.fileglob* %0, %struct.fileglob** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %10 = load %struct.fileglob*, %struct.fileglob** %5, align 8
  %11 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %10)
  %12 = load i64, i64* @DTYPE_VNODE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32* null, i32** %4, align 8
  br label %39

15:                                               ; preds = %3
  %16 = load %struct.fileglob*, %struct.fileglob** %5, align 8
  %17 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.vnode*
  store %struct.vnode* %19, %struct.vnode** %8, align 8
  %20 = load %struct.vnode*, %struct.vnode** %8, align 8
  %21 = icmp eq %struct.vnode* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32* null, i32** %4, align 8
  br label %39

23:                                               ; preds = %15
  store %struct.cs_blob* null, %struct.cs_blob** %9, align 8
  %24 = load %struct.vnode*, %struct.vnode** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode* %24, i32 -1, i32 %25)
  store %struct.cs_blob* %26, %struct.cs_blob** %9, align 8
  %27 = icmp eq %struct.cs_blob* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32* null, i32** %4, align 8
  br label %39

29:                                               ; preds = %23
  %30 = load i64*, i64** %7, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* @CS_CDHASH_LEN, align 8
  %34 = load i64*, i64** %7, align 8
  store i64 %33, i64* %34, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.cs_blob*, %struct.cs_blob** %9, align 8
  %37 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %4, align 8
  br label %39

39:                                               ; preds = %35, %28, %22, %14
  %40 = load i32*, i32** %4, align 8
  ret i32* %40
}

declare dso_local i64 @FILEGLOB_DTYPE(%struct.fileglob*) #1

declare dso_local %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
