; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_nameiat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_nameiat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@AT_FDCWD = common dso_local global i32 0, align 4
@NAMEI_CONTLOOKUP = common dso_local global i32 0, align 4
@USEDVP = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nameiat(%struct.nameidata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @AT_FDCWD, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %96

12:                                               ; preds = %2
  %13 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %14 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @NAMEI_CONTLOOKUP, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %96, label %19

19:                                               ; preds = %12
  %20 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @USEDVP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %96, label %27

27:                                               ; preds = %19
  store i32 0, i32* %6, align 4
  %28 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @UIO_SEG_IS_USER_SPACE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %27
  %34 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @copyin(i64 %36, i8* %7, i32 1)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %99

42:                                               ; preds = %33
  br label %49

43:                                               ; preds = %27
  %44 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i8, i8* %47, align 1
  store i8 %48, i8* %7, align 1
  br label %49

49:                                               ; preds = %43, %42
  %50 = load i8, i8* %7, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 47
  br i1 %52, label %53, label %95

53:                                               ; preds = %49
  %54 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %55 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @vnode_getfromfd(i32 %57, i32 %58, i32* %8)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %99

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @vnode_vtype(i32 %65)
  %67 = load i64, i64* @VDIR, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @vnode_put(i32 %70)
  %72 = load i32, i32* @ENOTDIR, align 4
  store i32 %72, i32* %3, align 4
  br label %99

73:                                               ; preds = %64
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %76 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @USEDVP, align 4
  %78 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %79 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %84 = call i32 @namei(%struct.nameidata* %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @USEDVP, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %88 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %86
  store i32 %91, i32* %89, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @vnode_put(i32 %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %99

95:                                               ; preds = %49
  br label %96

96:                                               ; preds = %95, %19, %12, %2
  %97 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %98 = call i32 @namei(%struct.nameidata* %97)
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %96, %73, %69, %62, %40
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i64 @UIO_SEG_IS_USER_SPACE(i32) #1

declare dso_local i32 @copyin(i64, i8*, i32) #1

declare dso_local i32 @vnode_getfromfd(i32, i32, i32*) #1

declare dso_local i64 @vnode_vtype(i32) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
