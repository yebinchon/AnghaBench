; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_conninfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_conninfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.so_cinforeq64 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { %struct.so_cinforeq32 }
%struct.so_cinforeq32 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.so_cinforeq64*)* @inctl_conninfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inctl_conninfo(%struct.socket* %0, i32 %1, %struct.so_cinforeq64* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.so_cinforeq64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.so_cinforeq64* %2, %struct.so_cinforeq64** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = icmp ne %struct.socket* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %94 [
    i32 129, label %14
    i32 128, label %55
  ]

14:                                               ; preds = %3
  %15 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %6, align 8
  %16 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %17 = bitcast %struct.so_cinforeq32* %16 to %struct.so_cinforeq64*
  %18 = call i32 @bcopy(%struct.so_cinforeq64* %15, %struct.so_cinforeq64* %17, i32 44)
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %21 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %24 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %23, i32 0, i32 9
  %25 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %26 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %25, i32 0, i32 8
  %27 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %28 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %27, i32 0, i32 7
  %29 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %30 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %33 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %32, i32 0, i32 5
  %34 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %35 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %38 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %37, i32 0, i32 3
  %39 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %40 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %39, i32 0, i32 2
  %41 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %42 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %45 = getelementptr inbounds %struct.so_cinforeq32, %struct.so_cinforeq32* %44, i32 0, i32 0
  %46 = call i32 @in_getconninfo(%struct.socket* %19, i32 %22, i32* %24, i32* %26, i32* %28, i32 %31, i32* %33, i32 %36, i32* %38, i32* %40, i32 %43, i32* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %14
  %50 = bitcast %union.anon* %8 to %struct.so_cinforeq32*
  %51 = bitcast %struct.so_cinforeq32* %50 to %struct.so_cinforeq64*
  %52 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %6, align 8
  %53 = call i32 @bcopy(%struct.so_cinforeq64* %51, %struct.so_cinforeq64* %52, i32 44)
  br label %54

54:                                               ; preds = %49, %14
  br label %96

55:                                               ; preds = %3
  %56 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %6, align 8
  %57 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %58 = call i32 @bcopy(%struct.so_cinforeq64* %56, %struct.so_cinforeq64* %57, i32 44)
  %59 = load %struct.socket*, %struct.socket** %4, align 8
  %60 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %61 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %60, i32 0, i32 10
  %62 = load i32, i32* %61, align 4
  %63 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %64 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %63, i32 0, i32 9
  %65 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %66 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %65, i32 0, i32 8
  %67 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %68 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %67, i32 0, i32 7
  %69 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %70 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %73 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %72, i32 0, i32 5
  %74 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %75 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %78 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %77, i32 0, i32 3
  %79 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %80 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %79, i32 0, i32 2
  %81 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %82 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %85 = getelementptr inbounds %struct.so_cinforeq64, %struct.so_cinforeq64* %84, i32 0, i32 0
  %86 = call i32 @in_getconninfo(%struct.socket* %59, i32 %62, i32* %64, i32* %66, i32* %68, i32 %71, i32* %73, i32 %76, i32* %78, i32* %80, i32 %83, i32* %85)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %55
  %90 = bitcast %union.anon* %8 to %struct.so_cinforeq64*
  %91 = load %struct.so_cinforeq64*, %struct.so_cinforeq64** %6, align 8
  %92 = call i32 @bcopy(%struct.so_cinforeq64* %90, %struct.so_cinforeq64* %91, i32 44)
  br label %93

93:                                               ; preds = %89, %55
  br label %96

94:                                               ; preds = %3
  %95 = call i32 @VERIFY(i32 0)
  br label %96

96:                                               ; preds = %94, %93, %54
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(%struct.so_cinforeq64*, %struct.so_cinforeq64*, i32) #1

declare dso_local i32 @in_getconninfo(%struct.socket*, i32, i32*, i32*, i32*, i32, i32*, i32, i32*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
