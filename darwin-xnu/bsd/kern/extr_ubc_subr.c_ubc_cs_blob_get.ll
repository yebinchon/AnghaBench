; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_blob_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_cs_blob_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs_blob = type { i32, i32, i32, i32, %struct.cs_blob* }
%struct.vnode = type { %struct.ubc_info* }
%struct.ubc_info = type { %struct.cs_blob* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cs_blob* @ubc_cs_blob_get(%struct.vnode* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubc_info*, align 8
  %8 = alloca %struct.cs_blob*, align 8
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = call i32 @vnode_lock_spin(%struct.vnode* %10)
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = call i32 @UBCINFOEXISTS(%struct.vnode* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.cs_blob* null, %struct.cs_blob** %8, align 8
  br label %64

16:                                               ; preds = %3
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  %19 = load %struct.ubc_info*, %struct.ubc_info** %18, align 8
  store %struct.ubc_info* %19, %struct.ubc_info** %7, align 8
  %20 = load %struct.ubc_info*, %struct.ubc_info** %7, align 8
  %21 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %20, i32 0, i32 0
  %22 = load %struct.cs_blob*, %struct.cs_blob** %21, align 8
  store %struct.cs_blob* %22, %struct.cs_blob** %8, align 8
  br label %23

23:                                               ; preds = %59, %16
  %24 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %25 = icmp ne %struct.cs_blob* %24, null
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %31 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %63

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %42 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %40, %43
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %47 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp sge i32 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %53 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %63

57:                                               ; preds = %50, %39
  br label %58

58:                                               ; preds = %57, %36
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  %61 = getelementptr inbounds %struct.cs_blob, %struct.cs_blob* %60, i32 0, i32 4
  %62 = load %struct.cs_blob*, %struct.cs_blob** %61, align 8
  store %struct.cs_blob* %62, %struct.cs_blob** %8, align 8
  br label %23

63:                                               ; preds = %56, %35, %23
  br label %64

64:                                               ; preds = %63, %15
  %65 = load %struct.vnode*, %struct.vnode** %4, align 8
  %66 = call i32 @vnode_unlock(%struct.vnode* %65)
  %67 = load %struct.cs_blob*, %struct.cs_blob** %8, align 8
  ret %struct.cs_blob* %67
}

declare dso_local i32 @vnode_lock_spin(%struct.vnode*) #1

declare dso_local i32 @UBCINFOEXISTS(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
