; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_msync_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_ubc_msync_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MEMORY_OBJECT_RETURN_NONE = common dso_local global i32 0, align 4
@UBC_INVALIDATE = common dso_local global i32 0, align 4
@UBC_PUSHDIRTY = common dso_local global i32 0, align 4
@UBC_PUSHALL = common dso_local global i32 0, align 4
@MEMORY_OBJECT_DATA_FLUSH = common dso_local global i32 0, align 4
@MEMORY_OBJECT_DATA_NO_CHANGE = common dso_local global i32 0, align 4
@UBC_SYNC = common dso_local global i32 0, align 4
@MEMORY_OBJECT_IO_SYNC = common dso_local global i32 0, align 4
@MEMORY_OBJECT_RETURN_DIRTY = common dso_local global i32 0, align 4
@MEMORY_OBJECT_RETURN_ALL = common dso_local global i32 0, align 4
@VM_PROT_NO_CHANGE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i64, i64, i64*, i32, i32*)* @ubc_msync_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubc_msync_internal(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %16, align 4
  %18 = load i32, i32* @MEMORY_OBJECT_RETURN_NONE, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = call i32 @UBCINFOEXISTS(%struct.TYPE_6__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %97

23:                                               ; preds = %6
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @UBC_INVALIDATE, align 4
  %26 = load i32, i32* @UBC_PUSHDIRTY, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @UBC_PUSHALL, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %24, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %7, align 4
  br label %97

33:                                               ; preds = %23
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store i32 1, i32* %7, align 4
  br label %97

38:                                               ; preds = %33
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @UBC_INVALIDATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @MEMORY_OBJECT_DATA_FLUSH, align 4
  %45 = load i32, i32* @MEMORY_OBJECT_DATA_NO_CHANGE, align 4
  %46 = or i32 %44, %45
  store i32 %46, i32* %16, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @UBC_SYNC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @MEMORY_OBJECT_IO_SYNC, align 4
  %54 = load i32, i32* %16, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %16, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @UBC_PUSHDIRTY, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* @MEMORY_OBJECT_RETURN_DIRTY, align 4
  store i32 %62, i32* %17, align 4
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @UBC_PUSHALL, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = load i32, i32* @MEMORY_OBJECT_RETURN_ALL, align 4
  store i32 %69, i32* %17, align 4
  br label %70

70:                                               ; preds = %68, %63
  %71 = load i64, i64* %9, align 8
  %72 = call i64 @trunc_page_64(i64 %71)
  store i64 %72, i64* %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @round_page_64(i64 %73)
  store i64 %74, i64* %10, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %9, align 8
  %77 = sub nsw i64 %75, %76
  store i64 %77, i64* %14, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %14, align 8
  %85 = load i64*, i64** %11, align 8
  %86 = bitcast i64* %85 to i32*
  %87 = load i32*, i32** %13, align 8
  %88 = load i32, i32* %17, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @VM_PROT_NO_CHANGE, align 4
  %91 = call i64 @memory_object_lock_request(i32 %82, i64 %83, i64 %84, i32* %86, i32* %87, i32 %88, i32 %89, i32 %90)
  store i64 %91, i64* %15, align 8
  %92 = load i64, i64* %15, align 8
  %93 = load i64, i64* @KERN_SUCCESS, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %70, %37, %32, %22
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @UBCINFOEXISTS(%struct.TYPE_6__*) #1

declare dso_local i64 @trunc_page_64(i64) #1

declare dso_local i64 @round_page_64(i64) #1

declare dso_local i64 @memory_object_lock_request(i32, i64, i64, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
