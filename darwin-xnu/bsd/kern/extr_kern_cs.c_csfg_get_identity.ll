; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_identity.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i64 }
%struct.vnode = type { i32 }
%struct.cs_blob = type { i32 }

@DTYPE_VNODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @csfg_get_identity(%struct.fileglob* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fileglob*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.cs_blob*, align 8
  store %struct.fileglob* %0, %struct.fileglob** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.cs_blob* null, %struct.cs_blob** %7, align 8
  %8 = load %struct.fileglob*, %struct.fileglob** %4, align 8
  %9 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %8)
  %10 = load i64, i64* @DTYPE_VNODE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.fileglob*, %struct.fileglob** %4, align 8
  %15 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.vnode*
  store %struct.vnode* %17, %struct.vnode** %6, align 8
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = icmp eq %struct.vnode* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %31

21:                                               ; preds = %13
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode* %22, i32 -1, i32 %23)
  store %struct.cs_blob* %24, %struct.cs_blob** %7, align 8
  %25 = load %struct.cs_blob*, %struct.cs_blob** %7, align 8
  %26 = icmp eq %struct.cs_blob* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i8* null, i8** %3, align 8
  br label %31

28:                                               ; preds = %21
  %29 = load %struct.cs_blob*, %struct.cs_blob** %7, align 8
  %30 = call i8* @csblob_get_identity(%struct.cs_blob* %29)
  store i8* %30, i8** %3, align 8
  br label %31

31:                                               ; preds = %28, %27, %20, %12
  %32 = load i8*, i8** %3, align 8
  ret i8* %32
}

declare dso_local i64 @FILEGLOB_DTYPE(%struct.fileglob*) #1

declare dso_local %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode*, i32, i32) #1

declare dso_local i8* @csblob_get_identity(%struct.cs_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
