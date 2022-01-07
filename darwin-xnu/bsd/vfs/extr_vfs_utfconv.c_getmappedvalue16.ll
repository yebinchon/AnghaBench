; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_getmappedvalue16.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_utfconv.c_getmappedvalue16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_3__*, i32, i64)* @getmappedvalue16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @getmappedvalue16(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %11, %15
  br i1 %16, label %27, label %17

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %18, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %17, %3
  store i64 0, i64* %4, align 8
  br label %73

28:                                               ; preds = %17
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %8, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %33
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %9, align 8
  br label %35

35:                                               ; preds = %71, %28
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %38 = icmp ule %struct.TYPE_3__* %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %35
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = ptrtoint %struct.TYPE_3__* %41 to i64
  %44 = ptrtoint %struct.TYPE_3__* %42 to i64
  %45 = sub i64 %43, %44
  %46 = sdiv exact i64 %45, 16
  %47 = ashr i64 %46, 1
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %47
  store %struct.TYPE_3__* %48, %struct.TYPE_3__** %10, align 8
  %49 = load i64, i64* %7, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %39
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 -1
  store %struct.TYPE_3__* %56, %struct.TYPE_3__** %9, align 8
  br label %71

57:                                               ; preds = %39
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 1
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %8, align 8
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %4, align 8
  br label %73

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %54
  br label %35

72:                                               ; preds = %35
  store i64 0, i64* %4, align 8
  br label %73

73:                                               ; preds = %72, %66, %27
  %74 = load i64, i64* %4, align 8
  ret i64 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
