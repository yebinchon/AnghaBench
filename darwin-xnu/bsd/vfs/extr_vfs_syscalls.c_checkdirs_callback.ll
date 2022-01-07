; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_checkdirs_callback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_checkdirs_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.filedesc* }
%struct.filedesc = type { i64, i64 }
%struct.cdirargs = type { i64, i64 }

@PROC_RETURNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*)* @checkdirs_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkdirs_callback(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cdirargs*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.filedesc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.cdirargs*
  store %struct.cdirargs* %16, %struct.cdirargs** %6, align 8
  %17 = load %struct.cdirargs*, %struct.cdirargs** %6, align 8
  %18 = getelementptr inbounds %struct.cdirargs, %struct.cdirargs* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.cdirargs*, %struct.cdirargs** %6, align 8
  %21 = getelementptr inbounds %struct.cdirargs, %struct.cdirargs* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = call i32 @proc_fdlock(%struct.TYPE_5__* %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.filedesc*, %struct.filedesc** %26, align 8
  store %struct.filedesc* %27, %struct.filedesc** %9, align 8
  %28 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %29 = icmp eq %struct.filedesc* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = call i32 @proc_fdunlock(%struct.TYPE_5__* %31)
  %33 = load i32, i32* @PROC_RETURNED, align 4
  store i32 %33, i32* %3, align 4
  br label %87

34:                                               ; preds = %2
  %35 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %36 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %39 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %12, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = call i32 @proc_fdunlock(%struct.TYPE_5__* %41)
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %34
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @vnode_ref(i64 %47)
  %49 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %50 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* %8, align 8
  store i64 %52, i64* %11, align 8
  store i32 1, i32* %13, align 4
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @vnode_rele(i64 %53)
  br label %55

55:                                               ; preds = %46, %34
  %56 = load i64, i64* %12, align 8
  %57 = load i64, i64* %7, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @vnode_ref(i64 %60)
  %62 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %63 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %10, align 8
  %65 = load i64, i64* %8, align 8
  store i64 %65, i64* %12, align 8
  store i32 1, i32* %14, align 4
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @vnode_rele(i64 %66)
  br label %68

68:                                               ; preds = %59, %55
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71, %68
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %76 = call i32 @proc_fdlock(%struct.TYPE_5__* %75)
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %79 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %78, i32 0, i32 0
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %12, align 8
  %81 = load %struct.filedesc*, %struct.filedesc** %9, align 8
  %82 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %81, i32 0, i32 1
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = call i32 @proc_fdunlock(%struct.TYPE_5__* %83)
  br label %85

85:                                               ; preds = %74, %71
  %86 = load i32, i32* @PROC_RETURNED, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %30
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @proc_fdlock(%struct.TYPE_5__*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_5__*) #1

declare dso_local i32 @vnode_ref(i64) #1

declare dso_local i32 @vnode_rele(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
