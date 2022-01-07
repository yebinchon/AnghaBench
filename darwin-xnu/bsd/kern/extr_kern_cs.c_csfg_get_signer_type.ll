; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_signer_type.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_signer_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i64 }
%struct.ubc_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { %struct.ubc_info* }

@CS_SIGNER_TYPE_UNKNOWN = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csfg_get_signer_type(%struct.fileglob* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fileglob*, align 8
  %4 = alloca %struct.ubc_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  store %struct.fileglob* %0, %struct.fileglob** %3, align 8
  %7 = load i32, i32* @CS_SIGNER_TYPE_UNKNOWN, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %9 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %8)
  %10 = load i64, i64* @DTYPE_VNODE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @CS_SIGNER_TYPE_UNKNOWN, align 4
  store i32 %13, i32* %2, align 4
  br label %53

14:                                               ; preds = %1
  %15 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %16 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.vnode*
  store %struct.vnode* %18, %struct.vnode** %6, align 8
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = icmp eq %struct.vnode* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @CS_SIGNER_TYPE_UNKNOWN, align 4
  store i32 %22, i32* %2, align 4
  br label %53

23:                                               ; preds = %14
  %24 = load %struct.vnode*, %struct.vnode** %6, align 8
  %25 = call i32 @vnode_lock(%struct.vnode* %24)
  %26 = load %struct.vnode*, %struct.vnode** %6, align 8
  %27 = call i32 @UBCINFOEXISTS(%struct.vnode* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %49

30:                                               ; preds = %23
  %31 = load %struct.vnode*, %struct.vnode** %6, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load %struct.ubc_info*, %struct.ubc_info** %32, align 8
  store %struct.ubc_info* %33, %struct.ubc_info** %4, align 8
  %34 = load %struct.ubc_info*, %struct.ubc_info** %4, align 8
  %35 = icmp eq %struct.ubc_info* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %49

37:                                               ; preds = %30
  %38 = load %struct.ubc_info*, %struct.ubc_info** %4, align 8
  %39 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = icmp eq %struct.TYPE_2__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %49

43:                                               ; preds = %37
  %44 = load %struct.ubc_info*, %struct.ubc_info** %4, align 8
  %45 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %42, %36, %29
  %50 = load %struct.vnode*, %struct.vnode** %6, align 8
  %51 = call i32 @vnode_unlock(%struct.vnode* %50)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %49, %21, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @FILEGLOB_DTYPE(%struct.fileglob*) #1

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i32 @UBCINFOEXISTS(%struct.vnode*) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
