; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csvnode_get_teamid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csvnode_get_teamid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.cs_blob = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @csvnode_get_teamid(%struct.vnode* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cs_blob*, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.vnode*, %struct.vnode** %4, align 8
  %8 = icmp eq %struct.vnode* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i8* null, i8** %3, align 8
  br label %20

10:                                               ; preds = %2
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode* %11, i32 -1, i32 %12)
  store %struct.cs_blob* %13, %struct.cs_blob** %6, align 8
  %14 = load %struct.cs_blob*, %struct.cs_blob** %6, align 8
  %15 = icmp eq %struct.cs_blob* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i8* null, i8** %3, align 8
  br label %20

17:                                               ; preds = %10
  %18 = load %struct.cs_blob*, %struct.cs_blob** %6, align 8
  %19 = call i8* @csblob_get_teamid(%struct.cs_blob* %18)
  store i8* %19, i8** %3, align 8
  br label %20

20:                                               ; preds = %17, %16, %9
  %21 = load i8*, i8** %3, align 8
  ret i8* %21
}

declare dso_local %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode*, i32, i32) #1

declare dso_local i8* @csblob_get_teamid(%struct.cs_blob*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
