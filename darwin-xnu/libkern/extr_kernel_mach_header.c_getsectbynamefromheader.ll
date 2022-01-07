; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/extr_kernel_mach_header.c_getsectbynamefromheader.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/extr_kernel_mach_header.c_getsectbynamefromheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i32 }

@LC_SEGMENT_KERNEL = common dso_local global i64 0, align 8
@MH_OBJECT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @getsectbynamefromheader(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = ptrtoint %struct.TYPE_8__* %12 to i64
  %14 = add i64 %13, 16
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %8, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %86, %3
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %17, %20
  br i1 %21, label %22, label %89

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LC_SEGMENT_KERNEL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %78

28:                                               ; preds = %22
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i64 @strncmp(i32 %31, i8* %32, i32 4)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %28
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MH_OBJECT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %35, %28
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = ptrtoint %struct.TYPE_6__* %42 to i64
  %44 = add i64 %43, 32
  %45 = inttoptr i64 %44 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %9, align 8
  store i64 0, i64* %11, align 8
  br label %46

46:                                               ; preds = %73, %41
  %47 = load i64, i64* %11, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %46
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i8*, i8** %7, align 8
  %57 = call i64 @strncmp(i32 %55, i8* %56, i32 4)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %6, align 8
  %64 = call i64 @strncmp(i32 %62, i8* %63, i32 4)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %67, %struct.TYPE_7__** %4, align 8
  br label %90

68:                                               ; preds = %59, %52
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %70 = ptrtoint %struct.TYPE_7__* %69 to i64
  %71 = add i64 %70, 8
  %72 = inttoptr i64 %71 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %72, %struct.TYPE_7__** %9, align 8
  br label %73

73:                                               ; preds = %68
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %11, align 8
  br label %46

76:                                               ; preds = %46
  br label %77

77:                                               ; preds = %76, %35
  br label %78

78:                                               ; preds = %77, %22
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = ptrtoint %struct.TYPE_6__* %79 to i64
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add i64 %80, %83
  %85 = inttoptr i64 %84 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %8, align 8
  br label %86

86:                                               ; preds = %78
  %87 = load i64, i64* %10, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %10, align 8
  br label %16

89:                                               ; preds = %16
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %4, align 8
  br label %90

90:                                               ; preds = %89, %66
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  ret %struct.TYPE_7__* %91
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
