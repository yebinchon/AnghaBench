; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_prod_signed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_prod_signed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i64 }
%struct.ubc_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { %struct.ubc_info* }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@CS_DEV_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csfg_get_prod_signed(%struct.fileglob* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fileglob*, align 8
  %4 = alloca %struct.ubc_info*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  store %struct.fileglob* %0, %struct.fileglob** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %8 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %7)
  %9 = load i64, i64* @DTYPE_VNODE, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %14 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.vnode*
  store %struct.vnode* %16, %struct.vnode** %5, align 8
  %17 = load %struct.vnode*, %struct.vnode** %5, align 8
  %18 = icmp eq %struct.vnode* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %54

20:                                               ; preds = %12
  %21 = load %struct.vnode*, %struct.vnode** %5, align 8
  %22 = call i32 @vnode_lock(%struct.vnode* %21)
  %23 = load %struct.vnode*, %struct.vnode** %5, align 8
  %24 = call i32 @UBCINFOEXISTS(%struct.vnode* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %50

27:                                               ; preds = %20
  %28 = load %struct.vnode*, %struct.vnode** %5, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 0
  %30 = load %struct.ubc_info*, %struct.ubc_info** %29, align 8
  store %struct.ubc_info* %30, %struct.ubc_info** %4, align 8
  %31 = load %struct.ubc_info*, %struct.ubc_info** %4, align 8
  %32 = icmp eq %struct.ubc_info* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %50

34:                                               ; preds = %27
  %35 = load %struct.ubc_info*, %struct.ubc_info** %4, align 8
  %36 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp eq %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %50

40:                                               ; preds = %34
  %41 = load %struct.ubc_info*, %struct.ubc_info** %4, align 8
  %42 = getelementptr inbounds %struct.ubc_info, %struct.ubc_info* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CS_DEV_CODE, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %40, %39, %33, %26
  %51 = load %struct.vnode*, %struct.vnode** %5, align 8
  %52 = call i32 @vnode_unlock(%struct.vnode* %51)
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %50, %19, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
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
