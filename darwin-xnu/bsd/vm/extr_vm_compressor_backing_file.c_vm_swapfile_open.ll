; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_compressor_backing_file.c_vm_swapfile_open.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vm_compressor_backing_file.c_vm_swapfile_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to open swap file %d\0A\00", align 1
@MNTK_NOSWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_swapfile_open(i8* %0, %struct.TYPE_8__** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_8__** %1, %struct.TYPE_8__*** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i32 (...) @vfs_context_kernel()
  store i32 %7, i32* %6, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @O_CREAT, align 4
  %10 = load i32, i32* @O_TRUNC, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @FREAD, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @FWRITE, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @S_IRUSR, align 4
  %17 = load i32, i32* @S_IWUSR, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @vnode_open(i8* %8, i32 %15, i32 %18, i32 0, %struct.TYPE_8__** %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %26, align 8
  br label %51

27:                                               ; preds = %2
  %28 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @MNTK_NOSWAP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %27
  %38 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = call i32 @vnode_put(%struct.TYPE_8__* %39)
  %41 = load i8*, i8** %3, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = call i32 @vm_swapfile_close(i32 %42, %struct.TYPE_8__* %44)
  %46 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %46, align 8
  br label %51

47:                                               ; preds = %27
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = call i32 @vnode_put(%struct.TYPE_8__* %49)
  br label %51

51:                                               ; preds = %47, %37, %23
  ret void
}

declare dso_local i32 @vfs_context_kernel(...) #1

declare dso_local i32 @vnode_open(i8*, i32, i32, i32, %struct.TYPE_8__**, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @vnode_put(%struct.TYPE_8__*) #1

declare dso_local i32 @vm_swapfile_close(i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
