; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_path.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_cs.c_csfg_get_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i64 }
%struct.vnode = type { i32 }

@DTYPE_VNODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csfg_get_path(%struct.fileglob* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fileglob*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.vnode*, align 8
  store %struct.fileglob* %0, %struct.fileglob** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.vnode* null, %struct.vnode** %8, align 8
  %9 = load %struct.fileglob*, %struct.fileglob** %5, align 8
  %10 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %9)
  %11 = load i64, i64* @DTYPE_VNODE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

14:                                               ; preds = %3
  %15 = load %struct.fileglob*, %struct.fileglob** %5, align 8
  %16 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.vnode*
  store %struct.vnode* %18, %struct.vnode** %8, align 8
  %19 = load %struct.vnode*, %struct.vnode** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @vn_getpath(%struct.vnode* %19, i8* %20, i32* %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %14, %13
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i64 @FILEGLOB_DTYPE(%struct.fileglob*) #1

declare dso_local i32 @vn_getpath(%struct.vnode*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
