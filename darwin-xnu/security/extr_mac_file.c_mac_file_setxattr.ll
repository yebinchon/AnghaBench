; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_file.c_mac_file_setxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_file.c_mac_file_setxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i64 }
%struct.vnode = type { i32 }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@EFTYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_file_setxattr(%struct.fileglob* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileglob*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vnode*, align 8
  store %struct.fileglob* %0, %struct.fileglob** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.vnode* null, %struct.vnode** %10, align 8
  %11 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %12 = icmp ne %struct.fileglob* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %4
  %14 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %15 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %14)
  %16 = load i64, i64* @DTYPE_VNODE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %4
  %19 = load i32, i32* @EFTYPE, align 4
  store i32 %19, i32* %5, align 4
  br label %30

20:                                               ; preds = %13
  %21 = load %struct.fileglob*, %struct.fileglob** %6, align 8
  %22 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.vnode*
  store %struct.vnode* %24, %struct.vnode** %10, align 8
  %25 = load %struct.vnode*, %struct.vnode** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @mac_vnop_setxattr(%struct.vnode* %25, i8* %26, i8* %27, i64 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %20, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i64 @FILEGLOB_DTYPE(%struct.fileglob*) #1

declare dso_local i32 @mac_vnop_setxattr(%struct.vnode*, i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
