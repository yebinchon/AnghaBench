; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_get_cs_blobs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_get_cs_blobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_blob = type { i32 }
%struct.vnode = type { %struct.ubc_info* }
%struct.ubc_info = type { %struct.cs_blob* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cs_blob* @ubc_get_cs_blobs(%struct.vnode* %0) #0 {
  %2 = alloca %struct.vnode*, align 8
  %3 = alloca %struct.ubc_info*, align 8
  %4 = alloca %struct.cs_blob*, align 8
  store %struct.vnode* %0, %struct.vnode** %2, align 8
  %5 = load %struct.vnode*, %struct.vnode** %2, align 8
  %6 = call i32 @UBCINFOEXISTS(%struct.vnode* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store %struct.cs_blob* null, %struct.cs_blob** %4, align 8
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.vnode*, %struct.vnode** %2, align 8
  %11 = getelementptr inbounds %struct.vnode, %struct.vnode* %10, i32 0, i32 0
  %12 = load %struct.ubc_info*, %struct.ubc_info** %11, align 8
  store %struct.ubc_info* %12, %struct.ubc_info** %3, align 8
  %13 = load %struct.ubc_info*, %struct.ubc_info** %3, align 8
  %14 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %13, i32 0, i32 0
  %15 = load %struct.cs_blob*, %struct.cs_blob** %14, align 8
  store %struct.cs_blob* %15, %struct.cs_blob** %4, align 8
  br label %16

16:                                               ; preds = %9, %8
  %17 = load %struct.cs_blob*, %struct.cs_blob** %4, align 8
  ret %struct.cs_blob* %17
}

declare dso_local i32 @UBCINFOEXISTS(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
