; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_file.c_mac_file_getxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_file.c_mac_file_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i64 }
%struct.vnode = type { i32 }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@EFTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_file_getxattr(%struct.fileglob* %0, i8* %1, i8* %2, i64 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fileglob*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.vnode*, align 8
  store %struct.fileglob* %0, %struct.fileglob** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  store %struct.vnode* null, %struct.vnode** %12, align 8
  %13 = load %struct.fileglob*, %struct.fileglob** %7, align 8
  %14 = icmp ne %struct.fileglob* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %5
  %16 = load %struct.fileglob*, %struct.fileglob** %7, align 8
  %17 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %16)
  %18 = load i64, i64* @DTYPE_VNODE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %15, %5
  %21 = load i32, i32* @EFTYPE, align 4
  store i32 %21, i32* %6, align 4
  br label %33

22:                                               ; preds = %15
  %23 = load %struct.fileglob*, %struct.fileglob** %7, align 8
  %24 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.vnode*
  store %struct.vnode* %26, %struct.vnode** %12, align 8
  %27 = load %struct.vnode*, %struct.vnode** %12, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i64*, i64** %11, align 8
  %32 = call i32 @mac_vnop_getxattr(%struct.vnode* %27, i8* %28, i8* %29, i64 %30, i64* %31)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %22, %20
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i64 @FILEGLOB_DTYPE(%struct.fileglob*) #1

declare dso_local i32 @mac_vnop_getxattr(%struct.vnode*, i8*, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
